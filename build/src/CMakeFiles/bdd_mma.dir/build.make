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
include src/CMakeFiles/bdd_mma.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/bdd_mma.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/bdd_mma.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/bdd_mma.dir/flags.make

src/CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o: src/CMakeFiles/bdd_mma.dir/flags.make
src/CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o: ../src/bdd_mma.cpp
src/CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o: src/CMakeFiles/bdd_mma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o"
	cd /home/gl9102/BDD/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o -MF CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o.d -o CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o -c /home/gl9102/BDD/src/bdd_mma.cpp

src/CMakeFiles/bdd_mma.dir/bdd_mma.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bdd_mma.dir/bdd_mma.cpp.i"
	cd /home/gl9102/BDD/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gl9102/BDD/src/bdd_mma.cpp > CMakeFiles/bdd_mma.dir/bdd_mma.cpp.i

src/CMakeFiles/bdd_mma.dir/bdd_mma.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bdd_mma.dir/bdd_mma.cpp.s"
	cd /home/gl9102/BDD/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gl9102/BDD/src/bdd_mma.cpp -o CMakeFiles/bdd_mma.dir/bdd_mma.cpp.s

# Object files for target bdd_mma
bdd_mma_OBJECTS = \
"CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o"

# External object files for target bdd_mma
bdd_mma_EXTERNAL_OBJECTS =

src/libbdd_mma.a: src/CMakeFiles/bdd_mma.dir/bdd_mma.cpp.o
src/libbdd_mma.a: src/CMakeFiles/bdd_mma.dir/build.make
src/libbdd_mma.a: src/CMakeFiles/bdd_mma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libbdd_mma.a"
	cd /home/gl9102/BDD/build/src && $(CMAKE_COMMAND) -P CMakeFiles/bdd_mma.dir/cmake_clean_target.cmake
	cd /home/gl9102/BDD/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bdd_mma.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/bdd_mma.dir/build: src/libbdd_mma.a
.PHONY : src/CMakeFiles/bdd_mma.dir/build

src/CMakeFiles/bdd_mma.dir/clean:
	cd /home/gl9102/BDD/build/src && $(CMAKE_COMMAND) -P CMakeFiles/bdd_mma.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/bdd_mma.dir/clean

src/CMakeFiles/bdd_mma.dir/depend:
	cd /home/gl9102/BDD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gl9102/BDD /home/gl9102/BDD/src /home/gl9102/BDD/build /home/gl9102/BDD/build/src /home/gl9102/BDD/build/src/CMakeFiles/bdd_mma.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/bdd_mma.dir/depend

