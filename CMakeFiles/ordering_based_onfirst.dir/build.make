# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.11

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Include any dependencies generated for this target.
include CMakeFiles/ordering_based_onfirst.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ordering_based_onfirst.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ordering_based_onfirst.dir/flags.make

CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.o: CMakeFiles/ordering_based_onfirst.dir/flags.make
CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.o: ordering_based_onfirst.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/CGAL-5.0.1/examples/Custom/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.o"
	/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.o -c /usr/local/bin/CGAL-5.0.1/examples/Custom/ordering_based_onfirst.cpp

CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.i"
	/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /usr/local/bin/CGAL-5.0.1/examples/Custom/ordering_based_onfirst.cpp > CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.i

CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.s"
	/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /usr/local/bin/CGAL-5.0.1/examples/Custom/ordering_based_onfirst.cpp -o CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.s

# Object files for target ordering_based_onfirst
ordering_based_onfirst_OBJECTS = \
"CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.o"

# External object files for target ordering_based_onfirst
ordering_based_onfirst_EXTERNAL_OBJECTS =

ordering_based_onfirst: CMakeFiles/ordering_based_onfirst.dir/ordering_based_onfirst.cpp.o
ordering_based_onfirst: CMakeFiles/ordering_based_onfirst.dir/build.make
ordering_based_onfirst: /usr/local/lib64/libCGAL.so.13.0.3
ordering_based_onfirst: /usr/lib64/libmpfr.so
ordering_based_onfirst: /usr/lib64/libgmp.so
ordering_based_onfirst: CMakeFiles/ordering_based_onfirst.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/usr/local/bin/CGAL-5.0.1/examples/Custom/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ordering_based_onfirst"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ordering_based_onfirst.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ordering_based_onfirst.dir/build: ordering_based_onfirst

.PHONY : CMakeFiles/ordering_based_onfirst.dir/build

CMakeFiles/ordering_based_onfirst.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ordering_based_onfirst.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ordering_based_onfirst.dir/clean

CMakeFiles/ordering_based_onfirst.dir/depend:
	cd /usr/local/bin/CGAL-5.0.1/examples/Custom && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/bin/CGAL-5.0.1/examples/Custom /usr/local/bin/CGAL-5.0.1/examples/Custom /usr/local/bin/CGAL-5.0.1/examples/Custom /usr/local/bin/CGAL-5.0.1/examples/Custom /usr/local/bin/CGAL-5.0.1/examples/Custom/CMakeFiles/ordering_based_onfirst.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ordering_based_onfirst.dir/depend

