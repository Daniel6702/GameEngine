# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\Microsoft Visual Studio\2022\Community\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build"

# Include any dependencies generated for this target.
include external/AL/CMakeFiles/alcommon.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include external/AL/CMakeFiles/alcommon.dir/compiler_depend.make

# Include the progress variables for this target.
include external/AL/CMakeFiles/alcommon.dir/progress.make

# Include the compile flags for this target's objects.
include external/AL/CMakeFiles/alcommon.dir/flags.make

external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/alcomplex.cpp
external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.obj -MF CMakeFiles\alcommon.dir\common\alcomplex.cpp.obj.d -o CMakeFiles\alcommon.dir\common\alcomplex.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alcomplex.cpp"

external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/alcomplex.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alcomplex.cpp" > CMakeFiles\alcommon.dir\common\alcomplex.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/alcomplex.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alcomplex.cpp" -o CMakeFiles\alcommon.dir\common\alcomplex.cpp.s

external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/alsem.cpp
external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.obj -MF CMakeFiles\alcommon.dir\common\alsem.cpp.obj.d -o CMakeFiles\alcommon.dir\common\alsem.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alsem.cpp"

external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/alsem.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alsem.cpp" > CMakeFiles\alcommon.dir\common\alsem.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/alsem.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alsem.cpp" -o CMakeFiles\alcommon.dir\common\alsem.cpp.s

external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/alstring.cpp
external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.obj -MF CMakeFiles\alcommon.dir\common\alstring.cpp.obj.d -o CMakeFiles\alcommon.dir\common\alstring.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alstring.cpp"

external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/alstring.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alstring.cpp" > CMakeFiles\alcommon.dir\common\alstring.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/alstring.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\alstring.cpp" -o CMakeFiles\alcommon.dir\common\alstring.cpp.s

external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/althrd_setname.cpp
external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.obj -MF CMakeFiles\alcommon.dir\common\althrd_setname.cpp.obj.d -o CMakeFiles\alcommon.dir\common\althrd_setname.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\althrd_setname.cpp"

external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/althrd_setname.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\althrd_setname.cpp" > CMakeFiles\alcommon.dir\common\althrd_setname.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/althrd_setname.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\althrd_setname.cpp" -o CMakeFiles\alcommon.dir\common\althrd_setname.cpp.s

external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/dynload.cpp
external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.obj -MF CMakeFiles\alcommon.dir\common\dynload.cpp.obj.d -o CMakeFiles\alcommon.dir\common\dynload.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\dynload.cpp"

external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/dynload.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\dynload.cpp" > CMakeFiles\alcommon.dir\common\dynload.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/dynload.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\dynload.cpp" -o CMakeFiles\alcommon.dir\common\dynload.cpp.s

external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/pffft.cpp
external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.obj -MF CMakeFiles\alcommon.dir\common\pffft.cpp.obj.d -o CMakeFiles\alcommon.dir\common\pffft.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\pffft.cpp"

external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/pffft.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\pffft.cpp" > CMakeFiles\alcommon.dir\common\pffft.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/pffft.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\pffft.cpp" -o CMakeFiles\alcommon.dir\common\pffft.cpp.s

external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/polyphase_resampler.cpp
external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.obj -MF CMakeFiles\alcommon.dir\common\polyphase_resampler.cpp.obj.d -o CMakeFiles\alcommon.dir\common\polyphase_resampler.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\polyphase_resampler.cpp"

external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\polyphase_resampler.cpp" > CMakeFiles\alcommon.dir\common\polyphase_resampler.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\polyphase_resampler.cpp" -o CMakeFiles\alcommon.dir\common\polyphase_resampler.cpp.s

external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/ringbuffer.cpp
external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.obj -MF CMakeFiles\alcommon.dir\common\ringbuffer.cpp.obj.d -o CMakeFiles\alcommon.dir\common\ringbuffer.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\ringbuffer.cpp"

external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/ringbuffer.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\ringbuffer.cpp" > CMakeFiles\alcommon.dir\common\ringbuffer.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/ringbuffer.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\ringbuffer.cpp" -o CMakeFiles\alcommon.dir\common\ringbuffer.cpp.s

external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.obj: external/AL/CMakeFiles/alcommon.dir/flags.make
external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.obj: external/AL/CMakeFiles/alcommon.dir/includes_CXX.rsp
external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.obj: C:/Users/peder/OneDrive\ -\ Aarhus\ universitet/Projects/GameEngine/GameEngine/external/AL/common/strutils.cpp
external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.obj: external/AL/CMakeFiles/alcommon.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.obj"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.obj -MF CMakeFiles\alcommon.dir\common\strutils.cpp.obj.d -o CMakeFiles\alcommon.dir\common\strutils.cpp.obj -c "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\strutils.cpp"

external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/alcommon.dir/common/strutils.cpp.i"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\strutils.cpp" > CMakeFiles\alcommon.dir\common\strutils.cpp.i

external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/alcommon.dir/common/strutils.cpp.s"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL\common\strutils.cpp" -o CMakeFiles\alcommon.dir\common\strutils.cpp.s

# Object files for target alcommon
alcommon_OBJECTS = \
"CMakeFiles/alcommon.dir/common/alcomplex.cpp.obj" \
"CMakeFiles/alcommon.dir/common/alsem.cpp.obj" \
"CMakeFiles/alcommon.dir/common/alstring.cpp.obj" \
"CMakeFiles/alcommon.dir/common/althrd_setname.cpp.obj" \
"CMakeFiles/alcommon.dir/common/dynload.cpp.obj" \
"CMakeFiles/alcommon.dir/common/pffft.cpp.obj" \
"CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.obj" \
"CMakeFiles/alcommon.dir/common/ringbuffer.cpp.obj" \
"CMakeFiles/alcommon.dir/common/strutils.cpp.obj"

# External object files for target alcommon
alcommon_EXTERNAL_OBJECTS =

external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/alcomplex.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/alsem.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/alstring.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/althrd_setname.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/dynload.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/pffft.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/polyphase_resampler.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/ringbuffer.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/common/strutils.cpp.obj
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/build.make
external/AL/libalcommon.a: external/AL/CMakeFiles/alcommon.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library libalcommon.a"
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && $(CMAKE_COMMAND) -P CMakeFiles\alcommon.dir\cmake_clean_target.cmake
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\alcommon.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
external/AL/CMakeFiles/alcommon.dir/build: external/AL/libalcommon.a
.PHONY : external/AL/CMakeFiles/alcommon.dir/build

external/AL/CMakeFiles/alcommon.dir/clean:
	cd /d C:\Users\peder\ONEDRI~1\Projects\GAMEEN~1\GAMEEN~1\build\external\AL && $(CMAKE_COMMAND) -P CMakeFiles\alcommon.dir\cmake_clean.cmake
.PHONY : external/AL/CMakeFiles/alcommon.dir/clean

external/AL/CMakeFiles/alcommon.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\external\AL" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\external\AL" "C:\Users\peder\OneDrive - Aarhus universitet\Projects\GameEngine\GameEngine\build\external\AL\CMakeFiles\alcommon.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : external/AL/CMakeFiles/alcommon.dir/depend
