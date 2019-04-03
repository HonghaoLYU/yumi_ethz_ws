; Auto-generated. Do not edit!


(cl:in-package yumi_scripts-msg)


;//! \htmlinclude PoseConfigMsg.msg.html

(cl:defclass <PoseConfigMsg> (roslisp-msg-protocol:ros-message)
  ((group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (confdata
    :reader confdata
    :initarg :confdata
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (external_axis_position
    :reader external_axis_position
    :initarg :external_axis_position
    :type cl:float
    :initform 0.0)
   (gripper_attached
    :reader gripper_attached
    :initarg :gripper_attached
    :type cl:boolean
    :initform cl:nil)
   (gripper_position
    :reader gripper_position
    :initarg :gripper_position
    :type cl:float
    :initform 0.0))
)

(cl:defclass PoseConfigMsg (<PoseConfigMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PoseConfigMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PoseConfigMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumi_scripts-msg:<PoseConfigMsg> is deprecated: use yumi_scripts-msg:PoseConfigMsg instead.")))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <PoseConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:group_name-val is deprecated.  Use yumi_scripts-msg:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PoseConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:pose-val is deprecated.  Use yumi_scripts-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'confdata-val :lambda-list '(m))
(cl:defmethod confdata-val ((m <PoseConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:confdata-val is deprecated.  Use yumi_scripts-msg:confdata instead.")
  (confdata m))

(cl:ensure-generic-function 'external_axis_position-val :lambda-list '(m))
(cl:defmethod external_axis_position-val ((m <PoseConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:external_axis_position-val is deprecated.  Use yumi_scripts-msg:external_axis_position instead.")
  (external_axis_position m))

(cl:ensure-generic-function 'gripper_attached-val :lambda-list '(m))
(cl:defmethod gripper_attached-val ((m <PoseConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:gripper_attached-val is deprecated.  Use yumi_scripts-msg:gripper_attached instead.")
  (gripper_attached m))

(cl:ensure-generic-function 'gripper_position-val :lambda-list '(m))
(cl:defmethod gripper_position-val ((m <PoseConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:gripper_position-val is deprecated.  Use yumi_scripts-msg:gripper_position instead.")
  (gripper_position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PoseConfigMsg>) ostream)
  "Serializes a message object of type '<PoseConfigMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'confdata))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'confdata))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'external_axis_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gripper_attached) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gripper_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PoseConfigMsg>) istream)
  "Deserializes a message object of type '<PoseConfigMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'confdata) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'confdata)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'external_axis_position) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'gripper_attached) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gripper_position) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PoseConfigMsg>)))
  "Returns string type for a message object of type '<PoseConfigMsg>"
  "yumi_scripts/PoseConfigMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PoseConfigMsg)))
  "Returns string type for a message object of type 'PoseConfigMsg"
  "yumi_scripts/PoseConfigMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PoseConfigMsg>)))
  "Returns md5sum for a message object of type '<PoseConfigMsg>"
  "45da748a00accc427392a77b8503106f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PoseConfigMsg)))
  "Returns md5sum for a message object of type 'PoseConfigMsg"
  "45da748a00accc427392a77b8503106f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PoseConfigMsg>)))
  "Returns full string definition for message of type '<PoseConfigMsg>"
  (cl:format cl:nil "string group_name~%geometry_msgs/Pose pose~%int32[] confdata~%float64 external_axis_position~%bool gripper_attached~%float64 gripper_position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PoseConfigMsg)))
  "Returns full string definition for message of type 'PoseConfigMsg"
  (cl:format cl:nil "string group_name~%geometry_msgs/Pose pose~%int32[] confdata~%float64 external_axis_position~%bool gripper_attached~%float64 gripper_position~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PoseConfigMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'confdata) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     8
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PoseConfigMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PoseConfigMsg
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':confdata (confdata msg))
    (cl:cons ':external_axis_position (external_axis_position msg))
    (cl:cons ':gripper_attached (gripper_attached msg))
    (cl:cons ':gripper_position (gripper_position msg))
))
