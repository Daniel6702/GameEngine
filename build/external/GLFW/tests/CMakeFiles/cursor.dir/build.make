# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.25

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\build"

# Include any dependencies generated for this target.
include external/GLFW/tests/CMakeFiles/cursor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/GLFW/tests/CMakeFiles/cursor.dir/compiler_depend.make

# Include the progress variables for this target.
include external/GLFW/tests/CMakeFiles/cursor.dir/progress.make

# Include the compile flags for this target's objects.
include external/GLFW/tests/CMakeFiles/cursor.dir/flags.make

external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.obj: external/GLFW/tests/CMakeFiles/cursor.dir/flags.make
external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.obj: external/GLFW/tests/CMakeFiles/cursor.dir/includes_C.rsp
external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/Simple\ Game\ engine/external/GLFW/tests/cursor.c
external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.obj: external/GLFW/tests/CMakeFiles/cursor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.obj"
	cd /d C:\Users\peder\ONEDRI~2\Projects\SIMPLE~1\build\external\GLFW\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.obj -MF CMakeFiles\cursor.dir\cursor.c.obj.d -o CMakeFiles\cursor.dir\cursor.c.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\external\GLFW\tests\cursor.c"

external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/cursor.c.i"
	cd /d C:\Users\peder\ONEDRI~2\Projects\SIMPLE~1\build\external\GLFW\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\external\GLFW\tests\cursor.c" > CMakeFiles\cursor.dir\cursor.c.i

external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/cursor.c.s"
	cd /d C:\Users\peder\ONEDRI~2\Projects\SIMPLE~1\build\external\GLFW\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\external\GLFW\tests\cursor.c" -o CMakeFiles\cursor.dir\cursor.c.s

external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.obj: external/GLFW/tests/CMakeFiles/cursor.dir/flags.make
external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.obj: external/GLFW/tests/CMakeFiles/cursor.dir/includes_C.rsp
external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/Simple\ Game\ engine/external/GLFW/deps/glad_gl.c
external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.obj: external/GLFW/tests/CMakeFiles/cursor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.obj"
	cd /d C:\Users\peder\ONEDRI~2\Projects\SIMPLE~1\build\external\GLFW\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.obj -MF CMakeFiles\cursor.dir\__\deps\glad_gl.c.obj.d -o CMakeFiles\cursor.dir\__\deps\glad_gl.c.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\external\GLFW\deps\glad_gl.c"

external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cursor.dir/__/deps/glad_gl.c.i"
	cd /d C:\Users\peder\ONEDRI~2\Projects\SIMPLE~1\build\external\GLFW\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\external\GLFW\deps\glad_gl.c" > CMakeFiles\cursor.dir\__\deps\glad_gl.c.i

external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cursor.dir/__/deps/glad_gl.c.s"
	cd /d C:\Users\peder\ONEDRI~2\Projects\SIMPLE~1\build\external\GLFW\tests && C:\MinGW\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\external\GLFW\deps\glad_gl.c" -o CMakeFiles\cursor.dir\__\deps\glad_gl.c.s

# Object files for target cursor
cursor_OBJECTS = \
"CMakeFiles/cursor.dir/cursor.c.obj" \
"CMakeFiles/cursor.dir/__/deps/glad_gl.c.obj"

# External object files for target cursor
cursor_EXTERNAL_OBJECTS =

external/GLFW/tests/cursor.exe: external/GLFW/tests/CMakeFiles/cursor.dir/cursor.c.obj
external/GLFW/tests/cursor.exe: external/GLFW/tests/CMakeFiles/cursor.dir/__/deps/glad_gl.c.obj
external/GLFW/tests/cursor.exe: external/GLFW/tests/CMakeFiles/cursor.dir/build.make
external/GLFW/tests/cursor.exe: external/GLFW/src/libglfw3.a
external/GLFW/tests/cursor.exe: external/GLFW/tests/CMakeFiles/cursor.dir/linkLibs.rsp
external/GLFW/tests/cursor.exe: external/GLFW/tests/CMakeFiles/cursor.dir/objects1
external/GLFW/tests/cursor.exe: external/GLFW/tests/CMakeFiles/cursor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable cursor.exe"
	cd /d C:\Users\peder\ONEDRI~2\Projects\SIMPLE~1\build\external\GLFW\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cursor.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/GLFW/tests/CMakeFiles/cursor.dir/build: external/GLFW/tests/cursor.exe
.PHONY : external/GLFW/tests/CMakeFiles/cursor.dir/build

external/GLFW/tests/CMakeFiles/cursor.dir/clean:
	cd /d C:\Users\peder\ONEDRI~2\Projects\SIMPLE~1\build\external\GLFW\tests && $(CMAKE_COMMAND) -P CMakeFiles\cursor.dir\cmake_clean.cmake
.PHONY : external/GLFW/tests/CMakeFiles/cursor.dir/clean

external/GLFW/tests/CMakeFiles/cursor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\external\GLFW\tests" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\build" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\build\external\GLFW\tests" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\Simple Game engine\build\external\GLFW\tests\CMakeFiles\cursor.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : external/GLFW/tests/CMakeFiles/cursor.dir/depend

