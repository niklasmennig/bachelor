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
CMAKE_SOURCE_DIR = /home/niklas/repos/anydsl/rodent

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/niklas/repos/anydsl/rodent

# Include any dependencies generated for this target.
include src/CMakeFiles/rodent.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/rodent.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/rodent.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/rodent.dir/flags.make

src/rodent.o: src/rodent.ll
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/niklas/repos/anydsl/rodent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating rodent.o"
	cd /home/niklas/repos/anydsl/rodent/src && /home/niklas/repos/anydsl/llvm_build/bin/clang-10 -O3 -march=native -ffast-math -fPIE -c -o /home/niklas/repos/anydsl/rodent/src/./rodent.o /home/niklas/repos/anydsl/rodent/src/./rodent.ll
	cd /home/niklas/repos/anydsl/rodent/src && /usr/bin/cmake -D_objfile=/home/niklas/repos/anydsl/rodent/src/./rodent.o -D_basename=rodent -P /home/niklas/repos/anydsl/runtime/cmake/check_hlsobj.cmake

src/rodent.ll: /home/niklas/repos/anydsl/impala/build/bin/impala
src/rodent.ll: /usr/bin/python3.9
src/rodent.ll: /home/niklas/repos/anydsl/runtime/post-patcher.py
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_rv.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_cpu.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_hls.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_cuda.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_nvvm.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_amdgpu.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_opencl.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_thorin.impala
src/rodent.ll: /home/niklas/repos/anydsl/runtime/platforms/impala/runtime.impala
src/rodent.ll: src/core/color.impala
src/rodent.ll: src/core/common.impala
src/rodent.ll: src/core/cpu_common.impala
src/rodent.ll: src/core/matrix.impala
src/rodent.ll: src/core/random.impala
src/rodent.ll: src/core/sort.impala
src/rodent.ll: src/core/vector.impala
src/rodent.ll: src/render/image.impala
src/rodent.ll: src/render/camera.impala
src/rodent.ll: src/render/geometry.impala
src/rodent.ll: src/render/light.impala
src/rodent.ll: src/render/material.impala
src/rodent.ll: src/render/renderer.impala
src/rodent.ll: src/render/scene.impala
src/rodent.ll: src/render/driver.impala
src/rodent.ll: src/render/mapping_cpu.impala
src/rodent.ll: src/render/mapping_gpu.impala
src/rodent.ll: src/traversal/intersection.impala
src/rodent.ll: src/traversal/stack.impala
src/rodent.ll: src/traversal/mapping_cpu.impala
src/rodent.ll: src/traversal/mapping_gpu.impala
src/rodent.ll: src/main.impala
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/niklas/repos/anydsl/rodent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating rodent.ll"
	cd /home/niklas/repos/anydsl/rodent/src && /home/niklas/repos/anydsl/impala/build/bin/impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics.impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_rv.impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_cpu.impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_hls.impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_cuda.impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_nvvm.impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_amdgpu.impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_opencl.impala /home/niklas/repos/anydsl/runtime/platforms/impala/intrinsics_thorin.impala /home/niklas/repos/anydsl/runtime/platforms/impala/runtime.impala /home/niklas/repos/anydsl/rodent/src/core/color.impala /home/niklas/repos/anydsl/rodent/src/core/common.impala /home/niklas/repos/anydsl/rodent/src/core/cpu_common.impala /home/niklas/repos/anydsl/rodent/src/core/matrix.impala /home/niklas/repos/anydsl/rodent/src/core/random.impala /home/niklas/repos/anydsl/rodent/src/core/sort.impala /home/niklas/repos/anydsl/rodent/src/core/vector.impala /home/niklas/repos/anydsl/rodent/src/render/image.impala /home/niklas/repos/anydsl/rodent/src/render/camera.impala /home/niklas/repos/anydsl/rodent/src/render/geometry.impala /home/niklas/repos/anydsl/rodent/src/render/light.impala /home/niklas/repos/anydsl/rodent/src/render/material.impala /home/niklas/repos/anydsl/rodent/src/render/renderer.impala /home/niklas/repos/anydsl/rodent/src/render/scene.impala /home/niklas/repos/anydsl/rodent/src/render/driver.impala /home/niklas/repos/anydsl/rodent/src/render/mapping_cpu.impala /home/niklas/repos/anydsl/rodent/src/render/mapping_gpu.impala /home/niklas/repos/anydsl/rodent/src/traversal/intersection.impala /home/niklas/repos/anydsl/rodent/src/traversal/stack.impala /home/niklas/repos/anydsl/rodent/src/traversal/mapping_cpu.impala /home/niklas/repos/anydsl/rodent/src/traversal/mapping_gpu.impala /home/niklas/repos/anydsl/rodent/src/main.impala --log-level info --emit-llvm -o /home/niklas/repos/anydsl/rodent/src/./rodent
	cd /home/niklas/repos/anydsl/rodent/src && /usr/bin/python3.9 /home/niklas/repos/anydsl/runtime/post-patcher.py /home/niklas/repos/anydsl/rodent/src/./rodent
	cd /home/niklas/repos/anydsl/rodent/src && /usr/bin/cmake -D_basename=rodent -DLLVM_AS_BIN=/home/niklas/repos/anydsl/llvm_build/bin/llvm-as -P /home/niklas/repos/anydsl/runtime/cmake/check_nvvmir.cmake
	cd /home/niklas/repos/anydsl/rodent/src && /usr/bin/cmake -D_basename=rodent -DSYNTHESIS= -DFPGA_PART= -DSOC= -P /home/niklas/repos/anydsl/runtime/cmake/check_hlssrc.cmake

src/main.impala: testing/light_test.obj
src/main.impala: bin/converter
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/niklas/repos/anydsl/rodent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating main.impala"
	/home/niklas/repos/anydsl/rodent/bin/converter /home/niklas/repos/anydsl/rodent/testing/light_test.obj --max-path-len 64 --samples-per-pixel 4
	/usr/bin/cmake -E rename /home/niklas/repos/anydsl/rodent/main.impala /home/niklas/repos/anydsl/rodent/src/main.impala

# Object files for target rodent
rodent_OBJECTS =

# External object files for target rodent
rodent_EXTERNAL_OBJECTS = \
"/home/niklas/repos/anydsl/rodent/src/rodent.o"

bin/rodent: src/rodent.o
bin/rodent: src/CMakeFiles/rodent.dir/build.make
bin/rodent: lib/libdriver.a
bin/rodent: /home/niklas/repos/anydsl/runtime/build/lib/libruntime.so
bin/rodent: /usr/lib/libpng.so
bin/rodent: /usr/lib/libz.so
bin/rodent: /usr/lib/libjpeg.so
bin/rodent: /usr/lib/libtbb.so
bin/rodent: /usr/lib/libtbbmalloc.so
bin/rodent: /usr/lib/liblz4.so
bin/rodent: /usr/lib/libSDL2main.a
bin/rodent: /usr/lib/libSDL2.so
bin/rodent: src/CMakeFiles/rodent.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/niklas/repos/anydsl/rodent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ../bin/rodent"
	cd /home/niklas/repos/anydsl/rodent/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rodent.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/rodent.dir/build: bin/rodent
.PHONY : src/CMakeFiles/rodent.dir/build

src/CMakeFiles/rodent.dir/clean:
	cd /home/niklas/repos/anydsl/rodent/src && $(CMAKE_COMMAND) -P CMakeFiles/rodent.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/rodent.dir/clean

src/CMakeFiles/rodent.dir/depend: src/main.impala
src/CMakeFiles/rodent.dir/depend: src/rodent.ll
src/CMakeFiles/rodent.dir/depend: src/rodent.o
	cd /home/niklas/repos/anydsl/rodent && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/niklas/repos/anydsl/rodent /home/niklas/repos/anydsl/rodent/src /home/niklas/repos/anydsl/rodent /home/niklas/repos/anydsl/rodent/src /home/niklas/repos/anydsl/rodent/src/CMakeFiles/rodent.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/rodent.dir/depend
