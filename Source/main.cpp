#include <iostream>
#include "AutoUpdater.h"
using namespace std;

int main()
{
    // 检测更新
    AutoUpdater updater("config.ini");
    updater.checkForUpdates();


	return 0;
}