# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/pi/Documents/OS-Mandelbrot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Documents/OS-Mandelbrot

# Include any dependencies generated for this target.
include CMakeFiles/Mandelbrot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Mandelbrot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Mandelbrot.dir/flags.make

CMakeFiles/Mandelbrot.dir/Main.cpp.o: CMakeFiles/Mandelbrot.dir/flags.make
CMakeFiles/Mandelbrot.dir/Main.cpp.o: Main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/Documents/OS-Mandelbrot/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Mandelbrot.dir/Main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Mandelbrot.dir/Main.cpp.o -c /home/pi/Documents/OS-Mandelbrot/Main.cpp

CMakeFiles/Mandelbrot.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mandelbrot.dir/Main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/Documents/OS-Mandelbrot/Main.cpp > CMakeFiles/Mandelbrot.dir/Main.cpp.i

CMakeFiles/Mandelbrot.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mandelbrot.dir/Main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/Documents/OS-Mandelbrot/Main.cpp -o CMakeFiles/Mandelbrot.dir/Main.cpp.s

CMakeFiles/Mandelbrot.dir/Main.cpp.o.requires:
.PHONY : CMakeFiles/Mandelbrot.dir/Main.cpp.o.requires

CMakeFiles/Mandelbrot.dir/Main.cpp.o.provides: CMakeFiles/Mandelbrot.dir/Main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Mandelbrot.dir/build.make CMakeFiles/Mandelbrot.dir/Main.cpp.o.provides.build
.PHONY : CMakeFiles/Mandelbrot.dir/Main.cpp.o.provides

CMakeFiles/Mandelbrot.dir/Main.cpp.o.provides.build: CMakeFiles/Mandelbrot.dir/Main.cpp.o

# Object files for target Mandelbrot
Mandelbrot_OBJECTS = \
"CMakeFiles/Mandelbrot.dir/Main.cpp.o"

# External object files for target Mandelbrot
Mandelbrot_EXTERNAL_OBJECTS =

Mandelbrot: CMakeFiles/Mandelbrot.dir/Main.cpp.o
Mandelbrot: CMakeFiles/Mandelbrot.dir/build.make
Mandelbrot: CMakeFiles/Mandelbrot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Mandelbrot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Mandelbrot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Mandelbrot.dir/build: Mandelbrot
.PHONY : CMakeFiles/Mandelbrot.dir/build

CMakeFiles/Mandelbrot.dir/requires: CMakeFiles/Mandelbrot.dir/Main.cpp.o.requires
.PHONY : CMakeFiles/Mandelbrot.dir/requires

CMakeFiles/Mandelbrot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Mandelbrot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Mandelbrot.dir/clean

CMakeFiles/Mandelbrot.dir/depend:
	cd /home/pi/Documents/OS-Mandelbrot && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Documents/OS-Mandelbrot /home/pi/Documents/OS-Mandelbrot /home/pi/Documents/OS-Mandelbrot /home/pi/Documents/OS-Mandelbrot /home/pi/Documents/OS-Mandelbrot/CMakeFiles/Mandelbrot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Mandelbrot.dir/depend
