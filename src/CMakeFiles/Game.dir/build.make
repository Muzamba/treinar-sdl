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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src"

# Include any dependencies generated for this target.
include CMakeFiles/Game.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Game.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Game.dir/flags.make

CMakeFiles/Game.dir/Game.cpp.o: CMakeFiles/Game.dir/flags.make
CMakeFiles/Game.dir/Game.cpp.o: Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Game.dir/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Game.dir/Game.cpp.o -c "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src/Game.cpp"

CMakeFiles/Game.dir/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Game.dir/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src/Game.cpp" > CMakeFiles/Game.dir/Game.cpp.i

CMakeFiles/Game.dir/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Game.dir/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src/Game.cpp" -o CMakeFiles/Game.dir/Game.cpp.s

# Object files for target Game
Game_OBJECTS = \
"CMakeFiles/Game.dir/Game.cpp.o"

# External object files for target Game
Game_EXTERNAL_OBJECTS =

libGame.a: CMakeFiles/Game.dir/Game.cpp.o
libGame.a: CMakeFiles/Game.dir/build.make
libGame.a: CMakeFiles/Game.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libGame.a"
	$(CMAKE_COMMAND) -P CMakeFiles/Game.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Game.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Game.dir/build: libGame.a

.PHONY : CMakeFiles/Game.dir/build

CMakeFiles/Game.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Game.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Game.dir/clean

CMakeFiles/Game.dir/depend:
	cd "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src" "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src" "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src" "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src" "/home/ariel/Documentos/3sem/mp/tpFinal/treinar sdl/src/CMakeFiles/Game.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Game.dir/depend
