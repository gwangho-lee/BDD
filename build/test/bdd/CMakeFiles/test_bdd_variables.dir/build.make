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
include test/bdd/CMakeFiles/test_bdd_variables.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/bdd/CMakeFiles/test_bdd_variables.dir/compiler_depend.make

# Include the progress variables for this target.
include test/bdd/CMakeFiles/test_bdd_variables.dir/progress.make

# Include the compile flags for this target's objects.
include test/bdd/CMakeFiles/test_bdd_variables.dir/flags.make

test/bdd/CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o: test/bdd/CMakeFiles/test_bdd_variables.dir/flags.make
test/bdd/CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o: ../test/bdd/test_bdd_variables.cpp
test/bdd/CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o: test/bdd/CMakeFiles/test_bdd_variables.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/bdd/CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o"
	cd /home/gl9102/BDD/build/test/bdd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/bdd/CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o -MF CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o.d -o CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o -c /home/gl9102/BDD/test/bdd/test_bdd_variables.cpp

test/bdd/CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.i"
	cd /home/gl9102/BDD/build/test/bdd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gl9102/BDD/test/bdd/test_bdd_variables.cpp > CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.i

test/bdd/CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.s"
	cd /home/gl9102/BDD/build/test/bdd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gl9102/BDD/test/bdd/test_bdd_variables.cpp -o CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.s

# Object files for target test_bdd_variables
test_bdd_variables_OBJECTS = \
"CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o"

# External object files for target test_bdd_variables
test_bdd_variables_EXTERNAL_OBJECTS =

test/bdd/test_bdd_variables: test/bdd/CMakeFiles/test_bdd_variables.dir/test_bdd_variables.cpp.o
test/bdd/test_bdd_variables: test/bdd/CMakeFiles/test_bdd_variables.dir/build.make
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_node.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_node_cache.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_var.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_memo_cache.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_mgr.a
test/bdd/test_bdd_variables: src/bdd_collection/libbdd_collection.a
test/bdd/test_bdd_variables: src/libbdd_solver.a
test/bdd/test_bdd_variables: src/libtransitive_closure_dag.a
test/bdd/test_bdd_variables: src/libbdd_mma.a
test/bdd/test_bdd_variables: src/libbdd_mma_smooth.a
test/bdd/test_bdd_variables: src/libbdd_parallel_mma.a
test/bdd/test_bdd_variables: src/libbdd_parallel_mma_smooth.a
test/bdd/test_bdd_variables: src/libbdd_cuda.a
test/bdd/test_bdd_variables: src/libmulti_gpu.a
test/bdd/test_bdd_variables: src/libbdd_multi_parallel_mma.a
test/bdd/test_bdd_variables: src/libbdd_lbfgs_parallel_mma.a
test/bdd/test_bdd_variables: src/libbdd_lbfgs_cuda_mma.a
test/bdd/test_bdd_variables: src/libbdd_subgradient.a
test/bdd/test_bdd_variables: src/libbdd_preprocessor.a
test/bdd/test_bdd_variables: src/libILP_parser.a
test/bdd/test_bdd_variables: src/libOPB_parser.a
test/bdd/test_bdd_variables: src/libILP_input.a
test/bdd/test_bdd_variables: src/libmm_primal_decoder.a
test/bdd/test_bdd_variables: src/libbdd_cuda_base.a
test/bdd/test_bdd_variables: src/libbdd_cuda_parallel_mma.a
test/bdd/test_bdd_variables: src/libbdd_multi_gpu_mma.a
test/bdd/test_bdd_variables: src/libbdd_multi_parallel_mma_base.a
test/bdd/test_bdd_variables: src/libincremental_mm_agreement_rounding_cuda.a
test/bdd/test_bdd_variables: src/libconvert_pb_to_bdd.a
test/bdd/test_bdd_variables: src/liblineq_bdd.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_node.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_node_cache.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_var.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_memo_cache.a
test/bdd/test_bdd_variables: src/bdd_manager/libbdd_mgr.a
test/bdd/test_bdd_variables: src/bdd_collection/libbdd_collection.a
test/bdd/test_bdd_variables: src/libbdd_solver.a
test/bdd/test_bdd_variables: src/libtransitive_closure_dag.a
test/bdd/test_bdd_variables: src/libbdd_mma.a
test/bdd/test_bdd_variables: src/libbdd_mma_smooth.a
test/bdd/test_bdd_variables: src/libbdd_parallel_mma.a
test/bdd/test_bdd_variables: src/libbdd_parallel_mma_smooth.a
test/bdd/test_bdd_variables: src/libbdd_cuda.a
test/bdd/test_bdd_variables: src/libmulti_gpu.a
test/bdd/test_bdd_variables: src/libbdd_multi_parallel_mma.a
test/bdd/test_bdd_variables: src/libbdd_lbfgs_parallel_mma.a
test/bdd/test_bdd_variables: src/libbdd_lbfgs_cuda_mma.a
test/bdd/test_bdd_variables: src/libbdd_subgradient.a
test/bdd/test_bdd_variables: src/libbdd_preprocessor.a
test/bdd/test_bdd_variables: src/libILP_parser.a
test/bdd/test_bdd_variables: src/libOPB_parser.a
test/bdd/test_bdd_variables: src/libILP_input.a
test/bdd/test_bdd_variables: src/libmm_primal_decoder.a
test/bdd/test_bdd_variables: src/libbdd_cuda_base.a
test/bdd/test_bdd_variables: src/libbdd_cuda_parallel_mma.a
test/bdd/test_bdd_variables: src/libbdd_multi_gpu_mma.a
test/bdd/test_bdd_variables: src/libbdd_multi_parallel_mma_base.a
test/bdd/test_bdd_variables: src/libincremental_mm_agreement_rounding_cuda.a
test/bdd/test_bdd_variables: src/libconvert_pb_to_bdd.a
test/bdd/test_bdd_variables: src/liblineq_bdd.a
test/bdd/test_bdd_variables: /usr/lib/gcc/x86_64-redhat-linux/8/libgomp.so
test/bdd/test_bdd_variables: /usr/lib64/libpthread.so
test/bdd/test_bdd_variables: test/bdd/CMakeFiles/test_bdd_variables.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_bdd_variables"
	cd /home/gl9102/BDD/build/test/bdd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_bdd_variables.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/bdd/CMakeFiles/test_bdd_variables.dir/build: test/bdd/test_bdd_variables
.PHONY : test/bdd/CMakeFiles/test_bdd_variables.dir/build

test/bdd/CMakeFiles/test_bdd_variables.dir/clean:
	cd /home/gl9102/BDD/build/test/bdd && $(CMAKE_COMMAND) -P CMakeFiles/test_bdd_variables.dir/cmake_clean.cmake
.PHONY : test/bdd/CMakeFiles/test_bdd_variables.dir/clean

test/bdd/CMakeFiles/test_bdd_variables.dir/depend:
	cd /home/gl9102/BDD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gl9102/BDD /home/gl9102/BDD/test/bdd /home/gl9102/BDD/build /home/gl9102/BDD/build/test/bdd /home/gl9102/BDD/build/test/bdd/CMakeFiles/test_bdd_variables.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/bdd/CMakeFiles/test_bdd_variables.dir/depend

