# Install script for directory: /home/yumi/yumi_ws/src/yumi/yumi_scripts

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yumi_scripts/msg" TYPE FILE FILES
    "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg"
    "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
    "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg"
    "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg"
    "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg"
    "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yumi_scripts/cmake" TYPE FILE FILES "/home/yumi/yumi_ws/build/yumi/yumi_scripts/catkin_generated/installspace/yumi_scripts-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/yumi/yumi_ws/devel/include/yumi_scripts")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/yumi/yumi_ws/devel/share/roseus/ros/yumi_scripts")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/yumi/yumi_ws/devel/share/common-lisp/ros/yumi_scripts")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/yumi/yumi_ws/devel/share/gennodejs/ros/yumi_scripts")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/yumi/yumi_ws/devel/lib/python2.7/dist-packages/yumi_scripts")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/yumi/yumi_ws/devel/lib/python2.7/dist-packages/yumi_scripts")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/yumi/yumi_ws/build/yumi/yumi_scripts/catkin_generated/installspace/yumi_scripts.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yumi_scripts/cmake" TYPE FILE FILES "/home/yumi/yumi_ws/build/yumi/yumi_scripts/catkin_generated/installspace/yumi_scripts-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yumi_scripts/cmake" TYPE FILE FILES
    "/home/yumi/yumi_ws/build/yumi/yumi_scripts/catkin_generated/installspace/yumi_scriptsConfig.cmake"
    "/home/yumi/yumi_ws/build/yumi/yumi_scripts/catkin_generated/installspace/yumi_scriptsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yumi_scripts" TYPE FILE FILES "/home/yumi/yumi_ws/src/yumi/yumi_scripts/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/yumi_scripts" TYPE DIRECTORY FILES
    "/home/yumi/yumi_ws/src/yumi/yumi_scripts/launch"
    "/home/yumi/yumi_ws/src/yumi/yumi_scripts/config"
    )
endif()

