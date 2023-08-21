# Install script for directory: /Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/Examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BasketLosses/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/BermudanSwaption/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Bonds/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/CallableBonds/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/CDS/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/ConvertibleBonds/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/CVAIRS/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/DiscreteHedging/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/EquityOption/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FittedBondCurve/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/FRA/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Gaussian1dModels/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/GlobalOptimizer/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/LatentModel/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/MarketModels/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/MultidimIntegral/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/MulticurveBootstrapping/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Replication/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/chengangqiang/dev/CppDemoProject/ThirdParty/QuantLib-1.31.1/build/Examples/Repo/cmake_install.cmake")
endif()

