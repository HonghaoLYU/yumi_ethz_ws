;; Auto-generated. Do not edit!


(when (boundp 'yumi_scripts::ModuleMsg)
  (if (not (find-package "YUMI_SCRIPTS"))
    (make-package "YUMI_SCRIPTS"))
  (shadow 'ModuleMsg (find-package "YUMI_SCRIPTS")))
(unless (find-package "YUMI_SCRIPTS::MODULEMSG")
  (make-package "YUMI_SCRIPTS::MODULEMSG"))

(in-package "ROS")
;;//! \htmlinclude ModuleMsg.msg.html


(defclass yumi_scripts::ModuleMsg
  :super ros::object
  :slots (_group_name _module_left _module_right _joint_trajectory _total_joints _total_points ))

(defmethod yumi_scripts::ModuleMsg
  (:init
   (&key
    ((:group_name __group_name) "")
    ((:module_left __module_left) (instance yumi_scripts::ModuleDataMsg :init))
    ((:module_right __module_right) (instance yumi_scripts::ModuleDataMsg :init))
    ((:joint_trajectory __joint_trajectory) (let (r) (dotimes (i 0) (push (instance yumi_scripts::JointMsg :init) r)) r))
    ((:total_joints __total_joints) 0)
    ((:total_points __total_points) 0)
    )
   (send-super :init)
   (setq _group_name (string __group_name))
   (setq _module_left __module_left)
   (setq _module_right __module_right)
   (setq _joint_trajectory __joint_trajectory)
   (setq _total_joints (round __total_joints))
   (setq _total_points (round __total_points))
   self)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:module_left
   (&rest __module_left)
   (if (keywordp (car __module_left))
       (send* _module_left __module_left)
     (progn
       (if __module_left (setq _module_left (car __module_left)))
       _module_left)))
  (:module_right
   (&rest __module_right)
   (if (keywordp (car __module_right))
       (send* _module_right __module_right)
     (progn
       (if __module_right (setq _module_right (car __module_right)))
       _module_right)))
  (:joint_trajectory
   (&rest __joint_trajectory)
   (if (keywordp (car __joint_trajectory))
       (send* _joint_trajectory __joint_trajectory)
     (progn
       (if __joint_trajectory (setq _joint_trajectory (car __joint_trajectory)))
       _joint_trajectory)))
  (:total_joints
   (&optional __total_joints)
   (if __total_joints (setq _total_joints __total_joints)) _total_joints)
  (:total_points
   (&optional __total_points)
   (if __total_points (setq _total_points __total_points)) _total_points)
  (:serialization-length
   ()
   (+
    ;; string _group_name
    4 (length _group_name)
    ;; yumi_scripts/ModuleDataMsg _module_left
    (send _module_left :serialization-length)
    ;; yumi_scripts/ModuleDataMsg _module_right
    (send _module_right :serialization-length)
    ;; yumi_scripts/JointMsg[] _joint_trajectory
    (apply #'+ (send-all _joint_trajectory :serialization-length)) 4
    ;; uint32 _total_joints
    4
    ;; uint32 _total_points
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; yumi_scripts/ModuleDataMsg _module_left
       (send _module_left :serialize s)
     ;; yumi_scripts/ModuleDataMsg _module_right
       (send _module_right :serialize s)
     ;; yumi_scripts/JointMsg[] _joint_trajectory
     (write-long (length _joint_trajectory) s)
     (dolist (elem _joint_trajectory)
       (send elem :serialize s)
       )
     ;; uint32 _total_joints
       (write-long _total_joints s)
     ;; uint32 _total_points
       (write-long _total_points s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; yumi_scripts/ModuleDataMsg _module_left
     (send _module_left :deserialize buf ptr-) (incf ptr- (send _module_left :serialization-length))
   ;; yumi_scripts/ModuleDataMsg _module_right
     (send _module_right :deserialize buf ptr-) (incf ptr- (send _module_right :serialization-length))
   ;; yumi_scripts/JointMsg[] _joint_trajectory
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_trajectory (let (r) (dotimes (i n) (push (instance yumi_scripts::JointMsg :init) r)) r))
     (dolist (elem- _joint_trajectory)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _total_joints
     (setq _total_joints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _total_points
     (setq _total_points (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yumi_scripts::ModuleMsg :md5sum-) "25aac853187c477df279a09006782e49")
(setf (get yumi_scripts::ModuleMsg :datatype-) "yumi_scripts/ModuleMsg")
(setf (get yumi_scripts::ModuleMsg :definition-)
      "string group_name
ModuleDataMsg module_left
ModuleDataMsg module_right
JointMsg[] joint_trajectory
uint32 total_joints
uint32 total_points
================================================================================
MSG: yumi_scripts/ModuleDataMsg
string group_name
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

================================================================================
MSG: yumi_scripts/JointMsg
float64[] joint_values
")



(provide :yumi_scripts/ModuleMsg "25aac853187c477df279a09006782e49")


