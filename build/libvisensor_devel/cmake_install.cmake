# Install script for directory: /home/yumi/yumi_ws/src/libvisensor_devel

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/yumi/yumi_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yumi/yumi_ws/build/libvisensor_devel/catkin_generated/installspace/libvisensor.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libvisensor/cmake" TYPE FILE FILES
    "/home/yumi/yumi_ws/build/libvisensor_devel/catkin_generated/installspace/libvisensorConfig.cmake"
    "/home/yumi/yumi_ws/build/libvisensor_devel/catkin_generated/installspace/libvisensorConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/libvisensor" TYPE FILE FILES "/home/yumi/yumi_ws/src/libvisensor_devel/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "shared-lib")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/yumi/yumi_ws/src/libvisensor_devel/lib/libvisensor.so")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "static-lib")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/yumi/yumi_ws/src/libvisensor_devel/lib/libvisensor.a")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "static-lib")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/visensor" TYPE FILE FILES
    "/home/yumi/yumi_ws/src/libvisensor_devel/include/visensor/visensor_api.hpp"
    "/home/yumi/yumi_ws/src/libvisensor_devel/include/visensor/visensor_config.hpp"
    "/home/yumi/yumi_ws/src/libvisensor_devel/include/visensor/visensor_constants.hpp"
    "/home/yumi/yumi_ws/src/libvisensor_devel/include/visensor/visensor_datatypes.hpp"
    "/home/yumi/yumi_ws/src/libvisensor_devel/include/visensor/visensor_exceptions.hpp"
    "/home/yumi/yumi_ws/src/libvisensor_devel/include/visensor/visensor_version.hpp"
    "/home/yumi/yumi_ws/src/libvisensor_devel/include/visensor/visensor.hpp"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "static-lib")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/visensor" TYPE FILE FILES "/home/yumi/yumi_ws/src/libvisensor_devel/cmake/FindVISensor.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "static-lib")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pkgconfig" TYPE FILE FILES "/home/yumi/yumi_ws/src/libvisensor_devel/pkgconfig/visensor.pc")
endif()

