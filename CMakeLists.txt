cmake_minimum_required(VERSION 3.10)

# 设置项目名称
project(CppDemoProject)

# 获取所有源文件
file(GLOB SOURCES
        ./Source/Network/*.cpp
        ./Source/*.cpp
)

# 添加可执行文件
add_executable(CppDemoProject ${SOURCES})

# 包含头文件目录
target_include_directories(CppDemoProject PRIVATE Include)
target_include_directories(CppDemoProject PRIVATE Include/Network)


# 设置构建路径为Build目录
set(CMAKE_BINARY_DIR ${CMAKE_SOURCE_DIR}/Build)
# 设置可执行文件的输出路径
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BINARY_DIR}/Binaries)
# 设置库文件的输出路径
set(LIBRARY_OUTPUT_PATH ${CMAKE_BINARY_DIR}/Libs)

# 查找 Boost 库并设置相关变量
find_package(Boost REQUIRED COMPONENTS system filesystem)

# 添加 libcurl 头文件路径
find_package(CURL REQUIRED)

# 添加头文件路径
include_directories(
        ${Boost_INCLUDE_DIRS}
        ${CURL_INCLUDE_DIRS}
)
# 链接 Boost 和 libcurl 库
target_link_libraries(CppDemoProject
        ${Boost_LIBRARIES}
        ${CURL_LIBRARIES}
)