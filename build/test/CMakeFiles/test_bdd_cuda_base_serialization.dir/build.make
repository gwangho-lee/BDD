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
include test/CMakeFiles/test_bdd_cuda_base_serialization.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include test/CMakeFiles/test_bdd_cuda_base_serialization.dir/compiler_depend.make

# Include the progress variables for this target.
include test/CMakeFiles/test_bdd_cuda_base_serialization.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/test_bdd_cuda_base_serialization.dir/flags.make

test/CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o: test/CMakeFiles/test_bdd_cuda_base_serialization.dir/flags.make
test/CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o: ../test/test_bdd_cuda_base_serialization.cpp
test/CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o: test/CMakeFiles/test_bdd_cuda_base_serialization.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o"
	cd /home/gl9102/BDD/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT test/CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o -MF CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o.d -o CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o -c /home/gl9102/BDD/test/test_bdd_cuda_base_serialization.cpp

test/CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.i"
	cd /home/gl9102/BDD/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gl9102/BDD/test/test_bdd_cuda_base_serialization.cpp > CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.i

test/CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.s"
	cd /home/gl9102/BDD/build/test && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gl9102/BDD/test/test_bdd_cuda_base_serialization.cpp -o CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.s

# Object files for target test_bdd_cuda_base_serialization
test_bdd_cuda_base_serialization_OBJECTS = \
"CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o"

# External object files for target test_bdd_cuda_base_serialization
test_bdd_cuda_base_serialization_EXTERNAL_OBJECTS =

test/test_bdd_cuda_base_serialization: test/CMakeFiles/test_bdd_cuda_base_serialization.dir/test_bdd_cuda_base_serialization.cpp.o
test/test_bdd_cuda_base_serialization: test/CMakeFiles/test_bdd_cuda_base_serialization.dir/build.make
test/test_bdd_cuda_base_serialization: src/libbdd_cuda_base.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_node.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_node_cache.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_var.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_memo_cache.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_mgr.a
test/test_bdd_cuda_base_serialization: src/bdd_collection/libbdd_collection.a
test/test_bdd_cuda_base_serialization: src/libbdd_solver.a
test/test_bdd_cuda_base_serialization: src/libtransitive_closure_dag.a
test/test_bdd_cuda_base_serialization: src/libbdd_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_mma_smooth.a
test/test_bdd_cuda_base_serialization: src/libbdd_parallel_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_parallel_mma_smooth.a
test/test_bdd_cuda_base_serialization: src/libbdd_cuda.a
test/test_bdd_cuda_base_serialization: src/libbdd_multi_parallel_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_lbfgs_parallel_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_lbfgs_cuda_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_subgradient.a
test/test_bdd_cuda_base_serialization: src/libbdd_preprocessor.a
test/test_bdd_cuda_base_serialization: src/libILP_parser.a
test/test_bdd_cuda_base_serialization: src/libOPB_parser.a
test/test_bdd_cuda_base_serialization: src/libILP_input.a
test/test_bdd_cuda_base_serialization: src/libmm_primal_decoder.a
test/test_bdd_cuda_base_serialization: src/libbdd_cuda_parallel_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_multi_parallel_mma_base.a
test/test_bdd_cuda_base_serialization: src/libincremental_mm_agreement_rounding_cuda.a
test/test_bdd_cuda_base_serialization: src/libconvert_pb_to_bdd.a
test/test_bdd_cuda_base_serialization: src/liblineq_bdd.a
test/test_bdd_cuda_base_serialization: src/libbdd_cuda_base.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_node.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_node_cache.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_var.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_memo_cache.a
test/test_bdd_cuda_base_serialization: src/bdd_manager/libbdd_mgr.a
test/test_bdd_cuda_base_serialization: src/bdd_collection/libbdd_collection.a
test/test_bdd_cuda_base_serialization: src/libbdd_solver.a
test/test_bdd_cuda_base_serialization: src/libtransitive_closure_dag.a
test/test_bdd_cuda_base_serialization: src/libbdd_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_mma_smooth.a
test/test_bdd_cuda_base_serialization: src/libbdd_parallel_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_parallel_mma_smooth.a
test/test_bdd_cuda_base_serialization: src/libbdd_cuda.a
test/test_bdd_cuda_base_serialization: src/libbdd_multi_parallel_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_lbfgs_parallel_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_lbfgs_cuda_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_subgradient.a
test/test_bdd_cuda_base_serialization: src/libbdd_preprocessor.a
test/test_bdd_cuda_base_serialization: src/libILP_parser.a
test/test_bdd_cuda_base_serialization: src/libOPB_parser.a
test/test_bdd_cuda_base_serialization: src/libILP_input.a
test/test_bdd_cuda_base_serialization: src/libmm_primal_decoder.a
test/test_bdd_cuda_base_serialization: src/libbdd_cuda_parallel_mma.a
test/test_bdd_cuda_base_serialization: src/libbdd_multi_parallel_mma_base.a
test/test_bdd_cuda_base_serialization: src/libincremental_mm_agreement_rounding_cuda.a
test/test_bdd_cuda_base_serialization: src/libconvert_pb_to_bdd.a
test/test_bdd_cuda_base_serialization: src/liblineq_bdd.a
test/test_bdd_cuda_base_serialization: /usr/lib/gcc/x86_64-redhat-linux/8/libgomp.so
test/test_bdd_cuda_base_serialization: /usr/lib64/libpthread.so
test/test_bdd_cuda_base_serialization: test/CMakeFiles/test_bdd_cuda_base_serialization.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_bdd_cuda_base_serialization"
	cd /home/gl9102/BDD/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_bdd_cuda_base_serialization.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/test_bdd_cuda_base_serialization.dir/build: test/test_bdd_cuda_base_serialization
.PHONY : test/CMakeFiles/test_bdd_cuda_base_serialization.dir/build

test/CMakeFiles/test_bdd_cuda_base_serialization.dir/clean:
	cd /home/gl9102/BDD/build/test && $(CMAKE_COMMAND) -P CMakeFiles/test_bdd_cuda_base_serialization.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/test_bdd_cuda_base_serialization.dir/clean

test/CMakeFiles/test_bdd_cuda_base_serialization.dir/depend:
	cd /home/gl9102/BDD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gl9102/BDD /home/gl9102/BDD/test /home/gl9102/BDD/build /home/gl9102/BDD/build/test /home/gl9102/BDD/build/test/CMakeFiles/test_bdd_cuda_base_serialization.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/test_bdd_cuda_base_serialization.dir/depend

