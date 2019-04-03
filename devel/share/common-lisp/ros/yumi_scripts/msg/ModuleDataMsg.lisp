; Auto-generated. Do not edit!


(cl:in-package yumi_scripts-msg)


;//! \htmlinclude ModuleDataMsg.msg.html

(cl:defclass <ModuleDataMsg> (roslisp-msg-protocol:ros-message)
  ((group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (pose_names
    :reader pose_names
    :initarg :pose_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (pose_configs
    :reader pose_configs
    :initarg :pose_configs
    :type (cl:vector yumi_scripts-msg:PoseConfigMsg)
   :initform (cl:make-array 0 :element-type 'yumi_scripts-msg:PoseConfigMsg :initial-element (cl:make-instance 'yumi_scripts-msg:PoseConfigMsg)))
   (gripper_attached
    :reader gripper_attached
    :initarg :gripper_attached
    :type cl:boolean
    :initform cl:nil)
   (total_points
    :reader total_points
    :initarg :total_points
    :type cl:integer
    :initform 0))
)

(cl:defclass ModuleDataMsg (<ModuleDataMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ModuleDataMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ModuleDataMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumi_scripts-msg:<ModuleDataMsg> is deprecated: use yumi_scripts-msg:ModuleDataMsg instead.")))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <ModuleDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:group_name-val is deprecated.  Use yumi_scripts-msg:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'pose_names-val :lambda-list '(m))
(cl:defmethod pose_names-val ((m <ModuleDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:pose_names-val is deprecated.  Use yumi_scripts-msg:pose_names instead.")
  (pose_names m))

(cl:ensure-generic-function 'pose_configs-val :lambda-list '(m))
(cl:defmethod pose_configs-val ((m <ModuleDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:pose_configs-val is deprecated.  Use yumi_scripts-msg:pose_configs instead.")
  (pose_configs m))

(cl:ensure-generic-function 'gripper_attached-val :lambda-list '(m))
(cl:defmethod gripper_attached-val ((m <ModuleDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:gripper_attached-val is deprecated.  Use yumi_scripts-msg:gripper_attached instead.")
  (gripper_attached m))

(cl:ensure-generic-function 'total_points-val :lambda-list '(m))
(cl:defmethod total_points-val ((m <ModuleDataMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:total_points-val is deprecated.  Use yumi_scripts-msg:total_points instead.")
  (total_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ModuleDataMsg>) ostream)
  "Serializes a message object of type '<ModuleDataMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'pose_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_configs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_configs))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gripper_attached) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_points)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_points)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ModuleDataMsg>) istream)
  "Deserializes a message object of type '<ModuleDataMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_configs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_configs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'yumi_scripts-msg:PoseConfigMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'gripper_attached) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_points)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_points)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ModuleDataMsg>)))
  "Returns string type for a message object of type '<ModuleDataMsg>"
  "yumi_scripts/ModuleDataMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ModuleDataMsg)))
  "Returns string type for a message object of type 'ModuleDataMsg"
  "yumi_scripts/ModuleDataMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ModuleDataMsg>)))
  "Returns md5sum for a message object of type '<ModuleDataMsg>"
  "1a67dafea575532d17cc4f00f410a69f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ModuleDataMsg)))
  "Returns md5sum for a message object of type 'ModuleDataMsg"
  "1a67dafea575532d17cc4f00f410a69f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ModuleDataMsg>)))
  "Returns full string definition for message of type '<ModuleDataMsg>"
  (cl:format cl:nil "string group_name~%string[] pose_names~%PoseConfigMsg[] pose_configs~%bool gripper_attached~%uint32 total_points~%================================================================================~%MSG: yumi_scripts/PoseConfigMsg~%string group_name~%geometry_msgs/Pose pose~%int32[] confdata~%float64 external_axis_position~%bool gripper_attached~%float64 gripper_position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ModuleDataMsg)))
  "Returns full string definition for message of type 'ModuleDataMsg"
  (cl:format cl:nil "string group_name~%string[] pose_names~%PoseConfigMsg[] pose_configs~%bool gripper_attached~%uint32 total_points~%================================================================================~%MSG: yumi_scripts/PoseConfigMsg~%string group_name~%geometry_msgs/Pose pose~%int32[] confdata~%float64 external_axis_position~%bool gripper_attached~%float64 gripper_position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ModuleDataMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_configs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ModuleDataMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ModuleDataMsg
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':pose_names (pose_names msg))
    (cl:cons ':pose_configs (pose_configs msg))
    (cl:cons ':gripper_attached (gripper_attached msg))
    (cl:cons ':total_points (total_points msg))
))
