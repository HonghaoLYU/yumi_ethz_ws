
(cl:in-package :asdf)

(defsystem "yumi_scripts-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :moveit_msgs-msg
)
  :components ((:file "_package")
    (:file "JointConfigMsg" :depends-on ("_package_JointConfigMsg"))
    (:file "_package_JointConfigMsg" :depends-on ("_package"))
    (:file "JointMsg" :depends-on ("_package_JointMsg"))
    (:file "_package_JointMsg" :depends-on ("_package"))
    (:file "ModuleDataMsg" :depends-on ("_package_ModuleDataMsg"))
    (:file "_package_ModuleDataMsg" :depends-on ("_package"))
    (:file "ModuleMsg" :depends-on ("_package_ModuleMsg"))
    (:file "_package_ModuleMsg" :depends-on ("_package"))
    (:file "PlannerMsg" :depends-on ("_package_PlannerMsg"))
    (:file "_package_PlannerMsg" :depends-on ("_package"))
    (:file "PoseConfigMsg" :depends-on ("_package_PoseConfigMsg"))
    (:file "_package_PoseConfigMsg" :depends-on ("_package"))
  ))