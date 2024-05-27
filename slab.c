#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "kernel.h"
#include "config.h"

typedef struct {
	size_t size;
	size_t used;
	void* free;
} SlabHeader;

typedef struct {
	SlabHeader header;
	char data[PAGE_NUM * PAGE_SIZE];
} Slab;

typedef struct {
	Slab* slabs[CACHE_SIZE];
	size_t count;
} Cache;

static Cache cache = { .count = 0 };

static Slab* allocate_slab(size_t size) {
	Slab* slab = (Slab*)kernel_alloc(sizeof(Slab));
	if (!slab) return NULL;

	slab->header.size = size;
	slab->header.used = 0;
	slab->header.free = slab->data;
	return slab;
}

static void deallocate_slab(Slab* slab) {
	kernel_free(slab);
}

static void* allocate_from_slab(Slab* slab, size_t size) {
	void* ptr = slab->header.free;
	slab->header.free = (char*)slab->header.free + size;
	slab->header.used++;
	return ptr;
}

void* mem_alloc(size_t size) {
	if (size > MAX_OBJ_SIZE) {
    	fprintf(stderr, "Error: object size exceeds the maximum object size\n");
    	return NULL;
	}

	for (size_t i = 0; i < cache.count; i++) {
    	Slab* slab = cache.slabs[i];
    	if (slab->header.size == size && slab->header.used < (PAGE_SIZE * PAGE_NUM / size)) {
        	return allocate_from_slab(slab, size);
    	}
	}

	Slab* new_slab = allocate_slab(size);
	if (!new_slab) return NULL;

	if (cache.count < CACHE_SIZE) {
    	cache.slabs[cache.count++] = new_slab;
	} else {
    	size_t victim_index = 0;
    	size_t min_used = cache.slabs[0]->header.used;

    	for (size_t i = 1; i < cache.count; i++) {
        	if (cache.slabs[i]->header.used < min_used) {
            	victim_index = i;
            	min_used = cache.slabs[i]->header.used;
        	}
    	}

    	deallocate_slab(cache.slabs[victim_index]);
    	cache.slabs[victim_index] = new_slab;
	}

	return allocate_from_slab(new_slab, size);
}

void mem_free(void* ptr) {
	for (size_t i = 0; i < cache.count; i++) {
    	Slab* slab = cache.slabs[i];

    	if (ptr >= (void*)slab->data && ptr < (void*)(slab->data + PAGE_NUM * PAGE_SIZE)) {
        	slab->header.used--;

        	if (slab->header.used == 0) {
            	deallocate_slab(slab);
            	cache.slabs[i] = cache.slabs[--cache.count];
        	}
        	return;
    	}
	}

	fprintf(stderr, "Error: attempting to free an unknown object\n");
}

void* mem_realloc(void* ptr, size_t new_size) {
	if (new_size > MAX_OBJ_SIZE) {
    	fprintf(stderr, "Error: new size exceeds the maximum object size\n");
    	return NULL;
	}

	for (size_t i = 0; i < cache.count; i++) {
    	Slab* slab = cache.slabs[i];
    	if (ptr >= (void*)slab->data && ptr < (void*)(slab->data + PAGE_NUM * PAGE_SIZE)) {
        	size_t current_size = slab->header.size;

        	if (new_size <= current_size) {
            	return ptr;
        	}

        	void* new_ptr = mem_alloc(new_size);
        	if (!new_ptr) {
            	return NULL;
        	}

        	memcpy(new_ptr, ptr, current_size);
        	mem_free(ptr);
        	return new_ptr;
    	}
	}

	fprintf(stderr, "Error: attempting to reallocate an unknown object\n");
	return NULL;
}

void mem_show(const char* message) {
	printf("%s\n", message);
	for (size_t i = 0; i < cache.count; i++) {
    	Slab* slab = cache.slabs[i];
    	size_t total_objects = PAGE_SIZE * PAGE_NUM / slab->header.size;
    	const char* status;
    	if (slab->header.used == 0) {
        	status = "empty";
    	} else if (slab->header.used == total_objects) {
        	status = "full";
    	} else {
        	status = "partial";
    	}

    	printf("Slab %zu: size = %zu, used = %zu/%zu, status = %s\n",
           	i + 1, slab->header.size, slab->header.used, total_objects, status);
	}
	printf("******************************************************\n");
}

