;; Auto-generated. Do not edit!


(when (boundp 'yumi_scripts::JointMsg)
  (if (not (find-package "YUMI_SCRIPTS"))
    (make-package "YUMI_SCRIPTS"))
  (shadow 'JointMsg (find-package "YUMI_SCRIPTS")))
(unless (find-package "YUMI_SCRIPTS::JOINTMSG")
  (make-package "YUMI_SCRIPTS::JOINTMSG"))

(in-package "ROS")
;;//! \htmlinclude JointMsg.msg.html


(defclass yumi_scripts::JointMsg
  :super ros::object
  :slots (_joint_values ))

(defmethod yumi_scripts::JointMsg
  (:init
   (&key
    ((:joint_values __joint_values) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_values __joint_values)
   self)
  (:joint_values
   (&optional __joint_values)
   (if __joint_values (setq _joint_values __joint_values)) _joint_values)
  (:serialization-length
   ()
   (+
    ;; float64[] _joint_values
    (* 8    (length _joint_values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _joint_values
     (write-long (length _joint_values) s)
     (dotimes (i (length _joint_values))
       (sys::poke (elt _joint_values i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _joint_values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_values (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _joint_values i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get yumi_scripts::JointMsg :md5sum-) "b79b974a6ae3f399e6d798ff6613e367")
(setf (get yumi_scripts::JointMsg :datatype-) "yumi_scripts/JointMsg")
(setf (get yumi_scripts::JointMsg :definition-)
      "float64[] joint_values
")



(provide :yumi_scripts/JointMsg "b79b974a6ae3f399e6d798ff6613e367")


