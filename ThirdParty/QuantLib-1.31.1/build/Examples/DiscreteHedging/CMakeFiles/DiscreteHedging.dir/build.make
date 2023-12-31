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
include Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/compiler_depend.make

# Include the progress variables for this target.
include Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/progress.make

# Include the compile flags for this target's objects.
include Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/flags.make

Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o: Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/flags.make
Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o: /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/DiscreteHedging/DiscreteHedging.cpp
Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o: Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/DiscreteHedging && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o -MF CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o.d -o CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o -c /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/DiscreteHedging/DiscreteHedging.cpp

Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.i"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/DiscreteHedging && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/DiscreteHedging/DiscreteHedging.cpp > CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.i

Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.s"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/DiscreteHedging && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/DiscreteHedging/DiscreteHedging.cpp -o CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.s

# Object files for target DiscreteHedging
DiscreteHedging_OBJECTS = \
"CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o"

# External object files for target DiscreteHedging
DiscreteHedging_EXTERNAL_OBJECTS =

Examples/DiscreteHedging/DiscreteHedging: Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DiscreteHedging.cpp.o
Examples/DiscreteHedging/DiscreteHedging: Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/build.make
Examples/DiscreteHedging/DiscreteHedging: ql/libQuantLib.1.31.1.dylib
Examples/DiscreteHedging/DiscreteHedging: Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DiscreteHedging"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/DiscreteHedging && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DiscreteHedging.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/build: Examples/DiscreteHedging/DiscreteHedging
.PHONY : Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/build

Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/clean:
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/DiscreteHedging && $(CMAKE_COMMAND) -P CMakeFiles/DiscreteHedging.dir/cmake_clean.cmake
.PHONY : Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/clean

Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/depend:
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1 /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/DiscreteHedging /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/DiscreteHedging /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Examples/DiscreteHedging/CMakeFiles/DiscreteHedging.dir/depend

