;; Auto-generated. Do not edit!


(when (boundp 'yumi_scripts::ModuleDataMsg)
  (if (not (find-package "YUMI_SCRIPTS"))
    (make-package "YUMI_SCRIPTS"))
  (shadow 'ModuleDataMsg (find-package "YUMI_SCRIPTS")))
(unless (find-package "YUMI_SCRIPTS::MODULEDATAMSG")
  (make-package "YUMI_SCRIPTS::MODULEDATAMSG"))

(in-package "ROS")
;;//! \htmlinclude ModuleDataMsg.msg.html


(defclass yumi_scripts::ModuleDataMsg
  :super ros::object
  :slots (_group_name _pose_names _pose_configs _gripper_attached _total_points ))

(defmethod yumi_scripts::ModuleDataMsg
  (:init
   (&key
    ((:group_name __group_name) "")
    ((:pose_names __pose_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:pose_configs __pose_configs) (let (r) (dotimes (i 0) (push (instance yumi_scripts::PoseConfigMsg :init) r)) r))
    ((:gripper_attached __gripper_attached) nil)
    ((:total_points __total_points) 0)
    )
   (send-super :init)
   (setq _group_name (string __group_name))
   (setq _pose_names __pose_names)
   (setq _pose_configs __pose_configs)
   (setq _gripper_attached __gripper_attached)
   (setq _total_points (round __total_points))
   self)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:pose_names
   (&optional __pose_names)
   (if __pose_names (setq _pose_names __pose_names)) _pose_names)
  (:pose_configs
   (&rest __pose_configs)
   (if (keywordp (car __pose_configs))
       (send* _pose_configs __pose_configs)
     (progn
       (if __pose_configs (setq _pose_configs (car __pose_configs)))
       _pose_configs)))
  (:gripper_attached
   (&optional __gripper_attached)
   (if __gripper_attached (setq _gripper_attached __gripper_attached)) _gripper_attached)
  (:total_points
   (&optional __total_points)
   (if __total_points (setq _total_points __total_points)) _total_points)
  (:serialization-length
   ()
   (+
    ;; string _group_name
    4 (length _group_name)
    ;; string[] _pose_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _pose_names)) 4
    ;; yumi_scripts/PoseConfigMsg[] _pose_configs
    (apply #'+ (send-all _pose_configs :serialization-length)) 4
    ;; bool _gripper_attached
    1
    ;; uint32 _total_points
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; string[] _pose_names
     (write-long (length _pose_names) s)
     (dolist (elem _pose_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; yumi_scripts/PoseConfigMsg[] _pose_configs
     (write-long (length _pose_configs) s)
     (dolist (elem _pose_configs)
       (send elem :serialize s)
       )
     ;; bool _gripper_attached
       (if _gripper_attached (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _total_points
       (write-long _total_points s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _pose_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _pose_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; yumi_scripts/PoseConfigMsg[] _pose_configs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_configs (let (r) (dotimes (i n) (push (instance yumi_scripts::PoseConfigMsg :init) r)) r))
     (dolist (elem- _pose_configs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _gripper_attached
     (setq _gripper_attached (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _total_points
     (setq _total_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yumi_scripts::ModuleDataMsg :md5sum-) "1a67dafea575532d17cc4f00f410a69f")
(setf (get yumi_scripts::ModuleDataMsg :datatype-) "yumi_scripts/ModuleDataMsg")
(setf (get yumi_scripts::ModuleDataMsg :definition-)
      "string group_name
string[] pose_names
PoseConfigMsg[] pose_configs
bool gripper_attached
uint32 total_points
================================================================================
MSG: yumi_scripts/PoseConfigMsg
string group_name
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



(provide :yumi_scripts/ModuleDataMsg "1a67dafea575532d17cc4f00f410a69f")


