;; Auto-generated. Do not edit!


(when (boundp 'yumi_scripts::PoseConfigMsg)
  (if (not (find-package "YUMI_SCRIPTS"))
    (make-package "YUMI_SCRIPTS"))
  (shadow 'PoseConfigMsg (find-package "YUMI_SCRIPTS")))
(unless (find-package "YUMI_SCRIPTS::POSECONFIGMSG")
  (make-package "YUMI_SCRIPTS::POSECONFIGMSG"))

(in-package "ROS")
;;//! \htmlinclude PoseConfigMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass yumi_scripts::PoseConfigMsg
  :super ros::object
  :slots (_group_name _pose _confdata _external_axis_position _gripper_attached _gripper_position ))

(defmethod yumi_scripts::PoseConfigMsg
  (:init
   (&key
    ((:group_name __group_name) "")
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:confdata __confdata) (make-array 0 :initial-element 0 :element-type :integer))
    ((:external_axis_position __external_axis_position) 0.0)
    ((:gripper_attached __gripper_attached) nil)
    ((:gripper_position __gripper_position) 0.0)
    )
   (send-super :init)
   (setq _group_name (string __group_name))
   (setq _pose __pose)
   (setq _confdata __confdata)
   (setq _external_axis_position (float __external_axis_position))
   (setq _gripper_attached __gripper_attached)
   (setq _gripper_position (float __gripper_position))
   self)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:confdata
   (&optional __confdata)
   (if __confdata (setq _confdata __confdata)) _confdata)
  (:external_axis_position
   (&optional __external_axis_position)
   (if __external_axis_position (setq _external_axis_position __external_axis_position)) _external_axis_position)
  (:gripper_attached
   (&optional __gripper_attached)
   (if __gripper_attached (setq _gripper_attached __gripper_attached)) _gripper_attached)
  (:gripper_position
   (&optional __gripper_position)
   (if __gripper_position (setq _gripper_position __gripper_position)) _gripper_position)
  (:serialization-length
   ()
   (+
    ;; string _group_name
    4 (length _group_name)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; int32[] _confdata
    (* 4    (length _confdata)) 4
    ;; float64 _external_axis_position
    8
    ;; bool _gripper_attached
    1
    ;; float64 _gripper_position
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; int32[] _confdata
     (write-long (length _confdata) s)
     (dotimes (i (length _confdata))
       (write-long (elt _confdata i) s)
       )
     ;; float64 _external_axis_position
       (sys::poke _external_axis_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _gripper_attached
       (if _gripper_attached (write-byte -1 s) (write-byte 0 s))
     ;; float64 _gripper_position
       (sys::poke _gripper_position (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int32[] _confdata
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _confdata (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _confdata i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64 _external_axis_position
     (setq _external_axis_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _gripper_attached
     (setq _gripper_attached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _gripper_position
     (setq _gripper_position (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get yumi_scripts::PoseConfigMsg :md5sum-) "45da748a00accc427392a77b8503106f")
(setf (get yumi_scripts::PoseConfigMsg :datatype-) "yumi_scripts/PoseConfigMsg")
(setf (get yumi_scripts::PoseConfigMsg :definition-)
      "string group_name
geometry_msgs/Pose pose
int32[] confdata
float64 external_axis_position
bool gripper_attached
float64 gripper_position
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :yumi_scripts/PoseConfigMsg "45da748a00accc427392a77b8503106f")


