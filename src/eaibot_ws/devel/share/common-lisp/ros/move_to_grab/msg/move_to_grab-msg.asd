
(cl:in-package :asdf)

(defsystem "move_to_grab-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "LoopMoveToGrabMsg" :depends-on ("_package_LoopMoveToGrabMsg"))
    (:file "_package_LoopMoveToGrabMsg" :depends-on ("_package"))
    (:file "MoveToGrabMsg" :depends-on ("_package_MoveToGrabMsg"))
    (:file "_package_MoveToGrabMsg" :depends-on ("_package"))
  ))