; Auto-generated. Do not edit!


(cl:in-package move_to_grab-msg)


;//! \htmlinclude LoopMoveToGrabMsg.msg.html

(cl:defclass <LoopMoveToGrabMsg> (roslisp-msg-protocol:ros-message)
  ((isLoop
    :reader isLoop
    :initarg :isLoop
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (action1
    :reader action1
    :initarg :action1
    :type move_to_grab-msg:MoveToGrabMsg
    :initform (cl:make-instance 'move_to_grab-msg:MoveToGrabMsg))
   (action2
    :reader action2
    :initarg :action2
    :type move_to_grab-msg:MoveToGrabMsg
    :initform (cl:make-instance 'move_to_grab-msg:MoveToGrabMsg)))
)

(cl:defclass LoopMoveToGrabMsg (<LoopMoveToGrabMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopMoveToGrabMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopMoveToGrabMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_to_grab-msg:<LoopMoveToGrabMsg> is deprecated: use move_to_grab-msg:LoopMoveToGrabMsg instead.")))

(cl:ensure-generic-function 'isLoop-val :lambda-list '(m))
(cl:defmethod isLoop-val ((m <LoopMoveToGrabMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_to_grab-msg:isLoop-val is deprecated.  Use move_to_grab-msg:isLoop instead.")
  (isLoop m))

(cl:ensure-generic-function 'action1-val :lambda-list '(m))
(cl:defmethod action1-val ((m <LoopMoveToGrabMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_to_grab-msg:action1-val is deprecated.  Use move_to_grab-msg:action1 instead.")
  (action1 m))

(cl:ensure-generic-function 'action2-val :lambda-list '(m))
(cl:defmethod action2-val ((m <LoopMoveToGrabMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_to_grab-msg:action2-val is deprecated.  Use move_to_grab-msg:action2 instead.")
  (action2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopMoveToGrabMsg>) ostream)
  "Serializes a message object of type '<LoopMoveToGrabMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'isLoop) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopMoveToGrabMsg>) istream)
  "Deserializes a message object of type '<LoopMoveToGrabMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'isLoop) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopMoveToGrabMsg>)))
  "Returns string type for a message object of type '<LoopMoveToGrabMsg>"
  "move_to_grab/LoopMoveToGrabMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopMoveToGrabMsg)))
  "Returns string type for a message object of type 'LoopMoveToGrabMsg"
  "move_to_grab/LoopMoveToGrabMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopMoveToGrabMsg>)))
  "Returns md5sum for a message object of type '<LoopMoveToGrabMsg>"
  "8c0bfa85506ab2b9a3042cb471990b35")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopMoveToGrabMsg)))
  "Returns md5sum for a message object of type 'LoopMoveToGrabMsg"
  "8c0bfa85506ab2b9a3042cb471990b35")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopMoveToGrabMsg>)))
  "Returns full string definition for message of type '<LoopMoveToGrabMsg>"
  (cl:format cl:nil "std_msgs/Bool isLoop~%move_to_grab/MoveToGrabMsg action1~%move_to_grab/MoveToGrabMsg action2~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: move_to_grab/MoveToGrabMsg~%geometry_msgs/PoseStamped pose~%std_msgs/Bool isSuckup~%# std_msgs/Float32 backDistance ~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopMoveToGrabMsg)))
  "Returns full string definition for message of type 'LoopMoveToGrabMsg"
  (cl:format cl:nil "std_msgs/Bool isLoop~%move_to_grab/MoveToGrabMsg action1~%move_to_grab/MoveToGrabMsg action2~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%================================================================================~%MSG: move_to_grab/MoveToGrabMsg~%geometry_msgs/PoseStamped pose~%std_msgs/Bool isSuckup~%# std_msgs/Float32 backDistance ~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopMoveToGrabMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'isLoop))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopMoveToGrabMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopMoveToGrabMsg
    (cl:cons ':isLoop (isLoop msg))
    (cl:cons ':action1 (action1 msg))
    (cl:cons ':action2 (action2 msg))
))
