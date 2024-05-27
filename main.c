#include <stdio.h>
#include "slab.h"
#include "tester.h"
#include "config.h"

int main() {
    void* obj1 = mem_alloc(sizeof(int));
    void* obj2 = mem_alloc(sizeof(double));

    void* obj3 = mem_alloc(200);
    mem_show("State of the memory after allocating objects:");


    printf("Reallocating obj2 to a larger size...\n");
    obj2 = mem_realloc(obj2, 950);
    mem_show("Memory status after reallocation obj2:");

    printf("Realising obj1 and obj2\n");
    mem_free(obj1);
    mem_free(obj2);
    mem_show("Memory state after release obj1, obj2:");
    
    printf("Allocating a large number of objects to fill the memory...\n");
    const int N = PAGE_NUM * 4 * 16;
    void* array[N];
    for (int i = 0; i < N; i++) {
        array[i] = mem_alloc(1024);
    }
    mem_show("Full memory status after allocating a large number of objects:");
    
    printf("Allocating an additional small object...\n");
    void* obj4 = mem_alloc(sizeof(double));
    mem_show("Full memory state after allocating an additional small object:");
    

//    tester(true);

    return 0;
}








