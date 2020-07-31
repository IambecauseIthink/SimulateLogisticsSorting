
(cl:in-package :asdf)

(defsystem "loop_move-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "LoopMoveMsg" :depends-on ("_package_LoopMoveMsg"))
    (:file "_package_LoopMoveMsg" :depends-on ("_package"))
  ))