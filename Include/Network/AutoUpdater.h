/*****************************************************************************
*  Copyright @ 颐希科技 2023. All rights reserved.                            *
*                                                                            *
*  检测是否有新版本简易版                                                        *
*  本地的配置config.ini中有版本号和服务器链接，判断是否有新版本                       *
*                                                                             *
*  config.ini文件中的内容：                                                     *
*  [ver]                                                                      *
*   LocalVersion = 1.1                                                        *
*   ServerURL = https://www.5845.cn/test/version.txt                          *
*                                                                             *
*  https://www.5845.cn/test/version.txt中的内容：                              *
*  1.2.0                                                                     *
*                                                                            *
*  @file     AutoUpdater.h                                                   *
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


#ifndef AUTO_UPDATER_H
#define AUTO_UPDATER_H

#include <string>

class AutoUpdater {
public:
    // 构造函数，需要传递配置文件的路径
    AutoUpdater(const std::string& configPath);

    // 检查是否有可用更新
    bool checkForUpdates();

private:
    std::string configPath_; // 配置文件路径
    std::string localVersion_; // 本地版本号
    std::string serverURL_; // 服务器版本文件的URL

    // 获取远程版本号
    std::string fetchRemoteVersion();
};

#endif // AUTO_UPDATER_H