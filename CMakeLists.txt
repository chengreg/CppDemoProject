cmake_minimum_required(VERSION 3.10)

# 设置项目名称
project(CppDemoProject)

# 添加可执行文件
add_executable(CppDemoProject ./Source/main.cpp)

# 设置构建路径为Build目录
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/Build)
# 设置可执行文件的输出路径
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/Binaries)
# 设置库文件的输出路径
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/Libs)