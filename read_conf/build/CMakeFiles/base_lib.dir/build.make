# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pingcoool/read_conf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pingcoool/read_conf/build

# Include any dependencies generated for this target.
include CMakeFiles/base_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/base_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/base_lib.dir/flags.make

CMakeFiles/base_lib.dir/ini.c.o: CMakeFiles/base_lib.dir/flags.make
CMakeFiles/base_lib.dir/ini.c.o: ../ini.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pingcoool/read_conf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/base_lib.dir/ini.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/base_lib.dir/ini.c.o   -c /home/pingcoool/read_conf/ini.c

CMakeFiles/base_lib.dir/ini.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/base_lib.dir/ini.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/pingcoool/read_conf/ini.c > CMakeFiles/base_lib.dir/ini.c.i

CMakeFiles/base_lib.dir/ini.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/base_lib.dir/ini.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/pingcoool/read_conf/ini.c -o CMakeFiles/base_lib.dir/ini.c.s

CMakeFiles/base_lib.dir/ini.c.o.requires:

.PHONY : CMakeFiles/base_lib.dir/ini.c.o.requires

CMakeFiles/base_lib.dir/ini.c.o.provides: CMakeFiles/base_lib.dir/ini.c.o.requires
	$(MAKE) -f CMakeFiles/base_lib.dir/build.make CMakeFiles/base_lib.dir/ini.c.o.provides.build
.PHONY : CMakeFiles/base_lib.dir/ini.c.o.provides

CMakeFiles/base_lib.dir/ini.c.o.provides.build: CMakeFiles/base_lib.dir/ini.c.o


# Object files for target base_lib
base_lib_OBJECTS = \
"CMakeFiles/base_lib.dir/ini.c.o"

# External object files for target base_lib
base_lib_EXTERNAL_OBJECTS =

libbase_lib.a: CMakeFiles/base_lib.dir/ini.c.o
libbase_lib.a: CMakeFiles/base_lib.dir/build.make
libbase_lib.a: CMakeFiles/base_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pingcoool/read_conf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libbase_lib.a"
	$(CMAKE_COMMAND) -P CMakeFiles/base_lib.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/base_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/base_lib.dir/build: libbase_lib.a

.PHONY : CMakeFiles/base_lib.dir/build

CMakeFiles/base_lib.dir/requires: CMakeFiles/base_lib.dir/ini.c.o.requires

.PHONY : CMakeFiles/base_lib.dir/requires

CMakeFiles/base_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/base_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/base_lib.dir/clean

CMakeFiles/base_lib.dir/depend:
	cd /home/pingcoool/read_conf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pingcoool/read_conf /home/pingcoool/read_conf /home/pingcoool/read_conf/build /home/pingcoool/read_conf/build /home/pingcoool/read_conf/build/CMakeFiles/base_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/base_lib.dir/depend
