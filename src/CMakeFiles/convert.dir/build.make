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

# Utility rule file for convert.

# Include any custom commands dependencies for this target.
include src/CMakeFiles/convert.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/convert.dir/progress.make

src/CMakeFiles/convert: src/main.impala

src/main.impala: testing/light_test.obj
src/main.impala: bin/converter
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/niklas/repos/anydsl/rodent/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating main.impala"
	/home/niklas/repos/anydsl/rodent/bin/converter /home/niklas/repos/anydsl/rodent/testing/light_test.obj --max-path-len 64 --samples-per-pixel 4
	/usr/bin/cmake -E rename /home/niklas/repos/anydsl/rodent/main.impala /home/niklas/repos/anydsl/rodent/src/main.impala

convert: src/CMakeFiles/convert
convert: src/main.impala
convert: src/CMakeFiles/convert.dir/build.make
.PHONY : convert

# Rule to build all files generated by this target.
src/CMakeFiles/convert.dir/build: convert
.PHONY : src/CMakeFiles/convert.dir/build

src/CMakeFiles/convert.dir/clean:
	cd /home/niklas/repos/anydsl/rodent/src && $(CMAKE_COMMAND) -P CMakeFiles/convert.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/convert.dir/clean

src/CMakeFiles/convert.dir/depend:
	cd /home/niklas/repos/anydsl/rodent && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/niklas/repos/anydsl/rodent /home/niklas/repos/anydsl/rodent/src /home/niklas/repos/anydsl/rodent /home/niklas/repos/anydsl/rodent/src /home/niklas/repos/anydsl/rodent/src/CMakeFiles/convert.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/convert.dir/depend

