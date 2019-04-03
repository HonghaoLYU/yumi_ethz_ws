# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "visensor_node: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ivisensor_node:/home/yumi/yumi_ws/src/visensor_node_devel/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(visensor_node_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg" NAME_WE)
add_custom_target(_visensor_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visensor_node" "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv" NAME_WE)
add_custom_target(_visensor_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visensor_node" "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:visensor_node/visensor_calibration"
)

get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg" NAME_WE)
add_custom_target(_visensor_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visensor_node" "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg" "geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg" NAME_WE)
add_custom_target(_visensor_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "visensor_node" "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visensor_node
)
_generate_msg_cpp(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visensor_node
)
_generate_msg_cpp(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visensor_node
)

### Generating Services
_generate_srv_cpp(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visensor_node
)

### Generating Module File
_generate_module_cpp(visensor_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visensor_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(visensor_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(visensor_node_generate_messages visensor_node_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_cpp _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv" NAME_WE)
add_dependencies(visensor_node_generate_messages_cpp _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_cpp _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_cpp _visensor_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visensor_node_gencpp)
add_dependencies(visensor_node_gencpp visensor_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visensor_node_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visensor_node
)
_generate_msg_eus(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visensor_node
)
_generate_msg_eus(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visensor_node
)

### Generating Services
_generate_srv_eus(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visensor_node
)

### Generating Module File
_generate_module_eus(visensor_node
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visensor_node
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(visensor_node_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(visensor_node_generate_messages visensor_node_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_eus _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv" NAME_WE)
add_dependencies(visensor_node_generate_messages_eus _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_eus _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_eus _visensor_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visensor_node_geneus)
add_dependencies(visensor_node_geneus visensor_node_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visensor_node_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visensor_node
)
_generate_msg_lisp(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visensor_node
)
_generate_msg_lisp(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visensor_node
)

### Generating Services
_generate_srv_lisp(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visensor_node
)

### Generating Module File
_generate_module_lisp(visensor_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visensor_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(visensor_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(visensor_node_generate_messages visensor_node_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_lisp _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv" NAME_WE)
add_dependencies(visensor_node_generate_messages_lisp _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_lisp _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_lisp _visensor_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visensor_node_genlisp)
add_dependencies(visensor_node_genlisp visensor_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visensor_node_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visensor_node
)
_generate_msg_nodejs(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visensor_node
)
_generate_msg_nodejs(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visensor_node
)

### Generating Services
_generate_srv_nodejs(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visensor_node
)

### Generating Module File
_generate_module_nodejs(visensor_node
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visensor_node
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(visensor_node_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(visensor_node_generate_messages visensor_node_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_nodejs _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv" NAME_WE)
add_dependencies(visensor_node_generate_messages_nodejs _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_nodejs _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_nodejs _visensor_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visensor_node_gennodejs)
add_dependencies(visensor_node_gennodejs visensor_node_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visensor_node_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visensor_node
)
_generate_msg_py(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visensor_node
)
_generate_msg_py(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visensor_node
)

### Generating Services
_generate_srv_py(visensor_node
  "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visensor_node
)

### Generating Module File
_generate_module_py(visensor_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visensor_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(visensor_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(visensor_node_generate_messages visensor_node_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_time_host.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_py _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/srv/visensor_calibration_service.srv" NAME_WE)
add_dependencies(visensor_node_generate_messages_py _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_imu.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_py _visensor_node_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/visensor_node_devel/msg/visensor_calibration.msg" NAME_WE)
add_dependencies(visensor_node_generate_messages_py _visensor_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(visensor_node_genpy)
add_dependencies(visensor_node_genpy visensor_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS visensor_node_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visensor_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/visensor_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(visensor_node_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visensor_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/visensor_node
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(visensor_node_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visensor_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/visensor_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(visensor_node_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visensor_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/visensor_node
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(visensor_node_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visensor_node)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visensor_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/visensor_node
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(visensor_node_generate_messages_py geometry_msgs_generate_messages_py)
endif()
