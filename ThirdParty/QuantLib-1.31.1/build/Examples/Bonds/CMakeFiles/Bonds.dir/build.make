# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.27.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.27.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build

# Include any dependencies generated for this target.
include Examples/Bonds/CMakeFiles/Bonds.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Examples/Bonds/CMakeFiles/Bonds.dir/compiler_depend.make

# Include the progress variables for this target.
include Examples/Bonds/CMakeFiles/Bonds.dir/progress.make

# Include the compile flags for this target's objects.
include Examples/Bonds/CMakeFiles/Bonds.dir/flags.make

Examples/Bonds/CMakeFiles/Bonds.dir/Bonds.cpp.o: Examples/Bonds/CMakeFiles/Bonds.dir/flags.make
Examples/Bonds/CMakeFiles/Bonds.dir/Bonds.cpp.o: /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/Bonds/Bonds.cpp
Examples/Bonds/CMakeFiles/Bonds.dir/Bonds.cpp.o: Examples/Bonds/CMakeFiles/Bonds.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Examples/Bonds/CMakeFiles/Bonds.dir/Bonds.cpp.o"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Bonds && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Examples/Bonds/CMakeFiles/Bonds.dir/Bonds.cpp.o -MF CMakeFiles/Bonds.dir/Bonds.cpp.o.d -o CMakeFiles/Bonds.dir/Bonds.cpp.o -c /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/Bonds/Bonds.cpp

Examples/Bonds/CMakeFiles/Bonds.dir/Bonds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/Bonds.dir/Bonds.cpp.i"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Bonds && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/Bonds/Bonds.cpp > CMakeFiles/Bonds.dir/Bonds.cpp.i

Examples/Bonds/CMakeFiles/Bonds.dir/Bonds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/Bonds.dir/Bonds.cpp.s"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Bonds && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/Bonds/Bonds.cpp -o CMakeFiles/Bonds.dir/Bonds.cpp.s

# Object files for target Bonds
Bonds_OBJECTS = \
"CMakeFiles/Bonds.dir/Bonds.cpp.o"

# External object files for target Bonds
Bonds_EXTERNAL_OBJECTS =

Examples/Bonds/Bonds: Examples/Bonds/CMakeFiles/Bonds.dir/Bonds.cpp.o
Examples/Bonds/Bonds: Examples/Bonds/CMakeFiles/Bonds.dir/build.make
Examples/Bonds/Bonds: ql/libQuantLib.1.31.1.dylib
Examples/Bonds/Bonds: Examples/Bonds/CMakeFiles/Bonds.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Bonds"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Bonds && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Bonds.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Examples/Bonds/CMakeFiles/Bonds.dir/build: Examples/Bonds/Bonds
.PHONY : Examples/Bonds/CMakeFiles/Bonds.dir/build

Examples/Bonds/CMakeFiles/Bonds.dir/clean:
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Bonds && $(CMAKE_COMMAND) -P CMakeFiles/Bonds.dir/cmake_clean.cmake
.PHONY : Examples/Bonds/CMakeFiles/Bonds.dir/clean

Examples/Bonds/CMakeFiles/Bonds.dir/depend:
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1 /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/Bonds /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Bonds /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Bonds/CMakeFiles/Bonds.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Examples/Bonds/CMakeFiles/Bonds.dir/depend

