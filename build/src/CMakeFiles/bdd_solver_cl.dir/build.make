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
include src/CMakeFiles/bdd_solver_cl.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/bdd_solver_cl.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/bdd_solver_cl.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/bdd_solver_cl.dir/flags.make

src/CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o: src/CMakeFiles/bdd_solver_cl.dir/flags.make
src/CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o: ../src/bdd_solver_cl.cpp
src/CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o: src/CMakeFiles/bdd_solver_cl.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o"
	cd /home/gl9102/BDD/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o -MF CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o.d -o CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o -c /home/gl9102/BDD/src/bdd_solver_cl.cpp

src/CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.i"
	cd /home/gl9102/BDD/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/gl9102/BDD/src/bdd_solver_cl.cpp > CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.i

src/CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.s"
	cd /home/gl9102/BDD/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/gl9102/BDD/src/bdd_solver_cl.cpp -o CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.s

# Object files for target bdd_solver_cl
bdd_solver_cl_OBJECTS = \
"CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o"

# External object files for target bdd_solver_cl
bdd_solver_cl_EXTERNAL_OBJECTS =

src/bdd_solver_cl: src/CMakeFiles/bdd_solver_cl.dir/bdd_solver_cl.cpp.o
src/bdd_solver_cl: src/CMakeFiles/bdd_solver_cl.dir/build.make
src/bdd_solver_cl: src/libbdd_solver.a
src/bdd_solver_cl: src/libbdd_mma.a
src/bdd_solver_cl: src/libbdd_mma_smooth.a
src/bdd_solver_cl: src/libbdd_parallel_mma.a
src/bdd_solver_cl: src/libbdd_parallel_mma_smooth.a
src/bdd_solver_cl: src/libbdd_cuda.a
src/bdd_solver_cl: src/libbdd_multi_parallel_mma.a
src/bdd_solver_cl: src/libbdd_lbfgs_parallel_mma.a
src/bdd_solver_cl: src/libbdd_lbfgs_cuda_mma.a
src/bdd_solver_cl: src/libbdd_subgradient.a
src/bdd_solver_cl: src/bdd_manager/libbdd_mgr.a
src/bdd_solver_cl: src/libbdd_preprocessor.a
src/bdd_solver_cl: src/libILP_parser.a
src/bdd_solver_cl: src/libOPB_parser.a
src/bdd_solver_cl: src/libILP_input.a
src/bdd_solver_cl: src/libmm_primal_decoder.a
src/bdd_solver_cl: src/libbdd_cuda_base.a
src/bdd_solver_cl: src/libbdd_cuda_parallel_mma.a
src/bdd_solver_cl: src/libbdd_multi_parallel_mma_base.a
src/bdd_solver_cl: src/libincremental_mm_agreement_rounding_cuda.a
src/bdd_solver_cl: src/bdd_manager/libbdd_node.a
src/bdd_solver_cl: src/bdd_manager/libbdd_node_cache.a
src/bdd_solver_cl: src/bdd_manager/libbdd_var.a
src/bdd_solver_cl: src/bdd_manager/libbdd_memo_cache.a
src/bdd_solver_cl: src/bdd_collection/libbdd_collection.a
src/bdd_solver_cl: src/libconvert_pb_to_bdd.a
src/bdd_solver_cl: src/liblineq_bdd.a
src/bdd_solver_cl: src/libtransitive_closure_dag.a
src/bdd_solver_cl: src/libbdd_solver.a
src/bdd_solver_cl: src/libbdd_mma.a
src/bdd_solver_cl: src/libbdd_mma_smooth.a
src/bdd_solver_cl: src/libbdd_parallel_mma.a
src/bdd_solver_cl: src/libbdd_parallel_mma_smooth.a
src/bdd_solver_cl: src/libbdd_cuda.a
src/bdd_solver_cl: src/libbdd_multi_parallel_mma.a
src/bdd_solver_cl: src/libbdd_lbfgs_parallel_mma.a
src/bdd_solver_cl: src/libbdd_lbfgs_cuda_mma.a
src/bdd_solver_cl: src/libbdd_subgradient.a
src/bdd_solver_cl: src/bdd_manager/libbdd_mgr.a
src/bdd_solver_cl: src/libbdd_preprocessor.a
src/bdd_solver_cl: src/libILP_parser.a
src/bdd_solver_cl: src/libOPB_parser.a
src/bdd_solver_cl: src/libILP_input.a
src/bdd_solver_cl: src/libmm_primal_decoder.a
src/bdd_solver_cl: src/libbdd_cuda_base.a
src/bdd_solver_cl: src/libbdd_cuda_parallel_mma.a
src/bdd_solver_cl: src/libbdd_multi_parallel_mma_base.a
src/bdd_solver_cl: src/libincremental_mm_agreement_rounding_cuda.a
src/bdd_solver_cl: src/bdd_manager/libbdd_node.a
src/bdd_solver_cl: src/bdd_manager/libbdd_node_cache.a
src/bdd_solver_cl: src/bdd_manager/libbdd_var.a
src/bdd_solver_cl: src/bdd_manager/libbdd_memo_cache.a
src/bdd_solver_cl: src/bdd_collection/libbdd_collection.a
src/bdd_solver_cl: src/libconvert_pb_to_bdd.a
src/bdd_solver_cl: src/liblineq_bdd.a
src/bdd_solver_cl: src/libtransitive_closure_dag.a
src/bdd_solver_cl: /usr/lib/gcc/x86_64-redhat-linux/8/libgomp.so
src/bdd_solver_cl: /usr/lib64/libpthread.so
src/bdd_solver_cl: src/CMakeFiles/bdd_solver_cl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/gl9102/BDD/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bdd_solver_cl"
	cd /home/gl9102/BDD/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bdd_solver_cl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/bdd_solver_cl.dir/build: src/bdd_solver_cl
.PHONY : src/CMakeFiles/bdd_solver_cl.dir/build

src/CMakeFiles/bdd_solver_cl.dir/clean:
	cd /home/gl9102/BDD/build/src && $(CMAKE_COMMAND) -P CMakeFiles/bdd_solver_cl.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/bdd_solver_cl.dir/clean

src/CMakeFiles/bdd_solver_cl.dir/depend:
	cd /home/gl9102/BDD/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gl9102/BDD /home/gl9102/BDD/src /home/gl9102/BDD/build /home/gl9102/BDD/build/src /home/gl9102/BDD/build/src/CMakeFiles/bdd_solver_cl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/bdd_solver_cl.dir/depend

