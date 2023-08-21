/*****************************************************************************
*  Copyright @ 颐希科技 2023. All rights reserved.                            *
*                                                                            *
*                                                                            *
*                                                                            *
*  @file     test_libs.cpp                                                    *
*  @brief                                                                    *
*                                                                            *
*  @author   陈钢强                                                           *
*  @version  1.0.0.1(版本号)                                                  *
*  @date     2023/8/21 14:53                                                 *
*                                                                            *
*----------------------------------------------------------------------------*
*  Change History :                                                          *
*  <Date>     | <Version> | <Author>       | <Description>                   *
*----------------------------------------------------------------------------*
*  2023/8/21   | 1.0.0.1   | 陈钢强           | Create file                   *
*----------------------------------------------------------------------------*
*                                                                            *
*****************************************************************************/


#include "test_libs.h"
#include "AutoUpdater.h"
#include <ql/math/array.hpp>

void test_Quantlib()
{
    cout << "This is a QuantLib test!" << endl;

    QuantLib::Array MyArray(10,2,0);
    cout << MyArray.size() << endl;
}

void test_updater()
{
    // 检测更新
    AutoUpdater updater("config.ini");
    updater.checkForUpdates();
}