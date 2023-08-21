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
include Examples/BasketLosses/CMakeFiles/BasketLosses.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include Examples/BasketLosses/CMakeFiles/BasketLosses.dir/compiler_depend.make

# Include the progress variables for this target.
include Examples/BasketLosses/CMakeFiles/BasketLosses.dir/progress.make

# Include the compile flags for this target's objects.
include Examples/BasketLosses/CMakeFiles/BasketLosses.dir/flags.make

Examples/BasketLosses/CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o: Examples/BasketLosses/CMakeFiles/BasketLosses.dir/flags.make
Examples/BasketLosses/CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o: /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/BasketLosses/BasketLosses.cpp
Examples/BasketLosses/CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o: Examples/BasketLosses/CMakeFiles/BasketLosses.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object Examples/BasketLosses/CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BasketLosses && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT Examples/BasketLosses/CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o -MF CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o.d -o CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o -c /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/BasketLosses/BasketLosses.cpp

Examples/BasketLosses/CMakeFiles/BasketLosses.dir/BasketLosses.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/BasketLosses.dir/BasketLosses.cpp.i"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BasketLosses && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/BasketLosses/BasketLosses.cpp > CMakeFiles/BasketLosses.dir/BasketLosses.cpp.i

Examples/BasketLosses/CMakeFiles/BasketLosses.dir/BasketLosses.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/BasketLosses.dir/BasketLosses.cpp.s"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BasketLosses && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/BasketLosses/BasketLosses.cpp -o CMakeFiles/BasketLosses.dir/BasketLosses.cpp.s

# Object files for target BasketLosses
BasketLosses_OBJECTS = \
"CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o"

# External object files for target BasketLosses
BasketLosses_EXTERNAL_OBJECTS =

Examples/BasketLosses/BasketLosses: Examples/BasketLosses/CMakeFiles/BasketLosses.dir/BasketLosses.cpp.o
Examples/BasketLosses/BasketLosses: Examples/BasketLosses/CMakeFiles/BasketLosses.dir/build.make
Examples/BasketLosses/BasketLosses: ql/libQuantLib.1.31.1.dylib
Examples/BasketLosses/BasketLosses: Examples/BasketLosses/CMakeFiles/BasketLosses.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable BasketLosses"
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BasketLosses && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/BasketLosses.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
Examples/BasketLosses/CMakeFiles/BasketLosses.dir/build: Examples/BasketLosses/BasketLosses
.PHONY : Examples/BasketLosses/CMakeFiles/BasketLosses.dir/build

Examples/BasketLosses/CMakeFiles/BasketLosses.dir/clean:
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BasketLosses && $(CMAKE_COMMAND) -P CMakeFiles/BasketLosses.dir/cmake_clean.cmake
.PHONY : Examples/BasketLosses/CMakeFiles/BasketLosses.dir/clean

Examples/BasketLosses/CMakeFiles/BasketLosses.dir/depend:
	cd /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1 /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples/BasketLosses /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BasketLosses /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BasketLosses/CMakeFiles/BasketLosses.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : Examples/BasketLosses/CMakeFiles/BasketLosses.dir/depend

