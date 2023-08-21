/*****************************************************************************
*  Copyright @ 颐希科技 2023. All rights reserved.                            *
*                                                                            *
*                                                                            *
*                                                                            *
*  @file     Editor.cpp                                                    *
*  @brief                                                                    *
*                                                                            *
*  @author   陈钢强                                                           *
*  @version  1.0.0.1(版本号)                                                  *
*  @date     2023/8/21 22:56                                                 *
*                                                                            *
*----------------------------------------------------------------------------*
*  Change History :                                                          *
*  <Date>     | <Version> | <Author>       | <Description>                   *
*----------------------------------------------------------------------------*
*  2023/8/21   | 1.0.0.1   | 陈钢强           | Create file                   *
*----------------------------------------------------------------------------*
*                                                                            *
*****************************************************************************/


#include "Editor.h"

#include <stdio.h>
#include <GLFW/glfw3.h> // Will drag system OpenGL headers

#include "imgui.h"
#include "imgui_impl_glfw.h"
#include "imgui_impl_opengl3.h"

/********************************************************************************
 * 用于在编译时告诉OpenGL库抑制某些过时函数或特性的警告。
 * 在某些情况下，OpenGL库会发出关于过时特性的警告，但在此情况下，通过定义该宏，可以忽略这些警告
********************************************************************************/
#define GL_SILENCE_DEPRECATION

/********************************************************************************
 * 包含不同的OpenGL ES 2.0的头文件。OpenGL ES（Embedded Systems）是OpenGL的嵌入式版本，
 * 常用于移动设备和嵌入式系统，如果代码被编译时定义了IMGUI_IMPL_OPENGL_ES2宏，
 * 那么就会包含GLES2/gl2.h头文件，这样可以为OpenGL ES 2.0环境配置相关的函数和常量
********************************************************************************/
#if defined(IMGUI_IMPL_OPENGL_ES2)
#include <GLES2/gl2.h>
#endif

/********************************************************************************
 * 这段代码的作用是在满足特定条件的情况下（Visual Studio 2015 及以上，且未禁用 Win32 功能），
 * 向链接器添加一个库以确保正确的 C/C++ 标准库的向后兼容性。这是为了适应不同版本
 * 的 Visual Studio 在链接时的差异
********************************************************************************/
#if defined(_MSC_VER) && (_MSC_VER >= 1900) && !defined(IMGUI_DISABLE_WIN32_FUNCTIONS)
#pragma comment(lib, "legacy_stdio_definitions")
#endif

/********************************************************************************
 * Emscripten 是一个将C/C++代码编译成WebAssembly或JavaScript的工具，用于在Web浏览器中运行代码
 * 如果代码在 Emscripten 编译环境中编译，就会包含特定的头文件。这个头文件可能包含了在 Emscripten
 * 环境中运行的主循环相关的声明或定义。这有助于在 Emscripten 编译环境中处理主循环或其他特定的设置
********************************************************************************/
#ifdef __EMSCRIPTEN__
#include "../libs/emscripten/emscripten_mainloop_stub.h"
#endif

/**
 * 这个函数的作用是在发生 GLFW 错误时，将错误代码和描述信息输出到标准错误
 * 流（通常是控制台），以便开发者可以了解和调试问题
 * static 关键字用于限定该函数的作用域为当前文件，即只能在当前文件内使用。
 * @param error 参数表示错误代码；description 参数表示错误的描述信息
**/
static void glfw_error_callback(int error, const char* description)
{
    /**
     * fprintf 函数用于将格式化的输出写入指定的文件流
     * @param stderr 是标准错误输出流
    **/
    fprintf(stderr, "GLFW Error %d: %s\n", error, description);
}



int imgui_opengl_mac_demo()
{
    /********************************************************************************
 * 设置了一个错误回调函数，即在 GLFW 出现错误时会调用 glfw_error_callback 函数。通过调
 * 用 glfwSetErrorCallback 并传递错误回调函数，你可以在 GLFW 发生错误时捕获和处理错误信息
********************************************************************************/
    glfwSetErrorCallback(glfw_error_callback);

    /********************************************************************************
     * glfwInit 函数用于初始化 GLFW 库，如果初始化失败，它会返回 GLFW_FALSE（即0），表示初始化
     * 失败。所以这里的条件判断语句是在初始化失败时执行。如果初始化失败，函数会返回1，这在通常的惯例
     * 中表示程序的退出状态码（非零表示异常退出）
    ********************************************************************************/
    if (!glfwInit())
        return 1;

/********************************************************************************
 * 如果定义了 IMGUI_IMPL_OPENGL_ES2 宏，就设置了窗口的 OpenGL 上下文版本为 OpenGL ES 2.0，
 * 以及相应的 GLSL 版本，以适应 OpenGL ES 2.0 的要求。这通常用于在特定环境下（如移动设备）使用OpenGL ES。
********************************************************************************/
#if defined(IMGUI_IMPL_OPENGL_ES2)
    // GL ES 2.0 + GLSL 100
    const char* glsl_version = "#version 100";
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
    glfwWindowHint(GLFW_CLIENT_API, GLFW_OPENGL_ES_API);

/********************************************************************************
 * 如果在苹果操作系统上编译，就设置了窗口的 OpenGL 上下文版本为OpenGL 3.2；如果代码不在苹果操作
 * 系统上编译（即不满足上面的条件），就会执行这个默认情况下的代码块。这部分代码设置了窗口的 OpenGL
 * 上下文版本为OpenGL 3.0，GLSL 版本为 1.30。
********************************************************************************/
#elif defined(__APPLE__)
    // GL 3.2 + GLSL 150
    const char* glsl_version = "#version 150";
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 2);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+ only
    glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);            // Required on Mac
#else
    // GL 3.0 + GLSL 130
    const char* glsl_version = "#version 130";
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 0);
    //glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);  // 3.2+ only
    //glfwWindowHint(GLFW_OPENGL_FORWARD_COMPAT, GL_TRUE);            // 3.0+ only
#endif

    /********************************************************************************
     * 使用 GLFW 库创建一个窗口，窗口的尺寸为 1280x720 像素，标题为 "Dear ImGui GLFW+OpenGL3
     * example"，并将窗口指针存储在 window 变量中，以便后续的窗口和渲染操作。
    ********************************************************************************/
    GLFWwindow* window = glfwCreateWindow(1280, 720, "Dear ImGui GLFW+OpenGL3 example", nullptr, nullptr);
    /********************************************************************************
     * 如果窗口创建失败（即 window 为空指针），程序会返回状态码1。通常情况下，非零的状态码表示程序
     * 的异常退出。这样的错误检查是为了确保窗口成功创建，如果创建失败，可以采取适当的措施，如打印错
     * 误信息、释放资源等
    ********************************************************************************/
    if (window == nullptr)
        return 1;
    /********************************************************************************
     * 将刚刚创建的窗口设置为当前的OpenGL上下文，以便后续的OpenGL渲染操作可以在这个窗口中进行
     * 将窗口设置为当前的OpenGL上下文是必要的，因为OpenGL在渲染时需要知道在哪个窗口上进行渲染。
     * 通过将窗口设置为当前上下文，所有的OpenGL渲染指令将在这个窗口上执行
    ********************************************************************************/
    glfwMakeContextCurrent(window);

    /********************************************************************************
     * 用于启用垂直同步（V-Sync），控制OpenGL渲染的速率与显示器的刷新率同步，以避免图像撕裂问题
     * 启用垂直同步后，OpenGL会等待显示器完成一次垂直刷新，然后再切换帧缓冲，从而避免在两次刷新之
     * 间的图像撕裂。这会导致一定的性能开销，因为渲染操作必须等待垂直同步信号，但通常可以提供更平滑
     * 和更高质量的图像输出。
     * 这行代码通常在初始化OpenGL上下文之后，并在进入主循环之前调用
    ********************************************************************************/
    glfwSwapInterval(1); // Enable vsync

    /********************************************************************************
     * IMGUI_CHECKVERSION 是 Dear ImGui 库提供的一个宏，它在运行时检查编译时使用的库的版本是否
     * 和正在运行的版本匹配。如果版本不匹配，这个宏可能会发出警告或错误，以提醒开发者需要升级库或调整代码
    ********************************************************************************/
    IMGUI_CHECKVERSION();

    /********************************************************************************
     * 通常情况下，你只需要在程序启动时调用一次 CreateContext() 函数，以便创建 ImGui 上下文，然后
     * 就可以在整个程序中使用这个上下文对象来管理你的UI。在程序结束时，应该使用 ImGui::DestroyContext()
     * 来销毁上下文，释放相关资源。
    ********************************************************************************/
    ImGui::CreateContext();

    /********************************************************************************
     * 获取 ImGui 输入与行为选项的配置对象，然后设置一些标志位来启用键盘导航控制和游戏手柄导航控制，
     * 以便后续的 UI 操作可以使用键盘和游戏手柄进行导航
    ********************************************************************************/
    ImGuiIO& io = ImGui::GetIO(); (void)io;
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;     // Enable Keyboard Controls
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;      // Enable Gamepad Controls

    /********************************************************************************
     * 将 ImGui 的样式设置为默认的暗色主题。ImGui 支持多种内置的样式主题，以及自定义的样式设置，通
     * 过调用不同的样式函数来实现
    ********************************************************************************/
    ImGui::StyleColorsDark();
    //ImGui::StyleColorsLight();

    /********************************************************************************
     * 这两行代码共同完成了对 ImGui 的初始化，使其可以在指定的窗口和 OpenGL 上下文中渲染 UI 元素。
     * 在这之后，你可以使用 ImGui 相关的函数来创建、绘制和交互 UI。这两行代码通常在窗口、ImGui
     * 上下文、GLFW 后端和 OpenGL3 后端初始化之后，进入主循环之前调用
    ********************************************************************************/
    ImGui_ImplGlfw_InitForOpenGL(window, true);
    ImGui_ImplOpenGL3_Init(glsl_version);

    // Load Fonts
    // - If no fonts are loaded, dear imgui will use the default font. You can also load multiple fonts and use ImGui::PushFont()/PopFont() to select them.
    // - AddFontFromFileTTF() will return the ImFont* so you can store it if you need to select the font among multiple.
    // - If the file cannot be loaded, the function will return a nullptr. Please handle those errors in your application (e.g. use an assertion, or display an error and quit).
    // - The fonts will be rasterized at a given size (w/ oversampling) and stored into a texture when calling ImFontAtlas::Build()/GetTexDataAsXXXX(), which ImGui_ImplXXXX_NewFrame below will call.
    // - Use '#define IMGUI_ENABLE_FREETYPE' in your imconfig file to use Freetype for higher quality font rendering.
    // - Read 'docs/FONTS.md' for more instructions and details.
    // - Remember that in C/C++ if you want to include a backslash \ in a string literal you need to write a double backslash \\ !
    // - Our Emscripten build process allows embedding fonts to be accessible at runtime from the "fonts/" folder. See Makefile.emscripten for details.
    //io.Fonts->AddFontDefault();
    //io.Fonts->AddFontFromFileTTF("c:\\Windows\\Fonts\\segoeui.ttf", 18.0f);
    //io.Fonts->AddFontFromFileTTF("../../misc/fonts/DroidSans.ttf", 16.0f);
    //io.Fonts->AddFontFromFileTTF("../../misc/fonts/Roboto-Medium.ttf", 16.0f);
    //io.Fonts->AddFontFromFileTTF("../../misc/fonts/Cousine-Regular.ttf", 15.0f);
    //ImFont* font = io.Fonts->AddFontFromFileTTF("c:\\Windows\\Fonts\\ArialUni.ttf", 18.0f, nullptr, io.Fonts->GetGlyphRangesJapanese());
    //IM_ASSERT(font != nullptr);

    // Our state
    /********************************************************************************
     * 这个布尔型变量用于控制是否显示 ImGui 的演示窗口。初始状态设置为 true，表示在程序开始时会显示
     * 一个演示窗口，您可以将其设置为 false 来关闭演示窗口的显示
    ********************************************************************************/
    bool show_demo_window = true;
    /********************************************************************************
     * 这个布尔型变量用于控制是否显示另一个自定义的 ImGui 窗口。初始状态设置为 false，表示在程序开
     * 始时不会显示这个自定义窗口。您可以将其设置为 true 来显示这个窗口。
    ********************************************************************************/
    bool show_another_window = false;
    /********************************************************************************
     * 这个 ImVec4 类型的变量表示清除窗口背景的颜色。在这里，clear_color 被设置为一种淡蓝灰色。这
     * 个颜色值是一个四维矢量，包含红、绿、蓝和透明度分量。在每一帧渲染之前，窗口的背景会被这个颜色所清除。
    ********************************************************************************/
    ImVec4 clear_color = ImVec4(0.45f, 0.55f, 0.60f, 1.00f);

/********************************************************************************
 * 根据编译环境的不同，在 Emscripten 编译环境中执行不同的操作
********************************************************************************/
#ifdef __EMSCRIPTEN__   //在 Emscripten 编译环境中，通常会定义这个宏
    /********************************************************************************
     * 如果在 Emscripten 编译环境中，将 ImGui 的上下文对象的 IniFilename 设置为 nullptr，这表
     * 示不尝试从文件系统中加载 imgui 配置文件。相反，你可以手动调用 LoadIniSettingsFromMemory()
     * 函数来从你自己的存储中加载设置。
    ********************************************************************************/
    io.IniFilename = nullptr;
    /********************************************************************************
     * 如果在 Emscripten 编译环境中，使用这个宏来开始 Emscripten 主循环。
    ********************************************************************************/
    EMSCRIPTEN_MAINLOOP_BEGIN
#else
    while (!glfwWindowShouldClose(window))
#endif
    {
        // Poll and handle events (inputs, window resize, etc.)
        // 轮询和处理事件（输入、窗口调整等）
        // You can read the io.WantCaptureMouse, io.WantCaptureKeyboard flags to tell if dear imgui wants to use your inputs.
        // 您可以读取 io.WantCaptureMouse、io.WantCaptureKeyboard 标志，以判断亲爱的 ImGui 是否需要使用您的输入
        // - When io.WantCaptureMouse is true, do not dispatch mouse input data to your main application, or clear/overwrite your copy of the mouse data.
        // 当 io.WantCaptureMouse 为 true 时，不要将鼠标输入数据传递给您的主应用程序，或者清除/覆盖您的鼠标数据副本
        // - When io.WantCaptureKeyboard is true, do not dispatch keyboard input data to your main application, or clear/overwrite your copy of the keyboard data.
        // 当 io.WantCaptureKeyboard 为 true 时，不要将键盘输入数据传递给您的主应用程序，或者清除/覆盖您的键盘数据副本
        // Generally you may always pass all inputs to dear imgui, and hide them from your application based on those two flags.
        // 通常您可以始终将所有输入传递给亲爱的 ImGui，并根据这两个标志从您的应用程序中隐藏它们

        /********************************************************************************
         * glfwPollEvents(); 是一个 GLFW 函数调用，用于轮询和处理窗口事件，例如键盘输入、鼠标输入以及窗口大小调整等。
         * 在使用 GLFW 创建窗口后，你需要通过轮询事件来处理用户的输入和窗口事件。这个函数会检查是否有事件
         * 在消息队列中等待处理，如果有，它会处理这些事件并更新相应的状态。如果没有事件需要处理，这个函数会立即返回。
         * 通过在轮询事件循环中调用 glfwPollEvents();，你可以保证 ImGui 能够正确地处理用户输入事件，
         * 并在需要时接收它们，从而实现交互和渲染。通常，这个函数会被放置在主循环中，以确保及时处理所有的窗口事件
        ********************************************************************************/
        glfwPollEvents();

        // Start the Dear ImGui frame
        /********************************************************************************
         * 这些函数的调用顺序通常是固定的，用于初始化新的帧并准备 ImGui 进行绘制和交互。在调用这些函数之后，
         * 你可以开始创建和布局 ImGui 的 UI 元素，然后在渲染阶段绘制这些 UI 元素
        ********************************************************************************/
        // 这是 ImGui 提供的函数，用于准备 ImGui 在 OpenGL3 上下文中进行新一帧的绘制。这个函数应该在每一帧的开始调用
        ImGui_ImplOpenGL3_NewFrame();
        // 这是 ImGui 提供的函数，用于准备 ImGui 在 GLFW 上下文中进行新一帧的绘制。这个函数应该在每一帧的开始调用
        ImGui_ImplGlfw_NewFrame();
        // 这是 ImGui 的函数，用于准备 ImGui 进行新一帧的绘制和交互。在调用这个函数之后，你可以使用 ImGui 的各种绘制和布局函数来创建 UI 元素
        ImGui::NewFrame();


        // 1. Show the big demo window (Most of the sample code is in ImGui::ShowDemoWindow()! You can browse its code to learn more about Dear ImGui!).
        if (show_demo_window)
            ImGui::ShowDemoWindow(&show_demo_window);

        // 2. Show a simple window that we create ourselves. We use a Begin/End pair to create a named window.
        {
            static float f = 0.0f;
            static int counter = 0;

            ImGui::Begin("Hello, world!");                          // Create a window called "Hello, world!" and append into it.

            ImGui::Text("This is some useful text.");               // Display some text (you can use a format strings too)
            ImGui::Checkbox("Demo Window", &show_demo_window);      // Edit bools storing our window open/close state
            ImGui::Checkbox("Another Window", &show_another_window);

            ImGui::SliderFloat("float", &f, 0.0f, 1.0f);            // Edit 1 float using a slider from 0.0f to 1.0f
            ImGui::ColorEdit3("clear color", (float*)&clear_color); // Edit 3 floats representing a color

            if (ImGui::Button("Button"))                            // Buttons return true when clicked (most widgets return true when edited/activated)
                counter++;
            ImGui::SameLine();
            ImGui::Text("counter = %d", counter);

            ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / io.Framerate, io.Framerate);
            ImGui::End();
        }

        // 3. Show another simple window.
        if (show_another_window)
        {
            ImGui::Begin("Another Window", &show_another_window);   // Pass a pointer to our bool variable (the window will have a closing button that will clear the bool when clicked)
            ImGui::Text("Hello from another window!");
            if (ImGui::Button("Close Me"))
                show_another_window = false;
            ImGui::End();
        }

        // Rendering
        ImGui::Render();
        int display_w, display_h;
        glfwGetFramebufferSize(window, &display_w, &display_h);
        glViewport(0, 0, display_w, display_h);
        glClearColor(clear_color.x * clear_color.w, clear_color.y * clear_color.w, clear_color.z * clear_color.w, clear_color.w);
        glClear(GL_COLOR_BUFFER_BIT);
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

        glfwSwapBuffers(window);
    }
#ifdef __EMSCRIPTEN__
    EMSCRIPTEN_MAINLOOP_END;
#endif

    // Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplGlfw_Shutdown();
    ImGui::DestroyContext();

    glfwDestroyWindow(window);
    glfwTerminate();

}