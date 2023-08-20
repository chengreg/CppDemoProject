/*****************************************************************************
*  Copyright @ 颐希科技 2023. All rights reserved.                            *
*                                                                            *
*                                                                            *
*                                                                            *
*  @file     AutoUpdater.cpp                                                    *
*  @brief                                                                    *
*                                                                            *
*  @author   陈钢强                                                           *
*  @version  1.0.0.1(版本号)                                                  *
*  @date     2023/8/21 04:02                                                 *
*                                                                            *
*----------------------------------------------------------------------------*
*  Change History :                                                          *
*  <Date>     | <Version> | <Author>       | <Description>                   *
*----------------------------------------------------------------------------*
*  2023/8/21   | 1.0.0.1   | 陈钢强           | Create file                   *
*----------------------------------------------------------------------------*
*                                                                            *
*****************************************************************************/

#include "AutoUpdater.h"
#include <iostream>
#include <fstream>
#include <curl/curl.h>
#include <boost/property_tree/ptree.hpp>
#include <boost/property_tree/ini_parser.hpp>

/**
 *  函数是用于接收从 libcurl 获取的远程数据的回调函数。这个函数会将获取的数据追
 *  加到一个 std::string 指针所指向的字符串中，并返回实际追加的字节数
 *
 * @param     // 'contents' 是从服务器接收的数据块
              // 'size' 是每个数据块的大小
              // 'nmemb' 是数据块的数量
               // 'userp' 是一个用户传递的指针，指向一个 std::string 对象
 * @return 返回实际追加的字节数，这告诉 libcurl 数据已被处理
**/
size_t WriteCallback(void* contents, size_t size, size_t nmemb, void* userp) {
    // 将数据追加到 std::string 对象中
    ((std::string*)userp)->append((char*)contents, size * nmemb);
    return size * nmemb;
}

// 构造函数，从配置文件中读取本地版本号和服务器URL
AutoUpdater::AutoUpdater(const std::string& configPath)
        : configPath_(configPath) {
    boost::property_tree::ptree config;
    boost::property_tree::ini_parser::read_ini(configPath_, config);
    localVersion_ = config.get<std::string>("ver.LocalVersion", "");
    serverURL_ = config.get<std::string>("ver.ServerURL", "");
}

// 获取远程版本号
std::string AutoUpdater::fetchRemoteVersion() {
    std::string result;

    CURL* curl = curl_easy_init();
    if (curl) {
        std::string url = serverURL_; // Update with your server URL
        curl_easy_setopt(curl, CURLOPT_URL, url.c_str());

        std::string response;
        curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, WriteCallback);
        curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response);

        CURLcode res = curl_easy_perform(curl);
        if (res == CURLE_OK) {
            result = response; // Assuming response contains version information
        }

        curl_easy_cleanup(curl);
    }

    return result;
}

// 检查是否有可用更新
bool AutoUpdater::checkForUpdates() {
    std::string remoteVersion = fetchRemoteVersion();
    if (!remoteVersion.empty() && remoteVersion != localVersion_) {
        std::cout << "New version available: " << remoteVersion << "\tLocal Version:" << localVersion_ << std::endl;
        return true;
    } else {
        std::cout << "No updates available." << std::endl;
        return false;
    }
}