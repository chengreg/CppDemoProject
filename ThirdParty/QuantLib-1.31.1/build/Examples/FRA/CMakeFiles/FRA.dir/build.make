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
include Examples/FRA/CMakeFiles/FRA.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Examples/FRA/CMakeFiles/FRA.dir/compiler_depend.make

# Include the progress variables for this target.
include Examples/FRA/CMakeFiles/FRA.dir/progress.make

# Include the compile flags for this target's objects.
include Examples/FRA/CMakeFiles/FRA.dir/flags.make

Examples/FRA/CMakeFiles/FRA.dir/FRA.cpp.o: Examples/FRA/CMakeFiles/FRA.dir/flags.make
Examples/FRA/CMakeFiles/FRA.dir/FRA.cpp.o: /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/FRA/FRA.cpp
Examples/FRA/CMakeFiles/FRA.dir/FRA.cpp.o: Examples/FRA/CMakeFiles/FRA.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Examples/FRA/CMakeFiles/FRA.dir/FRA.cpp.o"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FRA && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Examples/FRA/CMakeFiles/FRA.dir/FRA.cpp.o -MF CMakeFiles/FRA.dir/FRA.cpp.o.d -o CMakeFiles/FRA.dir/FRA.cpp.o -c /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/FRA/FRA.cpp

Examples/FRA/CMakeFiles/FRA.dir/FRA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FRA.dir/FRA.cpp.i"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FRA && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/FRA/FRA.cpp > CMakeFiles/FRA.dir/FRA.cpp.i

Examples/FRA/CMakeFiles/FRA.dir/FRA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FRA.dir/FRA.cpp.s"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FRA && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/FRA/FRA.cpp -o CMakeFiles/FRA.dir/FRA.cpp.s

# Object files for target FRA
FRA_OBJECTS = \
"CMakeFiles/FRA.dir/FRA.cpp.o"

# External object files for target FRA
FRA_EXTERNAL_OBJECTS =

Examples/FRA/FRA: Examples/FRA/CMakeFiles/FRA.dir/FRA.cpp.o
Examples/FRA/FRA: Examples/FRA/CMakeFiles/FRA.dir/build.make
Examples/FRA/FRA: ql/libQuantLib.1.31.1.dylib
Examples/FRA/FRA: Examples/FRA/CMakeFiles/FRA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FRA"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FRA && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FRA.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Examples/FRA/CMakeFiles/FRA.dir/build: Examples/FRA/FRA
.PHONY : Examples/FRA/CMakeFiles/FRA.dir/build

Examples/FRA/CMakeFiles/FRA.dir/clean:
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FRA && $(CMAKE_COMMAND) -P CMakeFiles/FRA.dir/cmake_clean.cmake
.PHONY : Examples/FRA/CMakeFiles/FRA.dir/clean

Examples/FRA/CMakeFiles/FRA.dir/depend:
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1 /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/FRA /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FRA /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FRA/CMakeFiles/FRA.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Examples/FRA/CMakeFiles/FRA.dir/depend

