; Auto-generated. Do not edit!


(cl:in-package loop_move-msg)


;//! \htmlinclude LoopMoveMsg.msg.html

(cl:defclass <LoopMoveMsg> (roslisp-msg-protocol:ros-message)
  ((pose1
    :reader pose1
    :initarg :pose1
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (pose2
    :reader pose2
    :initarg :pose2
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped)))
)

(cl:defclass LoopMoveMsg (<LoopMoveMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LoopMoveMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LoopMoveMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name loop_move-msg:<LoopMoveMsg> is deprecated: use loop_move-msg:LoopMoveMsg instead.")))

(cl:ensure-generic-function 'pose1-val :lambda-list '(m))
(cl:defmethod pose1-val ((m <LoopMoveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader loop_move-msg:pose1-val is deprecated.  Use loop_move-msg:pose1 instead.")
  (pose1 m))

(cl:ensure-generic-function 'pose2-val :lambda-list '(m))
(cl:defmethod pose2-val ((m <LoopMoveMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader loop_move-msg:pose2-val is deprecated.  Use loop_move-msg:pose2 instead.")
  (pose2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LoopMoveMsg>) ostream)
  "Serializes a message object of type '<LoopMoveMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LoopMoveMsg>) istream)
  "Deserializes a message object of type '<LoopMoveMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LoopMoveMsg>)))
  "Returns string type for a message object of type '<LoopMoveMsg>"
  "loop_move/LoopMoveMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LoopMoveMsg)))
  "Returns string type for a message object of type 'LoopMoveMsg"
  "loop_move/LoopMoveMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LoopMoveMsg>)))
  "Returns md5sum for a message object of type '<LoopMoveMsg>"
  "db0db2066f7076a1006be5499d9857d7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LoopMoveMsg)))
  "Returns md5sum for a message object of type 'LoopMoveMsg"
  "db0db2066f7076a1006be5499d9857d7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LoopMoveMsg>)))
  "Returns full string definition for message of type '<LoopMoveMsg>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose1~%geometry_msgs/PoseStamped pose2~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LoopMoveMsg)))
  "Returns full string definition for message of type 'LoopMoveMsg"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose1~%geometry_msgs/PoseStamped pose2~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LoopMoveMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LoopMoveMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'LoopMoveMsg
    (cl:cons ':pose1 (pose1 msg))
    (cl:cons ':pose2 (pose2 msg))
))
