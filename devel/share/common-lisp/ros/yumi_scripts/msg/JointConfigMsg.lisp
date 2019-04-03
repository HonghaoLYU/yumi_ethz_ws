; Auto-generated. Do not edit!


(cl:in-package yumi_scripts-msg)


;//! \htmlinclude JointConfigMsg.msg.html

(cl:defclass <JointConfigMsg> (roslisp-msg-protocol:ros-message)
  ((group_name
    :reader group_name
    :initarg :group_name
    :type cl:string
    :initform "")
   (joints
    :reader joints
    :initarg :joints
    :type yumi_scripts-msg:JointMsg
    :initform (cl:make-instance 'yumi_scripts-msg:JointMsg))
   (total_joints
    :reader total_joints
    :initarg :total_joints
    :type cl:integer
    :initform 0))
)

(cl:defclass JointConfigMsg (<JointConfigMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointConfigMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointConfigMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumi_scripts-msg:<JointConfigMsg> is deprecated: use yumi_scripts-msg:JointConfigMsg instead.")))

(cl:ensure-generic-function 'group_name-val :lambda-list '(m))
(cl:defmethod group_name-val ((m <JointConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:group_name-val is deprecated.  Use yumi_scripts-msg:group_name instead.")
  (group_name m))

(cl:ensure-generic-function 'joints-val :lambda-list '(m))
(cl:defmethod joints-val ((m <JointConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:joints-val is deprecated.  Use yumi_scripts-msg:joints instead.")
  (joints m))

(cl:ensure-generic-function 'total_joints-val :lambda-list '(m))
(cl:defmethod total_joints-val ((m <JointConfigMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:total_joints-val is deprecated.  Use yumi_scripts-msg:total_joints instead.")
  (total_joints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointConfigMsg>) ostream)
  "Serializes a message object of type '<JointConfigMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'group_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'group_name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joints) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_joints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_joints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_joints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_joints)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointConfigMsg>) istream)
  "Deserializes a message object of type '<JointConfigMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'group_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'group_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joints) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'total_joints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'total_joints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'total_joints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'total_joints)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointConfigMsg>)))
  "Returns string type for a message object of type '<JointConfigMsg>"
  "yumi_scripts/JointConfigMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointConfigMsg)))
  "Returns string type for a message object of type 'JointConfigMsg"
  "yumi_scripts/JointConfigMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointConfigMsg>)))
  "Returns md5sum for a message object of type '<JointConfigMsg>"
  "f0f52f3d837f89f138f5c791e3fdd443")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointConfigMsg)))
  "Returns md5sum for a message object of type 'JointConfigMsg"
  "f0f52f3d837f89f138f5c791e3fdd443")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointConfigMsg>)))
  "Returns full string definition for message of type '<JointConfigMsg>"
  (cl:format cl:nil "string group_name~%JointMsg joints~%uint32 total_joints~%================================================================================~%MSG: yumi_scripts/JointMsg~%float64[] joint_values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointConfigMsg)))
  "Returns full string definition for message of type 'JointConfigMsg"
  (cl:format cl:nil "string group_name~%JointMsg joints~%uint32 total_joints~%================================================================================~%MSG: yumi_scripts/JointMsg~%float64[] joint_values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointConfigMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'group_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joints))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointConfigMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'JointConfigMsg
    (cl:cons ':group_name (group_name msg))
    (cl:cons ':joints (joints msg))
    (cl:cons ':total_joints (total_joints msg))
))
