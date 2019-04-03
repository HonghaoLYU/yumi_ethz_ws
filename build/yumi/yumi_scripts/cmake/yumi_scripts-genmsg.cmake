# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "yumi_scripts: 6 messages, 0 services")

set(MSG_I_FLAGS "-Iyumi_scripts:/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Imoveit_msgs:/opt/ros/kinetic/share/moveit_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg;-Ishape_msgs:/opt/ros/kinetic/share/shape_msgs/cmake/../msg;-Iobject_recognition_msgs:/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/kinetic/share/octomap_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(yumi_scripts_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg" NAME_WE)
add_custom_target(_yumi_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yumi_scripts" "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg" ""
)

get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg" NAME_WE)
add_custom_target(_yumi_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yumi_scripts" "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg" NAME_WE)
add_custom_target(_yumi_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yumi_scripts" "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg" "yumi_scripts/JointMsg"
)

get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg" NAME_WE)
add_custom_target(_yumi_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yumi_scripts" "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg" "yumi_scripts/ModuleDataMsg:yumi_scripts/PoseConfigMsg:geometry_msgs/Quaternion:yumi_scripts/JointMsg:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg" NAME_WE)
add_custom_target(_yumi_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yumi_scripts" "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg" "std_msgs/Header:geometry_msgs/Quaternion:moveit_msgs/RobotTrajectory:geometry_msgs/Point:geometry_msgs/Vector3:shape_msgs/Mesh:trajectory_msgs/JointTrajectoryPoint:geometry_msgs/Twist:geometry_msgs/Pose:shape_msgs/SolidPrimitive:shape_msgs/Plane:moveit_msgs/RobotState:moveit_msgs/AttachedCollisionObject:shape_msgs/MeshTriangle:sensor_msgs/JointState:trajectory_msgs/MultiDOFJointTrajectoryPoint:geometry_msgs/Wrench:object_recognition_msgs/ObjectType:trajectory_msgs/MultiDOFJointTrajectory:sensor_msgs/MultiDOFJointState:geometry_msgs/Transform:trajectory_msgs/JointTrajectory:moveit_msgs/CollisionObject"
)

get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg" NAME_WE)
add_custom_target(_yumi_scripts_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "yumi_scripts" "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg" "geometry_msgs/Quaternion:yumi_scripts/PoseConfigMsg:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_cpp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_cpp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_cpp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_cpp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_cpp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts
)

### Generating Services

### Generating Module File
_generate_module_cpp(yumi_scripts
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(yumi_scripts_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(yumi_scripts_generate_messages yumi_scripts_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_cpp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_cpp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_cpp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_cpp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_cpp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_cpp _yumi_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_scripts_gencpp)
add_dependencies(yumi_scripts_gencpp yumi_scripts_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_scripts_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts
)
_generate_msg_eus(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts
)
_generate_msg_eus(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts
)
_generate_msg_eus(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts
)
_generate_msg_eus(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts
)
_generate_msg_eus(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts
)

### Generating Services

### Generating Module File
_generate_module_eus(yumi_scripts
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(yumi_scripts_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(yumi_scripts_generate_messages yumi_scripts_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_eus _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_eus _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_eus _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_eus _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_eus _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_eus _yumi_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_scripts_geneus)
add_dependencies(yumi_scripts_geneus yumi_scripts_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_scripts_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_lisp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_lisp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_lisp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_lisp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts
)
_generate_msg_lisp(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts
)

### Generating Services

### Generating Module File
_generate_module_lisp(yumi_scripts
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(yumi_scripts_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(yumi_scripts_generate_messages yumi_scripts_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_lisp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_lisp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_lisp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_lisp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_lisp _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_lisp _yumi_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_scripts_genlisp)
add_dependencies(yumi_scripts_genlisp yumi_scripts_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_scripts_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts
)
_generate_msg_nodejs(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts
)
_generate_msg_nodejs(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts
)
_generate_msg_nodejs(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts
)
_generate_msg_nodejs(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts
)
_generate_msg_nodejs(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts
)

### Generating Services

### Generating Module File
_generate_module_nodejs(yumi_scripts
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(yumi_scripts_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(yumi_scripts_generate_messages yumi_scripts_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_nodejs _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_nodejs _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_nodejs _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_nodejs _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_nodejs _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_nodejs _yumi_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_scripts_gennodejs)
add_dependencies(yumi_scripts_gennodejs yumi_scripts_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_scripts_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts
)
_generate_msg_py(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts
)
_generate_msg_py(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts
)
_generate_msg_py(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts
)
_generate_msg_py(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotTrajectory.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Mesh.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/SolidPrimitive.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/Plane.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/RobotState.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/AttachedCollisionObject.msg;/opt/ros/kinetic/share/shape_msgs/cmake/../msg/MeshTriangle.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/JointState.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectoryPoint.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/kinetic/share/object_recognition_msgs/cmake/../msg/ObjectType.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/MultiDOFJointTrajectory.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/MultiDOFJointState.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/kinetic/share/trajectory_msgs/cmake/../msg/JointTrajectory.msg;/opt/ros/kinetic/share/moveit_msgs/cmake/../msg/CollisionObject.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts
)
_generate_msg_py(yumi_scripts
  "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts
)

### Generating Services

### Generating Module File
_generate_module_py(yumi_scripts
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(yumi_scripts_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(yumi_scripts_generate_messages yumi_scripts_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_py _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PoseConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_py _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/JointConfigMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_py _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_py _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/PlannerMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_py _yumi_scripts_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/yumi/yumi_ws/src/yumi/yumi_scripts/msg/ModuleDataMsg.msg" NAME_WE)
add_dependencies(yumi_scripts_generate_messages_py _yumi_scripts_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(yumi_scripts_genpy)
add_dependencies(yumi_scripts_genpy yumi_scripts_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS yumi_scripts_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/yumi_scripts
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(yumi_scripts_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET moveit_msgs_generate_messages_cpp)
  add_dependencies(yumi_scripts_generate_messages_cpp moveit_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(yumi_scripts_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(yumi_scripts_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/yumi_scripts
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(yumi_scripts_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET moveit_msgs_generate_messages_eus)
  add_dependencies(yumi_scripts_generate_messages_eus moveit_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(yumi_scripts_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(yumi_scripts_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/yumi_scripts
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(yumi_scripts_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET moveit_msgs_generate_messages_lisp)
  add_dependencies(yumi_scripts_generate_messages_lisp moveit_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(yumi_scripts_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(yumi_scripts_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/yumi_scripts
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(yumi_scripts_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET moveit_msgs_generate_messages_nodejs)
  add_dependencies(yumi_scripts_generate_messages_nodejs moveit_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(yumi_scripts_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(yumi_scripts_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/yumi_scripts
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(yumi_scripts_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET moveit_msgs_generate_messages_py)
  add_dependencies(yumi_scripts_generate_messages_py moveit_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(yumi_scripts_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(yumi_scripts_generate_messages_py visualization_msgs_generate_messages_py)
endif()
