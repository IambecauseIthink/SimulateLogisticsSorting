;; Auto-generated. Do not edit!


(when (boundp 'loop_move::LoopMoveMsg)
  (if (not (find-package "LOOP_MOVE"))
    (make-package "LOOP_MOVE"))
  (shadow 'LoopMoveMsg (find-package "LOOP_MOVE")))
(unless (find-package "LOOP_MOVE::LOOPMOVEMSG")
  (make-package "LOOP_MOVE::LOOPMOVEMSG"))

(in-package "ROS")
;;//! \htmlinclude LoopMoveMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass loop_move::LoopMoveMsg
  :super ros::object
  :slots (_pose1 _pose2 ))

(defmethod loop_move::LoopMoveMsg
  (:init
   (&key
    ((:pose1 __pose1) (instance geometry_msgs::PoseStamped :init))
    ((:pose2 __pose2) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _pose1 __pose1)
   (setq _pose2 __pose2)
   self)
  (:pose1
   (&rest __pose1)
   (if (keywordp (car __pose1))
       (send* _pose1 __pose1)
     (progn
       (if __pose1 (setq _pose1 (car __pose1)))
       _pose1)))
  (:pose2
   (&rest __pose2)
   (if (keywordp (car __pose2))
       (send* _pose2 __pose2)
     (progn
       (if __pose2 (setq _pose2 (car __pose2)))
       _pose2)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose1
    (send _pose1 :serialization-length)
    ;; geometry_msgs/PoseStamped _pose2
    (send _pose2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose1
       (send _pose1 :serialize s)
     ;; geometry_msgs/PoseStamped _pose2
       (send _pose2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose1
     (send _pose1 :deserialize buf ptr-) (incf ptr- (send _pose1 :serialization-length))
   ;; geometry_msgs/PoseStamped _pose2
     (send _pose2 :deserialize buf ptr-) (incf ptr- (send _pose2 :serialization-length))
   ;;
   self)
  )

(setf (get loop_move::LoopMoveMsg :md5sum-) "db0db2066f7076a1006be5499d9857d7")
(setf (get loop_move::LoopMoveMsg :datatype-) "loop_move/LoopMoveMsg")
(setf (get loop_move::LoopMoveMsg :definition-)
      "geometry_msgs/PoseStamped pose1
geometry_msgs/PoseStamped pose2

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



(provide :loop_move/LoopMoveMsg "db0db2066f7076a1006be5499d9857d7")


