# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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

# Produce verbose output by default.
VERBOSE = 1

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
CMAKE_COMMAND = D:\apps\Cmake\bin\cmake.exe

# The command to remove a file.
RM = D:\apps\Cmake\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\cpp_works\PNP_WORK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\cpp_works\PNP_WORK\build

# Include any dependencies generated for this target.
include CMakeFiles/aaaa.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/aaaa.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/aaaa.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/aaaa.dir/flags.make

CMakeFiles/aaaa.dir/codegen:
.PHONY : CMakeFiles/aaaa.dir/codegen

CMakeFiles/aaaa.dir/src/main.cpp.obj: CMakeFiles/aaaa.dir/flags.make
CMakeFiles/aaaa.dir/src/main.cpp.obj: CMakeFiles/aaaa.dir/includes_CXX.rsp
CMakeFiles/aaaa.dir/src/main.cpp.obj: D:/cpp_works/PNP_WORK/src/main.cpp
CMakeFiles/aaaa.dir/src/main.cpp.obj: CMakeFiles/aaaa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\cpp_works\PNP_WORK\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/aaaa.dir/src/main.cpp.obj"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aaaa.dir/src/main.cpp.obj -MF CMakeFiles\aaaa.dir\src\main.cpp.obj.d -o CMakeFiles\aaaa.dir\src\main.cpp.obj -c D:\cpp_works\PNP_WORK\src\main.cpp

CMakeFiles/aaaa.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/aaaa.dir/src/main.cpp.i"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\cpp_works\PNP_WORK\src\main.cpp > CMakeFiles\aaaa.dir\src\main.cpp.i

CMakeFiles/aaaa.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/aaaa.dir/src/main.cpp.s"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\cpp_works\PNP_WORK\src\main.cpp -o CMakeFiles\aaaa.dir\src\main.cpp.s

CMakeFiles/aaaa.dir/src/camera.cpp.obj: CMakeFiles/aaaa.dir/flags.make
CMakeFiles/aaaa.dir/src/camera.cpp.obj: CMakeFiles/aaaa.dir/includes_CXX.rsp
CMakeFiles/aaaa.dir/src/camera.cpp.obj: D:/cpp_works/PNP_WORK/src/camera.cpp
CMakeFiles/aaaa.dir/src/camera.cpp.obj: CMakeFiles/aaaa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\cpp_works\PNP_WORK\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/aaaa.dir/src/camera.cpp.obj"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aaaa.dir/src/camera.cpp.obj -MF CMakeFiles\aaaa.dir\src\camera.cpp.obj.d -o CMakeFiles\aaaa.dir\src\camera.cpp.obj -c D:\cpp_works\PNP_WORK\src\camera.cpp

CMakeFiles/aaaa.dir/src/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/aaaa.dir/src/camera.cpp.i"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\cpp_works\PNP_WORK\src\camera.cpp > CMakeFiles\aaaa.dir\src\camera.cpp.i

CMakeFiles/aaaa.dir/src/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/aaaa.dir/src/camera.cpp.s"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\cpp_works\PNP_WORK\src\camera.cpp -o CMakeFiles\aaaa.dir\src\camera.cpp.s

CMakeFiles/aaaa.dir/src/do_match.cpp.obj: CMakeFiles/aaaa.dir/flags.make
CMakeFiles/aaaa.dir/src/do_match.cpp.obj: CMakeFiles/aaaa.dir/includes_CXX.rsp
CMakeFiles/aaaa.dir/src/do_match.cpp.obj: D:/cpp_works/PNP_WORK/src/do_match.cpp
CMakeFiles/aaaa.dir/src/do_match.cpp.obj: CMakeFiles/aaaa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\cpp_works\PNP_WORK\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/aaaa.dir/src/do_match.cpp.obj"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aaaa.dir/src/do_match.cpp.obj -MF CMakeFiles\aaaa.dir\src\do_match.cpp.obj.d -o CMakeFiles\aaaa.dir\src\do_match.cpp.obj -c D:\cpp_works\PNP_WORK\src\do_match.cpp

CMakeFiles/aaaa.dir/src/do_match.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/aaaa.dir/src/do_match.cpp.i"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\cpp_works\PNP_WORK\src\do_match.cpp > CMakeFiles\aaaa.dir\src\do_match.cpp.i

CMakeFiles/aaaa.dir/src/do_match.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/aaaa.dir/src/do_match.cpp.s"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\cpp_works\PNP_WORK\src\do_match.cpp -o CMakeFiles\aaaa.dir\src\do_match.cpp.s

CMakeFiles/aaaa.dir/src/solve_pnp.cpp.obj: CMakeFiles/aaaa.dir/flags.make
CMakeFiles/aaaa.dir/src/solve_pnp.cpp.obj: CMakeFiles/aaaa.dir/includes_CXX.rsp
CMakeFiles/aaaa.dir/src/solve_pnp.cpp.obj: D:/cpp_works/PNP_WORK/src/solve_pnp.cpp
CMakeFiles/aaaa.dir/src/solve_pnp.cpp.obj: CMakeFiles/aaaa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\cpp_works\PNP_WORK\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/aaaa.dir/src/solve_pnp.cpp.obj"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aaaa.dir/src/solve_pnp.cpp.obj -MF CMakeFiles\aaaa.dir\src\solve_pnp.cpp.obj.d -o CMakeFiles\aaaa.dir\src\solve_pnp.cpp.obj -c D:\cpp_works\PNP_WORK\src\solve_pnp.cpp

CMakeFiles/aaaa.dir/src/solve_pnp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/aaaa.dir/src/solve_pnp.cpp.i"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\cpp_works\PNP_WORK\src\solve_pnp.cpp > CMakeFiles\aaaa.dir\src\solve_pnp.cpp.i

CMakeFiles/aaaa.dir/src/solve_pnp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/aaaa.dir/src/solve_pnp.cpp.s"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\cpp_works\PNP_WORK\src\solve_pnp.cpp -o CMakeFiles\aaaa.dir\src\solve_pnp.cpp.s

CMakeFiles/aaaa.dir/src/warp.cpp.obj: CMakeFiles/aaaa.dir/flags.make
CMakeFiles/aaaa.dir/src/warp.cpp.obj: CMakeFiles/aaaa.dir/includes_CXX.rsp
CMakeFiles/aaaa.dir/src/warp.cpp.obj: D:/cpp_works/PNP_WORK/src/warp.cpp
CMakeFiles/aaaa.dir/src/warp.cpp.obj: CMakeFiles/aaaa.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\cpp_works\PNP_WORK\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/aaaa.dir/src/warp.cpp.obj"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/aaaa.dir/src/warp.cpp.obj -MF CMakeFiles\aaaa.dir\src\warp.cpp.obj.d -o CMakeFiles\aaaa.dir\src\warp.cpp.obj -c D:\cpp_works\PNP_WORK\src\warp.cpp

CMakeFiles/aaaa.dir/src/warp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/aaaa.dir/src/warp.cpp.i"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\cpp_works\PNP_WORK\src\warp.cpp > CMakeFiles\aaaa.dir\src\warp.cpp.i

CMakeFiles/aaaa.dir/src/warp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/aaaa.dir/src/warp.cpp.s"
	D:\apps\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\cpp_works\PNP_WORK\src\warp.cpp -o CMakeFiles\aaaa.dir\src\warp.cpp.s

# Object files for target aaaa
aaaa_OBJECTS = \
"CMakeFiles/aaaa.dir/src/main.cpp.obj" \
"CMakeFiles/aaaa.dir/src/camera.cpp.obj" \
"CMakeFiles/aaaa.dir/src/do_match.cpp.obj" \
"CMakeFiles/aaaa.dir/src/solve_pnp.cpp.obj" \
"CMakeFiles/aaaa.dir/src/warp.cpp.obj"

# External object files for target aaaa
aaaa_EXTERNAL_OBJECTS =

aaaa.exe: CMakeFiles/aaaa.dir/src/main.cpp.obj
aaaa.exe: CMakeFiles/aaaa.dir/src/camera.cpp.obj
aaaa.exe: CMakeFiles/aaaa.dir/src/do_match.cpp.obj
aaaa.exe: CMakeFiles/aaaa.dir/src/solve_pnp.cpp.obj
aaaa.exe: CMakeFiles/aaaa.dir/src/warp.cpp.obj
aaaa.exe: CMakeFiles/aaaa.dir/build.make
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_highgui4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_ml4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_objdetect4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_photo4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_stitching4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_video4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_videoio4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_imgcodecs4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_calib3d4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_dnn4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_features2d4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_flann4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_imgproc4100.dll.a
aaaa.exe: D:/Open_CV/opencv/build/x64/MinGW/lib/libopencv_core4100.dll.a
aaaa.exe: CMakeFiles/aaaa.dir/linkLibs.rsp
aaaa.exe: CMakeFiles/aaaa.dir/objects1.rsp
aaaa.exe: CMakeFiles/aaaa.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\cpp_works\PNP_WORK\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable aaaa.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\aaaa.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/aaaa.dir/build: aaaa.exe
.PHONY : CMakeFiles/aaaa.dir/build

CMakeFiles/aaaa.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\aaaa.dir\cmake_clean.cmake
.PHONY : CMakeFiles/aaaa.dir/clean

CMakeFiles/aaaa.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\cpp_works\PNP_WORK D:\cpp_works\PNP_WORK D:\cpp_works\PNP_WORK\build D:\cpp_works\PNP_WORK\build D:\cpp_works\PNP_WORK\build\CMakeFiles\aaaa.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/aaaa.dir/depend

