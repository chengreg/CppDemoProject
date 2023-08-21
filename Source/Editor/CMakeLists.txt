if (APPLE)
    # for <GLFW/glfw3.h>
    include_directories(
            /usr/local/include
            /opt/local/include
            /opt/homebrew/include
    )
endif()

# set common source
file(GLOB SRC
        ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8/*.h
        ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8/*.cpp
        Editor.h
        Editor.cpp
)

# set specific source and other option for platform
if (WIN32)
    file (GLOB PLATFORM_SRC
            ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8/backends/imgui_impl_win32.*
            ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8/backends/imgui_impl_dx12.*
    )
elseif (UNIX)
    # support both mac and linux
    add_definitions(-DIMGUI_IMPL_OPENGL_LOADER_GL3W)

    include_directories(
            ${CMAKE_CURRENT_SOURCE_DIR}/libs/imgui-1.89.8/examples/libs/gl3w # for GL/gl3w.h
    )

    file (GLOB PLATFORM_SRC
            ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8/examples/libs/gl3w/GL/gl3w.*
            ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8/backends/imgui_impl_glfw.*
            ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8/backends/imgui_impl_opengl3.*
    )
endif()

#
add_library(Editor ${SRC} ${PLATFORM_SRC})


# 添加imgui头文件的路径，根据你的安装情况进行调整
target_include_directories(Editor PRIVATE
        ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8
        ${MAIN_CMAKELISTS_TEXT_PATH}/ThirdParty/imgui-1.89.8/backends
)

# add link path
if (APPLE)
    link_directories(
            /usr/local/lib
            /opt/local/lib
            /opt/homebrew/lib
    )
endif()

# 设置CMP0079策略为NEW
cmake_policy(SET CMP0079 NEW)

# 使用 find_package 查找 GLFW
find_package(glfw3 REQUIRED)

# link lib, should install glfw first or prebuild lib and embed in project
if (WIN32)
    target_link_libraries(Editor
            d3d12.lib
            d3dcompiler.lib
            dxgi.lib
    )
elseif (APPLE)
    # mac: brew install glfw3
    find_library(OPENGL_LIBRARY OpenGL REQUIRED)
    find_library(COCOA_LIBRARY Cocoa REQUIRED)
    find_library(IOKIT_LIBRARY IOKit REQUIRED)
    find_library(COREVID_LIBRARY CoreVideo REQUIRED)
    message(${COCOA_LIBRARY})
    message(${IOKIT_LIBRARY})
    message(${COREVID_LIBRARY})

    target_link_libraries(Editor
            ${OPENGL_LIBRARY}
            ${COCOA_LIBRARY}
            ${IOKIT_LIBRARY}
            ${COREVID_LIBRARY}
            glfw # use this lib name
    )
elseif (UNIX AND NOT APPLE)
    # linux: sudo apt install libglfw3-dev
    target_link_libraries(${PROJECT_NAME}
            GL
            glfw # use this lib name
            dl
    )
endif()