# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/shrk/CLionProjects/Splitter

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/shrk/CLionProjects/Splitter/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Splitter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Splitter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Splitter.dir/flags.make

CMakeFiles/Splitter.dir/main.c.o: CMakeFiles/Splitter.dir/flags.make
CMakeFiles/Splitter.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shrk/CLionProjects/Splitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Splitter.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Splitter.dir/main.c.o   -c /Users/shrk/CLionProjects/Splitter/main.c

CMakeFiles/Splitter.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Splitter.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/shrk/CLionProjects/Splitter/main.c > CMakeFiles/Splitter.dir/main.c.i

CMakeFiles/Splitter.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Splitter.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/shrk/CLionProjects/Splitter/main.c -o CMakeFiles/Splitter.dir/main.c.s

CMakeFiles/Splitter.dir/Domain.c.o: CMakeFiles/Splitter.dir/flags.make
CMakeFiles/Splitter.dir/Domain.c.o: ../Domain.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/shrk/CLionProjects/Splitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Splitter.dir/Domain.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Splitter.dir/Domain.c.o   -c /Users/shrk/CLionProjects/Splitter/Domain.c

CMakeFiles/Splitter.dir/Domain.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Splitter.dir/Domain.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/shrk/CLionProjects/Splitter/Domain.c > CMakeFiles/Splitter.dir/Domain.c.i

CMakeFiles/Splitter.dir/Domain.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Splitter.dir/Domain.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/shrk/CLionProjects/Splitter/Domain.c -o CMakeFiles/Splitter.dir/Domain.c.s

# Object files for target Splitter
Splitter_OBJECTS = \
"CMakeFiles/Splitter.dir/main.c.o" \
"CMakeFiles/Splitter.dir/Domain.c.o"

# External object files for target Splitter
Splitter_EXTERNAL_OBJECTS =

Splitter: CMakeFiles/Splitter.dir/main.c.o
Splitter: CMakeFiles/Splitter.dir/Domain.c.o
Splitter: CMakeFiles/Splitter.dir/build.make
Splitter: CMakeFiles/Splitter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/shrk/CLionProjects/Splitter/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable Splitter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Splitter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Splitter.dir/build: Splitter

.PHONY : CMakeFiles/Splitter.dir/build

CMakeFiles/Splitter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Splitter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Splitter.dir/clean

CMakeFiles/Splitter.dir/depend:
	cd /Users/shrk/CLionProjects/Splitter/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/shrk/CLionProjects/Splitter /Users/shrk/CLionProjects/Splitter /Users/shrk/CLionProjects/Splitter/cmake-build-debug /Users/shrk/CLionProjects/Splitter/cmake-build-debug /Users/shrk/CLionProjects/Splitter/cmake-build-debug/CMakeFiles/Splitter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Splitter.dir/depend
