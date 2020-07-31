; Auto-generated. Do not edit!


(cl:in-package move_to_grab-msg)


;//! \htmlinclude MoveToGrabMsg.msg.html

(cl:defclass <MoveToGrabMsg> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (isSuckup
    :reader isSuckup
    :initarg :isSuckup
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass MoveToGrabMsg (<MoveToGrabMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveToGrabMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveToGrabMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name move_to_grab-msg:<MoveToGrabMsg> is deprecated: use move_to_grab-msg:MoveToGrabMsg instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MoveToGrabMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_to_grab-msg:pose-val is deprecated.  Use move_to_grab-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'isSuckup-val :lambda-list '(m))
(cl:defmethod isSuckup-val ((m <MoveToGrabMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader move_to_grab-msg:isSuckup-val is deprecated.  Use move_to_grab-msg:isSuckup instead.")
  (isSuckup m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveToGrabMsg>) ostream)
  "Serializes a message object of type '<MoveToGrabMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'isSuckup) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveToGrabMsg>) istream)
  "Deserializes a message object of type '<MoveToGrabMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'isSuckup) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveToGrabMsg>)))
  "Returns string type for a message object of type '<MoveToGrabMsg>"
  "move_to_grab/MoveToGrabMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveToGrabMsg)))
  "Returns string type for a message object of type 'MoveToGrabMsg"
  "move_to_grab/MoveToGrabMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveToGrabMsg>)))
  "Returns md5sum for a message object of type '<MoveToGrabMsg>"
  "5e1a5283322840134cbb0f65a53841c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveToGrabMsg)))
  "Returns md5sum for a message object of type 'MoveToGrabMsg"
  "5e1a5283322840134cbb0f65a53841c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveToGrabMsg>)))
  "Returns full string definition for message of type '<MoveToGrabMsg>"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%std_msgs/Bool isSuckup~%# std_msgs/Float32 backDistance ~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveToGrabMsg)))
  "Returns full string definition for message of type 'MoveToGrabMsg"
  (cl:format cl:nil "geometry_msgs/PoseStamped pose~%std_msgs/Bool isSuckup~%# std_msgs/Float32 backDistance ~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveToGrabMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'isSuckup))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveToGrabMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveToGrabMsg
    (cl:cons ':pose (pose msg))
    (cl:cons ':isSuckup (isSuckup msg))
))
