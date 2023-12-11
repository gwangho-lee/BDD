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
include test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/compiler_depend.make

# Include the progress variables for this target.
include test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/progress.make

# Include the compile flags for this target's objects.
include test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/flags.make

test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o: test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/flags.make
test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o: ../test/specialized_solvers/test_multi_graph_matching_input.cpp
test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o: test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o"
	cd /home/gl9102/BDD/build/test/specialized_solvers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o -MF CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o.d -o CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o -c /home/gl9102/BDD/test/specialized_solvers/test_multi_graph_matching_input.cpp

test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.i"
	cd /home/gl9102/BDD/build/test/specialized_solvers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gl9102/BDD/test/specialized_solvers/test_multi_graph_matching_input.cpp > CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.i

test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.s"
	cd /home/gl9102/BDD/build/test/specialized_solvers && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gl9102/BDD/test/specialized_solvers/test_multi_graph_matching_input.cpp -o CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.s

# Object files for target test_multi_graph_matching_input
test_multi_graph_matching_input_OBJECTS = \
"CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o"

# External object files for target test_multi_graph_matching_input
test_multi_graph_matching_input_EXTERNAL_OBJECTS =

test/specialized_solvers/test_multi_graph_matching_input: test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/test_multi_graph_matching_input.cpp.o
test/specialized_solvers/test_multi_graph_matching_input: test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/build.make
test/specialized_solvers/test_multi_graph_matching_input: src/specialized_solvers/libmulti_graph_matching_input.a
test/specialized_solvers/test_multi_graph_matching_input: src/specialized_solvers/libgraph_matching_input.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_node.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_node_cache.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_var.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_memo_cache.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_mgr.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_collection/libbdd_collection.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_solver.a
test/specialized_solvers/test_multi_graph_matching_input: src/libILP_input.a
test/specialized_solvers/test_multi_graph_matching_input: src/libtransitive_closure_dag.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_mma_smooth.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_parallel_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_parallel_mma_smooth.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_cuda.a
test/specialized_solvers/test_multi_graph_matching_input: src/libmulti_gpu.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_multi_parallel_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_lbfgs_parallel_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_lbfgs_cuda_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_subgradient.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_preprocessor.a
test/specialized_solvers/test_multi_graph_matching_input: src/libILP_parser.a
test/specialized_solvers/test_multi_graph_matching_input: src/libOPB_parser.a
test/specialized_solvers/test_multi_graph_matching_input: src/libmm_primal_decoder.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_cuda_base.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_cuda_parallel_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_multi_gpu_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_multi_parallel_mma_base.a
test/specialized_solvers/test_multi_graph_matching_input: src/libincremental_mm_agreement_rounding_cuda.a
test/specialized_solvers/test_multi_graph_matching_input: src/libconvert_pb_to_bdd.a
test/specialized_solvers/test_multi_graph_matching_input: src/liblineq_bdd.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_node.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_node_cache.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_var.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_memo_cache.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_manager/libbdd_mgr.a
test/specialized_solvers/test_multi_graph_matching_input: src/bdd_collection/libbdd_collection.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_solver.a
test/specialized_solvers/test_multi_graph_matching_input: src/libILP_input.a
test/specialized_solvers/test_multi_graph_matching_input: src/libtransitive_closure_dag.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_mma_smooth.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_parallel_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_parallel_mma_smooth.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_cuda.a
test/specialized_solvers/test_multi_graph_matching_input: src/libmulti_gpu.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_multi_parallel_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_lbfgs_parallel_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_lbfgs_cuda_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_subgradient.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_preprocessor.a
test/specialized_solvers/test_multi_graph_matching_input: src/libILP_parser.a
test/specialized_solvers/test_multi_graph_matching_input: src/libOPB_parser.a
test/specialized_solvers/test_multi_graph_matching_input: src/libmm_primal_decoder.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_cuda_base.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_cuda_parallel_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_multi_gpu_mma.a
test/specialized_solvers/test_multi_graph_matching_input: src/libbdd_multi_parallel_mma_base.a
test/specialized_solvers/test_multi_graph_matching_input: src/libincremental_mm_agreement_rounding_cuda.a
test/specialized_solvers/test_multi_graph_matching_input: src/libconvert_pb_to_bdd.a
test/specialized_solvers/test_multi_graph_matching_input: src/liblineq_bdd.a
test/specialized_solvers/test_multi_graph_matching_input: /usr/lib/gcc/x86_64-redhat-linux/8/libgomp.so
test/specialized_solvers/test_multi_graph_matching_input: /usr/lib64/libpthread.so
test/specialized_solvers/test_multi_graph_matching_input: test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_multi_graph_matching_input"
	cd /home/gl9102/BDD/build/test/specialized_solvers && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_multi_graph_matching_input.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/build: test/specialized_solvers/test_multi_graph_matching_input
.PHONY : test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/build

test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/clean:
	cd /home/gl9102/BDD/build/test/specialized_solvers && $(CMAKE_COMMAND) -P CMakeFiles/test_multi_graph_matching_input.dir/cmake_clean.cmake
.PHONY : test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/clean

test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/depend:
	cd /home/gl9102/BDD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gl9102/BDD /home/gl9102/BDD/test/specialized_solvers /home/gl9102/BDD/build /home/gl9102/BDD/build/test/specialized_solvers /home/gl9102/BDD/build/test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/specialized_solvers/CMakeFiles/test_multi_graph_matching_input.dir/depend

