# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vlad/spz_lab2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vlad/spz_lab2

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/vlad/spz_lab2/CMakeFiles /home/vlad/spz_lab2//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/vlad/spz_lab2/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named untitled

# Build rule for target.
untitled: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 untitled
.PHONY : untitled

# fast build rule for target.
untitled/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/build
.PHONY : untitled/fast

kernel.o: kernel.c.o
.PHONY : kernel.o

# target to build an object file
kernel.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/kernel.c.o
.PHONY : kernel.c.o

kernel.i: kernel.c.i
.PHONY : kernel.i

# target to preprocess a source file
kernel.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/kernel.c.i
.PHONY : kernel.c.i

kernel.s: kernel.c.s
.PHONY : kernel.s

# target to generate assembly for a file
kernel.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/kernel.c.s
.PHONY : kernel.c.s

main.o: main.c.o
.PHONY : main.o

# target to build an object file
main.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/main.c.o
.PHONY : main.c.o

main.i: main.c.i
.PHONY : main.i

# target to preprocess a source file
main.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/main.c.i
.PHONY : main.c.i

main.s: main.c.s
.PHONY : main.s

# target to generate assembly for a file
main.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/main.c.s
.PHONY : main.c.s

slab.o: slab.c.o
.PHONY : slab.o

# target to build an object file
slab.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/slab.c.o
.PHONY : slab.c.o

slab.i: slab.c.i
.PHONY : slab.i

# target to preprocess a source file
slab.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/slab.c.i
.PHONY : slab.c.i

slab.s: slab.c.s
.PHONY : slab.s

# target to generate assembly for a file
slab.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/slab.c.s
.PHONY : slab.c.s

tester.o: tester.c.o
.PHONY : tester.o

# target to build an object file
tester.c.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/tester.c.o
.PHONY : tester.c.o

tester.i: tester.c.i
.PHONY : tester.i

# target to preprocess a source file
tester.c.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/tester.c.i
.PHONY : tester.c.i

tester.s: tester.c.s
.PHONY : tester.s

# target to generate assembly for a file
tester.c.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/untitled.dir/build.make CMakeFiles/untitled.dir/tester.c.s
.PHONY : tester.c.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... untitled"
	@echo "... kernel.o"
	@echo "... kernel.i"
	@echo "... kernel.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... slab.o"
	@echo "... slab.i"
	@echo "... slab.s"
	@echo "... tester.o"
	@echo "... tester.i"
	@echo "... tester.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

