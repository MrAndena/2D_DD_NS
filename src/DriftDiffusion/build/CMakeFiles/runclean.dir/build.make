# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/mox/mk/toolchains/gcc-glibc/11.2.0/base/bin/cmake

# The command to remove a file.
RM = /opt/mox/mk/toolchains/gcc-glibc/11.2.0/base/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion/build

# Utility rule file for runclean.

# Include any custom commands dependencies for this target.
include CMakeFiles/runclean.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/runclean.dir/progress.make

CMakeFiles/runclean:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "runclean invoked"
	/opt/mox/mk/toolchains/gcc-glibc/11.2.0/base/bin/cmake -E remove *.log *.gmv *.gnuplot *.gpl *.eps *.pov *.vtk *.ucd *.d2 *.vtu *.pvtu

runclean: CMakeFiles/runclean
runclean: CMakeFiles/runclean.dir/build.make
.PHONY : runclean

# Rule to build all files generated by this target.
CMakeFiles/runclean.dir/build: runclean
.PHONY : CMakeFiles/runclean.dir/build

CMakeFiles/runclean.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/runclean.dir/cmake_clean.cmake
.PHONY : CMakeFiles/runclean.dir/clean

CMakeFiles/runclean.dir/depend:
	cd /home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion /home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion /home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion/build /home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion/build /home/giacomo/Documenti/IPROP/2D_DD_NS/src/DriftDiffusion/build/CMakeFiles/runclean.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/runclean.dir/depend

