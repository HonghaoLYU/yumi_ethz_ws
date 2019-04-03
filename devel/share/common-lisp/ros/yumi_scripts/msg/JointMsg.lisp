; Auto-generated. Do not edit!


(cl:in-package yumi_scripts-msg)


;//! \htmlinclude JointMsg.msg.html

(cl:defclass <JointMsg> (roslisp-msg-protocol:ros-message)
  ((joint_values
    :reader joint_values
    :initarg :joint_values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JointMsg (<JointMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name yumi_scripts-msg:<JointMsg> is deprecated: use yumi_scripts-msg:JointMsg instead.")))

(cl:ensure-generic-function 'joint_values-val :lambda-list '(m))
(cl:defmethod joint_values-val ((m <JointMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader yumi_scripts-msg:joint_values-val is deprecated.  Use yumi_scripts-msg:joint_values instead.")
  (joint_values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointMsg>) ostream)
  "Serializes a message object of type '<JointMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'joint_values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointMsg>) istream)
  "Deserializes a message object of type '<JointMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointMsg>)))
  "Returns string type for a message object of type '<JointMsg>"
  "yumi_scripts/JointMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointMsg)))
  "Returns string type for a message object of type 'JointMsg"
  "yumi_scripts/JointMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointMsg>)))
  "Returns md5sum for a message object of type '<JointMsg>"
  "b79b974a6ae3f399e6d798ff6613e367")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointMsg)))
  "Returns md5sum for a message object of type 'JointMsg"
  "b79b974a6ae3f399e6d798ff6613e367")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointMsg>)))
  "Returns full string definition for message of type '<JointMsg>"
  (cl:format cl:nil "float64[] joint_values~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointMsg)))
  "Returns full string definition for message of type 'JointMsg"
  (cl:format cl:nil "float64[] joint_values~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'JointMsg
    (cl:cons ':joint_values (joint_values msg))
))
