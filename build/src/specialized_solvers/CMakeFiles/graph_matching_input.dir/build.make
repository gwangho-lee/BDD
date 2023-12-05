# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

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
CMAKE_SOURCE_DIR = /home/gl9102/BDD

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gl9102/BDD/build

# Include any dependencies generated for this target.
include src/specialized_solvers/CMakeFiles/graph_matching_input.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/specialized_solvers/CMakeFiles/graph_matching_input.dir/compiler_depend.make

# Include the progress variables for this target.
include src/specialized_solvers/CMakeFiles/graph_matching_input.dir/progress.make

# Include the compile flags for this target's objects.
include src/specialized_solvers/CMakeFiles/graph_matching_input.dir/flags.make

src/specialized_solvers/CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o: src/specialized_solvers/CMakeFiles/graph_matching_input.dir/flags.make
src/specialized_solvers/CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o: ../src/specialized_solvers/graph_matching_input.cpp
src/specialized_solvers/CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o: src/specialized_solvers/CMakeFiles/graph_matching_input.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/specialized_solvers/CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o"
	cd /home/gl9102/BDD/build/src/specialized_solvers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/specialized_solvers/CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o -MF CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o.d -o CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o -c /home/gl9102/BDD/src/specialized_solvers/graph_matching_input.cpp

src/specialized_solvers/CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.i"
	cd /home/gl9102/BDD/build/src/specialized_solvers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gl9102/BDD/src/specialized_solvers/graph_matching_input.cpp > CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.i

src/specialized_solvers/CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.s"
	cd /home/gl9102/BDD/build/src/specialized_solvers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gl9102/BDD/src/specialized_solvers/graph_matching_input.cpp -o CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.s

# Object files for target graph_matching_input
graph_matching_input_OBJECTS = \
"CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o"

# External object files for target graph_matching_input
graph_matching_input_EXTERNAL_OBJECTS =

src/specialized_solvers/libgraph_matching_input.a: src/specialized_solvers/CMakeFiles/graph_matching_input.dir/graph_matching_input.cpp.o
src/specialized_solvers/libgraph_matching_input.a: src/specialized_solvers/CMakeFiles/graph_matching_input.dir/build.make
src/specialized_solvers/libgraph_matching_input.a: src/specialized_solvers/CMakeFiles/graph_matching_input.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libgraph_matching_input.a"
	cd /home/gl9102/BDD/build/src/specialized_solvers && $(CMAKE_COMMAND) -P CMakeFiles/graph_matching_input.dir/cmake_clean_target.cmake
	cd /home/gl9102/BDD/build/src/specialized_solvers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/graph_matching_input.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/specialized_solvers/CMakeFiles/graph_matching_input.dir/build: src/specialized_solvers/libgraph_matching_input.a
.PHONY : src/specialized_solvers/CMakeFiles/graph_matching_input.dir/build

src/specialized_solvers/CMakeFiles/graph_matching_input.dir/clean:
	cd /home/gl9102/BDD/build/src/specialized_solvers && $(CMAKE_COMMAND) -P CMakeFiles/graph_matching_input.dir/cmake_clean.cmake
.PHONY : src/specialized_solvers/CMakeFiles/graph_matching_input.dir/clean

src/specialized_solvers/CMakeFiles/graph_matching_input.dir/depend:
	cd /home/gl9102/BDD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gl9102/BDD /home/gl9102/BDD/src/specialized_solvers /home/gl9102/BDD/build /home/gl9102/BDD/build/src/specialized_solvers /home/gl9102/BDD/build/src/specialized_solvers/CMakeFiles/graph_matching_input.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/specialized_solvers/CMakeFiles/graph_matching_input.dir/depend

