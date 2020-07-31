;; Auto-generated. Do not edit!


(when (boundp 'move_to_grab::MoveToGrabMsg)
  (if (not (find-package "MOVE_TO_GRAB"))
    (make-package "MOVE_TO_GRAB"))
  (shadow 'MoveToGrabMsg (find-package "MOVE_TO_GRAB")))
(unless (find-package "MOVE_TO_GRAB::MOVETOGRABMSG")
  (make-package "MOVE_TO_GRAB::MOVETOGRABMSG"))

(in-package "ROS")
;;//! \htmlinclude MoveToGrabMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass move_to_grab::MoveToGrabMsg
  :super ros::object
  :slots (_pose _isSuckup ))

(defmethod move_to_grab::MoveToGrabMsg
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    ((:isSuckup __isSuckup) (instance std_msgs::Bool :init))
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _isSuckup __isSuckup)
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:isSuckup
   (&rest __isSuckup)
   (if (keywordp (car __isSuckup))
       (send* _isSuckup __isSuckup)
     (progn
       (if __isSuckup (setq _isSuckup (car __isSuckup)))
       _isSuckup)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ;; std_msgs/Bool _isSuckup
    (send _isSuckup :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;; std_msgs/Bool _isSuckup
       (send _isSuckup :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; std_msgs/Bool _isSuckup
     (send _isSuckup :deserialize buf ptr-) (incf ptr- (send _isSuckup :serialization-length))
   ;;
   self)
  )

(setf (get move_to_grab::MoveToGrabMsg :md5sum-) "5e1a5283322840134cbb0f65a53841c3")
(setf (get move_to_grab::MoveToGrabMsg :datatype-) "move_to_grab/MoveToGrabMsg")
(setf (get move_to_grab::MoveToGrabMsg :definition-)
      "geometry_msgs/PoseStamped pose
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

================================================================================
MSG: std_msgs/Bool
bool data
")



(provide :move_to_grab/MoveToGrabMsg "5e1a5283322840134cbb0f65a53841c3")


