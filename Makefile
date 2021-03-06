# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
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
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /usr/local/bin/CGAL-5.0.1/examples/Custom

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/local/bin/CGAL-5.0.1/examples/Custom

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /usr/local/bin/CGAL-5.0.1/examples/Custom/CMakeFiles /usr/local/bin/CGAL-5.0.1/examples/Custom/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /usr/local/bin/CGAL-5.0.1/examples/Custom/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named sortingspatial

# Build rule for target.
sortingspatial: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 sortingspatial
.PHONY : sortingspatial

# fast build rule for target.
sortingspatial/fast:
	$(MAKE) -f CMakeFiles/sortingspatial.dir/build.make CMakeFiles/sortingspatial.dir/build
.PHONY : sortingspatial/fast

#=============================================================================
# Target rules for targets named sorting_sphere

# Build rule for target.
sorting_sphere: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 sorting_sphere
.PHONY : sorting_sphere

# fast build rule for target.
sorting_sphere/fast:
	$(MAKE) -f CMakeFiles/sorting_sphere.dir/build.make CMakeFiles/sorting_sphere.dir/build
.PHONY : sorting_sphere/fast

#=============================================================================
# Target rules for targets named sorting

# Build rule for target.
sorting: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 sorting
.PHONY : sorting

# fast build rule for target.
sorting/fast:
	$(MAKE) -f CMakeFiles/sorting.dir/build.make CMakeFiles/sorting.dir/build
.PHONY : sorting/fast

#=============================================================================
# Target rules for targets named is_at_right

# Build rule for target.
is_at_right: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 is_at_right
.PHONY : is_at_right

# fast build rule for target.
is_at_right/fast:
	$(MAKE) -f CMakeFiles/is_at_right.dir/build.make CMakeFiles/is_at_right.dir/build
.PHONY : is_at_right/fast

#=============================================================================
# Target rules for targets named ordering_based_onfirst

# Build rule for target.
ordering_based_onfirst: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ordering_based_onfirst
.PHONY : ordering_based_onfirst

# fast build rule for target.
ordering_based_onfirst/fast:
	$(MAKE) -f CMakeFiles/ordering_based_onfirst.dir/build.make CMakeFiles/ordering_based_onfirst.dir/build
.PHONY : ordering_based_onfirst/fast

#=============================================================================
# Target rules for targets named array_convex_hull_2

# Build rule for target.
array_convex_hull_2: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 array_convex_hull_2
.PHONY : array_convex_hull_2

# fast build rule for target.
array_convex_hull_2/fast:
	$(MAKE) -f CMakeFiles/array_convex_hull_2.dir/build.make CMakeFiles/array_convex_hull_2.dir/build
.PHONY : array_convex_hull_2/fast

#=============================================================================
# Target rules for targets named cgal_check_build_system

# Build rule for target.
cgal_check_build_system: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 cgal_check_build_system
.PHONY : cgal_check_build_system

# fast build rule for target.
cgal_check_build_system/fast:
	$(MAKE) -f CMakeFiles/cgal_check_build_system.dir/build.make CMakeFiles/cgal_check_build_system.dir/build
.PHONY : cgal_check_build_system/fast

#=============================================================================
# Target rules for targets named simple_sort

# Build rule for target.
simple_sort: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 simple_sort
.PHONY : simple_sort

# fast build rule for target.
simple_sort/fast:
	$(MAKE) -f CMakeFiles/simple_sort.dir/build.make CMakeFiles/simple_sort.dir/build
.PHONY : simple_sort/fast

#=============================================================================
# Target rules for targets named convex_hull

# Build rule for target.
convex_hull: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 convex_hull
.PHONY : convex_hull

# fast build rule for target.
convex_hull/fast:
	$(MAKE) -f CMakeFiles/convex_hull.dir/build.make CMakeFiles/convex_hull.dir/build
.PHONY : convex_hull/fast

#=============================================================================
# Target rules for targets named ALL_CGAL_TARGETS

# Build rule for target.
ALL_CGAL_TARGETS: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ALL_CGAL_TARGETS
.PHONY : ALL_CGAL_TARGETS

# fast build rule for target.
ALL_CGAL_TARGETS/fast:
	$(MAKE) -f CMakeFiles/ALL_CGAL_TARGETS.dir/build.make CMakeFiles/ALL_CGAL_TARGETS.dir/build
.PHONY : ALL_CGAL_TARGETS/fast

#=============================================================================
# Target rules for targets named convex_hull_incremental

# Build rule for target.
convex_hull_incremental: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 convex_hull_incremental
.PHONY : convex_hull_incremental

# fast build rule for target.
convex_hull_incremental/fast:
	$(MAKE) -f CMakeFiles/convex_hull_incremental.dir/build.make CMakeFiles/convex_hull_incremental.dir/build
.PHONY : convex_hull_incremental/fast

#=============================================================================
# Target rules for targets named convex_hull_naive

# Build rule for target.
convex_hull_naive: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 convex_hull_naive
.PHONY : convex_hull_naive

# fast build rule for target.
convex_hull_naive/fast:
	$(MAKE) -f CMakeFiles/convex_hull_naive.dir/build.make CMakeFiles/convex_hull_naive.dir/build
.PHONY : convex_hull_naive/fast

array_convex_hull_2.o: array_convex_hull_2.cpp.o

.PHONY : array_convex_hull_2.o

# target to build an object file
array_convex_hull_2.cpp.o:
	$(MAKE) -f CMakeFiles/array_convex_hull_2.dir/build.make CMakeFiles/array_convex_hull_2.dir/array_convex_hull_2.cpp.o
.PHONY : array_convex_hull_2.cpp.o

array_convex_hull_2.i: array_convex_hull_2.cpp.i

.PHONY : array_convex_hull_2.i

# target to preprocess a source file
array_convex_hull_2.cpp.i:
	$(MAKE) -f CMakeFiles/array_convex_hull_2.dir/build.make CMakeFiles/array_convex_hull_2.dir/array_convex_hull_2.cpp.i
.PHONY : array_convex_hull_2.cpp.i

array_convex_hull_2.s: array_convex_hull_2.cpp.s

.PHONY : array_convex_hull_2.s

# target to generate assembly for a file
array_convex_hull_2.cpp.s:
	$(MAKE) -f CMakeFiles/array_convex_hull_2.dir/build.make CMakeFiles/array_convex_hull_2.dir/array_convex_hull_2.cpp.s
.PHONY : array_convex_hull_2.cpp.s

convex_hull.o: convex_hull.cpp.o

.PHONY : convex_hull.o

# target to build an object file
convex_hull.cpp.o:
	$(MAKE) -f CMakeFiles/convex_hull.dir/build.make CMakeFiles/convex_hull.dir/convex_hull.cpp.o
.PHONY : convex_hull.cpp.o

convex_hull.i: convex_hull.cpp.i

.PHONY : convex_hull.i

# target to preprocess a source file
convex_hull.cpp.i:
	$(MAKE) -f CMakeFiles/convex_hull.dir/build.make CMakeFiles/convex_hull.dir/convex_hull.cpp.i
.PHONY : convex_hull.cpp.i

convex_hull.s: convex_hull.cpp.s

.PHONY : convex_hull.s

# target to generate assembly for a file
convex_hull.cpp.s:
	$(MAKE) -f CMakeFiles/convex_hull.dir/build.make CMakeFiles/convex_hull.dir/convex_hull.cpp.s
.PHONY : convex_hull.cpp.s

convex_hull_incremental.o: convex_hull_incremental.cpp.o

.PHONY : convex_hull_incremental.o

# target to build an object file
convex_hull_incremental.cpp.o:
	$(MAKE) -f CMakeFiles/convex_hull_incremental.dir/build.make CMakeFiles/convex_hull_incremental.dir/convex_hull_incremental.cpp.o
.PHONY : convex_hull_incremental.cpp.o

convex_hull_incremental.i: convex_hull_incremental.cpp.i

.PHONY : convex_hull_incremental.i

# target to preprocess a source file
convex_hull_incremental.cpp.i:
	$(MAKE) -f CMakeFiles/convex_hull_incremental.dir/build.make CMakeFiles/convex_hull_incremental.dir/convex_hull_incremental.cpp.i
.PHONY : convex_hull_incremental.cpp.i

convex_hull_incremental.s: convex_hull_incremental.cpp.s

.PHONY : convex_hull_incremental.s

# target to generate assembly for a file
convex_hull_incremental.cpp.s:
	$(MAKE) -f CMakeFiles/convex_hull_incremental.dir/build.make CMakeFiles/convex_hull_incremental.dir/convex_hull_incremental.cpp.s
.PHONY : convex_hull_incremental.cpp.s

convex_hull_naive.o: convex_hull_naive.cpp.o

.PHONY : convex_hull_naive.o

# target to build an object file
convex_hull_naive.cpp.o:
	$(MAKE) -f CMakeFiles/convex_hull_naive.dir/build.make CMakeFiles/convex_hull_naive.dir/convex_hull_naive.cpp.o
.PHONY : convex_hull_naive.cpp.o

convex_hull_naive.i: convex_hull_naive.cpp.i

.PHONY : convex_hull_naive.i

# target to preprocess a source file
convex_hull_naive.cpp.i:
	$(MAKE) -f CMakeFiles/convex_hull_naive.dir/build.make CMakeFiles/convex_hull_naive.dir/convex_hull_naive.cpp.i
.PHONY : convex_hull_naive.cpp.i

convex_hull_naive.s: convex_hull_naive.cpp.s

.PHONY : convex_hull_naive.s

# target to generate assembly for a file
convex_hull_naive.cpp.s:
	$(MAKE) -f CMakeFiles/convex_hull_naive.dir/build.make CMakeFiles/convex_hull_naive.dir/convex_hull_naive.cpp.s
.PHONY : convex_hull_naive.cpp.s

is_at_right.o: is_at_right.cpp.o

.PHONY : is_at_right.o

# target to build an object file
is_at_right.cpp.o:
	$(MAKE) -f CMakeFiles/is_at_right.dir/build.make CMakeFiles/is_at_right.dir/is_at_right.cpp.o
.PHONY : is_at_right.cpp.o

is_at_right.i: is_at_right.cpp.i

.PHONY : is_at_right.i

# target to preprocess a source file
is_at_right.cpp.i:
	$(MAKE) -f CMakeFiles/is_at_right.dir/build.make CMakeFiles/is_at_right.dir/is_at_right.cpp.i
.PHONY : is_at_right.cpp.i

is_at_right.s: is_at_right.cpp.s

.PHONY : is_at_right.s

# target to generate assembly for a file
is_at_right.cpp.s:
	$(MAKE) -f CMakeFiles/is_at_right.dir/build.make CMakeFiles/is_at_right.dir/is_at_right.cpp.s
.PHONY : is_at_right.cpp.s

ordering_based_onfirst.o: ordering_based_onfirst.cpp.o

.PHONY : ordering_based_onfirst.o

# target to build an object file
ordering_based_onfirst.cpp.o:
	$(MAKE) -f CMakeFiles/ordering_based_onfirst.dir/build.make CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.o
.PHONY : ordering_based_onfirst.cpp.o

ordering_based_onfirst.i: ordering_based_onfirst.cpp.i

.PHONY : ordering_based_onfirst.i

# target to preprocess a source file
ordering_based_onfirst.cpp.i:
	$(MAKE) -f CMakeFiles/ordering_based_onfirst.dir/build.make CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.i
.PHONY : ordering_based_onfirst.cpp.i

ordering_based_onfirst.s: ordering_based_onfirst.cpp.s

.PHONY : ordering_based_onfirst.s

# target to generate assembly for a file
ordering_based_onfirst.cpp.s:
	$(MAKE) -f CMakeFiles/ordering_based_onfirst.dir/build.make CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.s
.PHONY : ordering_based_onfirst.cpp.s

simple_sort.o: simple_sort.cpp.o

.PHONY : simple_sort.o

# target to build an object file
simple_sort.cpp.o:
	$(MAKE) -f CMakeFiles/simple_sort.dir/build.make CMakeFiles/simple_sort.dir/simple_sort.cpp.o
.PHONY : simple_sort.cpp.o

simple_sort.i: simple_sort.cpp.i

.PHONY : simple_sort.i

# target to preprocess a source file
simple_sort.cpp.i:
	$(MAKE) -f CMakeFiles/simple_sort.dir/build.make CMakeFiles/simple_sort.dir/simple_sort.cpp.i
.PHONY : simple_sort.cpp.i

simple_sort.s: simple_sort.cpp.s

.PHONY : simple_sort.s

# target to generate assembly for a file
simple_sort.cpp.s:
	$(MAKE) -f CMakeFiles/simple_sort.dir/build.make CMakeFiles/simple_sort.dir/simple_sort.cpp.s
.PHONY : simple_sort.cpp.s

sorting.o: sorting.cpp.o

.PHONY : sorting.o

# target to build an object file
sorting.cpp.o:
	$(MAKE) -f CMakeFiles/sorting.dir/build.make CMakeFiles/sorting.dir/sorting.cpp.o
.PHONY : sorting.cpp.o

sorting.i: sorting.cpp.i

.PHONY : sorting.i

# target to preprocess a source file
sorting.cpp.i:
	$(MAKE) -f CMakeFiles/sorting.dir/build.make CMakeFiles/sorting.dir/sorting.cpp.i
.PHONY : sorting.cpp.i

sorting.s: sorting.cpp.s

.PHONY : sorting.s

# target to generate assembly for a file
sorting.cpp.s:
	$(MAKE) -f CMakeFiles/sorting.dir/build.make CMakeFiles/sorting.dir/sorting.cpp.s
.PHONY : sorting.cpp.s

sorting_sphere.o: sorting_sphere.cpp.o

.PHONY : sorting_sphere.o

# target to build an object file
sorting_sphere.cpp.o:
	$(MAKE) -f CMakeFiles/sorting_sphere.dir/build.make CMakeFiles/sorting_sphere.dir/sorting_sphere.cpp.o
.PHONY : sorting_sphere.cpp.o

sorting_sphere.i: sorting_sphere.cpp.i

.PHONY : sorting_sphere.i

# target to preprocess a source file
sorting_sphere.cpp.i:
	$(MAKE) -f CMakeFiles/sorting_sphere.dir/build.make CMakeFiles/sorting_sphere.dir/sorting_sphere.cpp.i
.PHONY : sorting_sphere.cpp.i

sorting_sphere.s: sorting_sphere.cpp.s

.PHONY : sorting_sphere.s

# target to generate assembly for a file
sorting_sphere.cpp.s:
	$(MAKE) -f CMakeFiles/sorting_sphere.dir/build.make CMakeFiles/sorting_sphere.dir/sorting_sphere.cpp.s
.PHONY : sorting_sphere.cpp.s

sortingspatial.o: sortingspatial.cpp.o

.PHONY : sortingspatial.o

# target to build an object file
sortingspatial.cpp.o:
	$(MAKE) -f CMakeFiles/sortingspatial.dir/build.make CMakeFiles/sortingspatial.dir/sortingspatial.cpp.o
.PHONY : sortingspatial.cpp.o

sortingspatial.i: sortingspatial.cpp.i

.PHONY : sortingspatial.i

# target to preprocess a source file
sortingspatial.cpp.i:
	$(MAKE) -f CMakeFiles/sortingspatial.dir/build.make CMakeFiles/sortingspatial.dir/sortingspatial.cpp.i
.PHONY : sortingspatial.cpp.i

sortingspatial.s: sortingspatial.cpp.s

.PHONY : sortingspatial.s

# target to generate assembly for a file
sortingspatial.cpp.s:
	$(MAKE) -f CMakeFiles/sortingspatial.dir/build.make CMakeFiles/sortingspatial.dir/sortingspatial.cpp.s
.PHONY : sortingspatial.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... sortingspatial"
	@echo "... sorting_sphere"
	@echo "... sorting"
	@echo "... is_at_right"
	@echo "... ordering_based_onfirst"
	@echo "... array_convex_hull_2"
	@echo "... cgal_check_build_system"
	@echo "... simple_sort"
	@echo "... convex_hull"
	@echo "... ALL_CGAL_TARGETS"
	@echo "... convex_hull_incremental"
	@echo "... convex_hull_naive"
	@echo "... array_convex_hull_2.o"
	@echo "... array_convex_hull_2.i"
	@echo "... array_convex_hull_2.s"
	@echo "... convex_hull.o"
	@echo "... convex_hull.i"
	@echo "... convex_hull.s"
	@echo "... convex_hull_incremental.o"
	@echo "... convex_hull_incremental.i"
	@echo "... convex_hull_incremental.s"
	@echo "... convex_hull_naive.o"
	@echo "... convex_hull_naive.i"
	@echo "... convex_hull_naive.s"
	@echo "... is_at_right.o"
	@echo "... is_at_right.i"
	@echo "... is_at_right.s"
	@echo "... ordering_based_onfirst.o"
	@echo "... ordering_based_onfirst.i"
	@echo "... ordering_based_onfirst.s"
	@echo "... simple_sort.o"
	@echo "... simple_sort.i"
	@echo "... simple_sort.s"
	@echo "... sorting.o"
	@echo "... sorting.i"
	@echo "... sorting.s"
	@echo "... sorting_sphere.o"
	@echo "... sorting_sphere.i"
	@echo "... sorting_sphere.s"
	@echo "... sortingspatial.o"
	@echo "... sortingspatial.i"
	@echo "... sortingspatial.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

