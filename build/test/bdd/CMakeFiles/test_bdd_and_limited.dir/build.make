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
include test/bdd/CMakeFiles/test_bdd_and_limited.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/bdd/CMakeFiles/test_bdd_and_limited.dir/compiler_depend.make

# Include the progress variables for this target.
include test/bdd/CMakeFiles/test_bdd_and_limited.dir/progress.make

# Include the compile flags for this target's objects.
include test/bdd/CMakeFiles/test_bdd_and_limited.dir/flags.make

test/bdd/CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o: test/bdd/CMakeFiles/test_bdd_and_limited.dir/flags.make
test/bdd/CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o: ../test/bdd/test_bdd_and_limited.cpp
test/bdd/CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o: test/bdd/CMakeFiles/test_bdd_and_limited.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/bdd/CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o"
	cd /home/gl9102/BDD/build/test/bdd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/bdd/CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o -MF CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o.d -o CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o -c /home/gl9102/BDD/test/bdd/test_bdd_and_limited.cpp

test/bdd/CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.i"
	cd /home/gl9102/BDD/build/test/bdd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gl9102/BDD/test/bdd/test_bdd_and_limited.cpp > CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.i

test/bdd/CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.s"
	cd /home/gl9102/BDD/build/test/bdd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gl9102/BDD/test/bdd/test_bdd_and_limited.cpp -o CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.s

# Object files for target test_bdd_and_limited
test_bdd_and_limited_OBJECTS = \
"CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o"

# External object files for target test_bdd_and_limited
test_bdd_and_limited_EXTERNAL_OBJECTS =

test/bdd/test_bdd_and_limited: test/bdd/CMakeFiles/test_bdd_and_limited.dir/test_bdd_and_limited.cpp.o
test/bdd/test_bdd_and_limited: test/bdd/CMakeFiles/test_bdd_and_limited.dir/build.make
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_node.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_node_cache.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_var.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_memo_cache.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_mgr.a
test/bdd/test_bdd_and_limited: src/bdd_collection/libbdd_collection.a
test/bdd/test_bdd_and_limited: src/libbdd_solver.a
test/bdd/test_bdd_and_limited: src/libtransitive_closure_dag.a
test/bdd/test_bdd_and_limited: src/libbdd_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_mma_smooth.a
test/bdd/test_bdd_and_limited: src/libbdd_parallel_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_parallel_mma_smooth.a
test/bdd/test_bdd_and_limited: src/libbdd_cuda.a
test/bdd/test_bdd_and_limited: src/libmulti_gpu.a
test/bdd/test_bdd_and_limited: src/libbdd_multi_parallel_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_lbfgs_parallel_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_lbfgs_cuda_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_subgradient.a
test/bdd/test_bdd_and_limited: src/libbdd_preprocessor.a
test/bdd/test_bdd_and_limited: src/libILP_parser.a
test/bdd/test_bdd_and_limited: src/libOPB_parser.a
test/bdd/test_bdd_and_limited: src/libILP_input.a
test/bdd/test_bdd_and_limited: src/libmm_primal_decoder.a
test/bdd/test_bdd_and_limited: src/libbdd_cuda_base.a
test/bdd/test_bdd_and_limited: src/libbdd_cuda_parallel_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_multi_gpu_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_multi_parallel_mma_base.a
test/bdd/test_bdd_and_limited: src/libincremental_mm_agreement_rounding_cuda.a
test/bdd/test_bdd_and_limited: src/libconvert_pb_to_bdd.a
test/bdd/test_bdd_and_limited: src/liblineq_bdd.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_node.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_node_cache.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_var.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_memo_cache.a
test/bdd/test_bdd_and_limited: src/bdd_manager/libbdd_mgr.a
test/bdd/test_bdd_and_limited: src/bdd_collection/libbdd_collection.a
test/bdd/test_bdd_and_limited: src/libbdd_solver.a
test/bdd/test_bdd_and_limited: src/libtransitive_closure_dag.a
test/bdd/test_bdd_and_limited: src/libbdd_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_mma_smooth.a
test/bdd/test_bdd_and_limited: src/libbdd_parallel_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_parallel_mma_smooth.a
test/bdd/test_bdd_and_limited: src/libbdd_cuda.a
test/bdd/test_bdd_and_limited: src/libmulti_gpu.a
test/bdd/test_bdd_and_limited: src/libbdd_multi_parallel_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_lbfgs_parallel_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_lbfgs_cuda_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_subgradient.a
test/bdd/test_bdd_and_limited: src/libbdd_preprocessor.a
test/bdd/test_bdd_and_limited: src/libILP_parser.a
test/bdd/test_bdd_and_limited: src/libOPB_parser.a
test/bdd/test_bdd_and_limited: src/libILP_input.a
test/bdd/test_bdd_and_limited: src/libmm_primal_decoder.a
test/bdd/test_bdd_and_limited: src/libbdd_cuda_base.a
test/bdd/test_bdd_and_limited: src/libbdd_cuda_parallel_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_multi_gpu_mma.a
test/bdd/test_bdd_and_limited: src/libbdd_multi_parallel_mma_base.a
test/bdd/test_bdd_and_limited: src/libincremental_mm_agreement_rounding_cuda.a
test/bdd/test_bdd_and_limited: src/libconvert_pb_to_bdd.a
test/bdd/test_bdd_and_limited: src/liblineq_bdd.a
test/bdd/test_bdd_and_limited: /usr/lib/gcc/x86_64-redhat-linux/8/libgomp.so
test/bdd/test_bdd_and_limited: /usr/lib64/libpthread.so
test/bdd/test_bdd_and_limited: test/bdd/CMakeFiles/test_bdd_and_limited.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_bdd_and_limited"
	cd /home/gl9102/BDD/build/test/bdd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_bdd_and_limited.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/bdd/CMakeFiles/test_bdd_and_limited.dir/build: test/bdd/test_bdd_and_limited
.PHONY : test/bdd/CMakeFiles/test_bdd_and_limited.dir/build

test/bdd/CMakeFiles/test_bdd_and_limited.dir/clean:
	cd /home/gl9102/BDD/build/test/bdd && $(CMAKE_COMMAND) -P CMakeFiles/test_bdd_and_limited.dir/cmake_clean.cmake
.PHONY : test/bdd/CMakeFiles/test_bdd_and_limited.dir/clean

test/bdd/CMakeFiles/test_bdd_and_limited.dir/depend:
	cd /home/gl9102/BDD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gl9102/BDD /home/gl9102/BDD/test/bdd /home/gl9102/BDD/build /home/gl9102/BDD/build/test/bdd /home/gl9102/BDD/build/test/bdd/CMakeFiles/test_bdd_and_limited.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/bdd/CMakeFiles/test_bdd_and_limited.dir/depend

