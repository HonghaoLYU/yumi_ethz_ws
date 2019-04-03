;; Auto-generated. Do not edit!


(when (boundp 'yumi_scripts::JointConfigMsg)
  (if (not (find-package "YUMI_SCRIPTS"))
    (make-package "YUMI_SCRIPTS"))
  (shadow 'JointConfigMsg (find-package "YUMI_SCRIPTS")))
(unless (find-package "YUMI_SCRIPTS::JOINTCONFIGMSG")
  (make-package "YUMI_SCRIPTS::JOINTCONFIGMSG"))

(in-package "ROS")
;;//! \htmlinclude JointConfigMsg.msg.html


(defclass yumi_scripts::JointConfigMsg
  :super ros::object
  :slots (_group_name _joints _total_joints ))

(defmethod yumi_scripts::JointConfigMsg
  (:init
   (&key
    ((:group_name __group_name) "")
    ((:joints __joints) (instance yumi_scripts::JointMsg :init))
    ((:total_joints __total_joints) 0)
    )
   (send-super :init)
   (setq _group_name (string __group_name))
   (setq _joints __joints)
   (setq _total_joints (round __total_joints))
   self)
  (:group_name
   (&optional __group_name)
   (if __group_name (setq _group_name __group_name)) _group_name)
  (:joints
   (&rest __joints)
   (if (keywordp (car __joints))
       (send* _joints __joints)
     (progn
       (if __joints (setq _joints (car __joints)))
       _joints)))
  (:total_joints
   (&optional __total_joints)
   (if __total_joints (setq _total_joints __total_joints)) _total_joints)
  (:serialization-length
   ()
   (+
    ;; string _group_name
    4 (length _group_name)
    ;; yumi_scripts/JointMsg _joints
    (send _joints :serialization-length)
    ;; uint32 _total_joints
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _group_name
       (write-long (length _group_name) s) (princ _group_name s)
     ;; yumi_scripts/JointMsg _joints
       (send _joints :serialize s)
     ;; uint32 _total_joints
       (write-long _total_joints s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _group_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _group_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; yumi_scripts/JointMsg _joints
     (send _joints :deserialize buf ptr-) (incf ptr- (send _joints :serialization-length))
   ;; uint32 _total_joints
     (setq _total_joints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get yumi_scripts::JointConfigMsg :md5sum-) "f0f52f3d837f89f138f5c791e3fdd443")
(setf (get yumi_scripts::JointConfigMsg :datatype-) "yumi_scripts/JointConfigMsg")
(setf (get yumi_scripts::JointConfigMsg :definition-)
      "string group_name
JointMsg joints
uint32 total_joints
================================================================================
MSG: yumi_scripts/JointMsg
float64[] joint_values
")



(provide :yumi_scripts/JointConfigMsg "f0f52f3d837f89f138f5c791e3fdd443")


