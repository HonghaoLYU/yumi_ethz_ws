; Auto-generated. Do not edit!


(cl:in-package yumi_scripts-msg)


;//! \htmlinclude ModuleMsg.msg.html

(cl:defclass <ModuleMsg> (roslisp-msg-protocol:ros-message)
  ((group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (module_left
    :reader module_left
    :initarg :module_left
    :type yumi_scripts-msg:ModuleDataMsg
    :initform (cl:make-instance 'yumi_scripts-msg:ModuleDataMsg))
   (module_right
    :reader module_right
    :initarg :module_right
    :type yumi_scripts-msg:ModuleDataMsg
    :initform (cl:make-instance 'yumi_scripts-msg:ModuleDataMsg))
   (joint_trajectory
    :reader joint_trajectory
    :initarg :joint_trajectory
    :type (cl:vector yumi_scripts-msg:JointMsg)
   :initform (cl:make-array 0 :element-type 'yumi_scripts-msg:JointMsg :initial-element (cl:make-instance 'yumi_scripts-msg:JointMsg)))
   (total_joints
    :reader total_joints
    :initarg :total_joints
    :type cl:integer
    :initform 0)
   (total_points
    :reader total_points
    :initarg :total_points
    :type cl:integer
    :initform 0))
)

(cl:defclass ModuleMsg (<ModuleMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumi_scripts-msg:<ModuleMsg> is deprecated: use yumi_scripts-msg:ModuleMsg instead.")))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <ModuleMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:group_name-val is deprecated.  Use yumi_scripts-msg:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'module_left-val :lambda-list '(m))
(cl:defmethod module_left-val ((m <ModuleMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:module_left-val is deprecated.  Use yumi_scripts-msg:module_left instead.")
  (module_left m))

(cl:ensure-generic-function 'module_right-val :lambda-list '(m))
(cl:defmethod module_right-val ((m <ModuleMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:module_right-val is deprecated.  Use yumi_scripts-msg:module_right instead.")
  (module_right m))

(cl:ensure-generic-function 'joint_trajectory-val :lambda-list '(m))
(cl:defmethod joint_trajectory-val ((m <ModuleMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:joint_trajectory-val is deprecated.  Use yumi_scripts-msg:joint_trajectory instead.")
  (joint_trajectory m))

(cl:ensure-generic-function 'total_joints-val :lambda-list '(m))
(cl:defmethod total_joints-val ((m <ModuleMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:total_joints-val is deprecated.  Use yumi_scripts-msg:total_joints instead.")
  (total_joints m))

(cl:ensure-generic-function 'total_points-val :lambda-list '(m))
(cl:defmethod total_points-val ((m <ModuleMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:total_points-val is deprecated.  Use yumi_scripts-msg:total_points instead.")
  (total_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleMsg>) ostream)
  "Serializes a message object of type '<ModuleMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'module_left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'module_right) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_trajectory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_trajectory))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_joints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_joints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_joints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_joints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_points)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleMsg>) istream)
  "Deserializes a message object of type '<ModuleMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'module_left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'module_right) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_trajectory) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_trajectory)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yumi_scripts-msg:JointMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_joints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_joints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_joints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_joints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_points)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleMsg>)))
  "Returns string type for a message object of type '<ModuleMsg>"
  "yumi_scripts/ModuleMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleMsg)))
  "Returns string type for a message object of type 'ModuleMsg"
  "yumi_scripts/ModuleMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleMsg>)))
  "Returns md5sum for a message object of type '<ModuleMsg>"
  "25aac853187c477df279a09006782e49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleMsg)))
  "Returns md5sum for a message object of type 'ModuleMsg"
  "25aac853187c477df279a09006782e49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleMsg>)))
  "Returns full string definition for message of type '<ModuleMsg>"
  (cl:format cl:nil "string group_name~%ModuleDataMsg module_left~%ModuleDataMsg module_right~%JointMsg[] joint_trajectory~%uint32 total_joints~%uint32 total_points~%================================================================================~%MSG: yumi_scripts/ModuleDataMsg~%string group_name~%string[] pose_names~%PoseConfigMsg[] pose_configs~%bool gripper_attached~%uint32 total_points~%================================================================================~%MSG: yumi_scripts/PoseConfigMsg~%string group_name~%geometry_msgs/Pose pose~%int32[] confdata~%float64 external_axis_position~%bool gripper_attached~%float64 gripper_position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: yumi_scripts/JointMsg~%float64[] joint_values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleMsg)))
  "Returns full string definition for message of type 'ModuleMsg"
  (cl:format cl:nil "string group_name~%ModuleDataMsg module_left~%ModuleDataMsg module_right~%JointMsg[] joint_trajectory~%uint32 total_joints~%uint32 total_points~%================================================================================~%MSG: yumi_scripts/ModuleDataMsg~%string group_name~%string[] pose_names~%PoseConfigMsg[] pose_configs~%bool gripper_attached~%uint32 total_points~%================================================================================~%MSG: yumi_scripts/PoseConfigMsg~%string group_name~%geometry_msgs/Pose pose~%int32[] confdata~%float64 external_axis_position~%bool gripper_attached~%float64 gripper_position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: yumi_scripts/JointMsg~%float64[] joint_values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'module_left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'module_right))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_trajectory) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleMsg
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':module_left (module_left msg))
    (cl:cons ':module_right (module_right msg))
    (cl:cons ':joint_trajectory (joint_trajectory msg))
    (cl:cons ':total_joints (total_joints msg))
    (cl:cons ':total_points (total_points msg))
))
