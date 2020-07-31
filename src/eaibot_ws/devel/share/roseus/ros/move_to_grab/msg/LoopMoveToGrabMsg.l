;; Auto-generated. Do not edit!


(when (boundp 'move_to_grab::LoopMoveToGrabMsg)
  (if (not (find-package "MOVE_TO_GRAB"))
    (make-package "MOVE_TO_GRAB"))
  (shadow 'LoopMoveToGrabMsg (find-package "MOVE_TO_GRAB")))
(unless (find-package "MOVE_TO_GRAB::LOOPMOVETOGRABMSG")
  (make-package "MOVE_TO_GRAB::LOOPMOVETOGRABMSG"))

(in-package "ROS")
;;//! \htmlinclude LoopMoveToGrabMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass move_to_grab::LoopMoveToGrabMsg
  :super ros::object
  :slots (_isLoop _action1 _action2 ))

(defmethod move_to_grab::LoopMoveToGrabMsg
  (:init
   (&key
    ((:isLoop __isLoop) (instance std_msgs::Bool :init))
    ((:action1 __action1) (instance move_to_grab::MoveToGrabMsg :init))
    ((:action2 __action2) (instance move_to_grab::MoveToGrabMsg :init))
    )
   (send-super :init)
   (setq _isLoop __isLoop)
   (setq _action1 __action1)
   (setq _action2 __action2)
   self)
  (:isLoop
   (&rest __isLoop)
   (if (keywordp (car __isLoop))
       (send* _isLoop __isLoop)
     (progn
       (if __isLoop (setq _isLoop (car __isLoop)))
       _isLoop)))
  (:action1
   (&rest __action1)
   (if (keywordp (car __action1))
       (send* _action1 __action1)
     (progn
       (if __action1 (setq _action1 (car __action1)))
       _action1)))
  (:action2
   (&rest __action2)
   (if (keywordp (car __action2))
       (send* _action2 __action2)
     (progn
       (if __action2 (setq _action2 (car __action2)))
       _action2)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Bool _isLoop
    (send _isLoop :serialization-length)
    ;; move_to_grab/MoveToGrabMsg _action1
    (send _action1 :serialization-length)
    ;; move_to_grab/MoveToGrabMsg _action2
    (send _action2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Bool _isLoop
       (send _isLoop :serialize s)
     ;; move_to_grab/MoveToGrabMsg _action1
       (send _action1 :serialize s)
     ;; move_to_grab/MoveToGrabMsg _action2
       (send _action2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Bool _isLoop
     (send _isLoop :deserialize buf ptr-) (incf ptr- (send _isLoop :serialization-length))
   ;; move_to_grab/MoveToGrabMsg _action1
     (send _action1 :deserialize buf ptr-) (incf ptr- (send _action1 :serialization-length))
   ;; move_to_grab/MoveToGrabMsg _action2
     (send _action2 :deserialize buf ptr-) (incf ptr- (send _action2 :serialization-length))
   ;;
   self)
  )

(setf (get move_to_grab::LoopMoveToGrabMsg :md5sum-) "8c0bfa85506ab2b9a3042cb471990b35")
(setf (get move_to_grab::LoopMoveToGrabMsg :datatype-) "move_to_grab/LoopMoveToGrabMsg")
(setf (get move_to_grab::LoopMoveToGrabMsg :definition-)
      "std_msgs/Bool isLoop
move_to_grab/MoveToGrabMsg action1
move_to_grab/MoveToGrabMsg action2

================================================================================
MSG: std_msgs/Bool
bool data
================================================================================
MSG: move_to_grab/MoveToGrabMsg
geometry_msgs/PoseStamped pose
std_msgs/Bool isSuckup
# std_msgs/Float32 backDistance 

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

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



(provide :move_to_grab/LoopMoveToGrabMsg "8c0bfa85506ab2b9a3042cb471990b35")


