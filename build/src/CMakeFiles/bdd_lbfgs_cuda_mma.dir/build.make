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
include src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/flags.make

src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o: src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/flags.make
src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o: ../src/bdd_lbfgs_cuda_mma.cpp
src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o: src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CUDA object src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o"
	cd /home/gl9102/BDD/build/src && /usr/local/cuda-12.2/bin/nvcc -forward-unknown-to-host-compiler $(CUDA_DEFINES) $(CUDA_INCLUDES) $(CUDA_FLAGS) -MD -MT src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o -MF CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o.d -x cu -c /home/gl9102/BDD/src/bdd_lbfgs_cuda_mma.cpp -o CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o

src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CUDA source to CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.i"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_PREPROCESSED_SOURCE

src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CUDA source to assembly CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.s"
	$(CMAKE_COMMAND) -E cmake_unimplemented_variable CMAKE_CUDA_CREATE_ASSEMBLY_SOURCE

# Object files for target bdd_lbfgs_cuda_mma
bdd_lbfgs_cuda_mma_OBJECTS = \
"CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o"

# External object files for target bdd_lbfgs_cuda_mma
bdd_lbfgs_cuda_mma_EXTERNAL_OBJECTS =

src/libbdd_lbfgs_cuda_mma.a: src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/bdd_lbfgs_cuda_mma.cpp.o
src/libbdd_lbfgs_cuda_mma.a: src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/build.make
src/libbdd_lbfgs_cuda_mma.a: src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libbdd_lbfgs_cuda_mma.a"
	cd /home/gl9102/BDD/build/src && $(CMAKE_COMMAND) -P CMakeFiles/bdd_lbfgs_cuda_mma.dir/cmake_clean_target.cmake
	cd /home/gl9102/BDD/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bdd_lbfgs_cuda_mma.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/build: src/libbdd_lbfgs_cuda_mma.a
.PHONY : src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/build

src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/clean:
	cd /home/gl9102/BDD/build/src && $(CMAKE_COMMAND) -P CMakeFiles/bdd_lbfgs_cuda_mma.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/clean

src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/depend:
	cd /home/gl9102/BDD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gl9102/BDD /home/gl9102/BDD/src /home/gl9102/BDD/build /home/gl9102/BDD/build/src /home/gl9102/BDD/build/src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/bdd_lbfgs_cuda_mma.dir/depend

