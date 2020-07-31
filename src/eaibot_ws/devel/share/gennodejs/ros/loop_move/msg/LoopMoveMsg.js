// Auto-generated. Do not edit!

// (in-package loop_move.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LoopMoveMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose1 = null;
      this.pose2 = null;
    }
    else {
      if (initObj.hasOwnProperty('pose1')) {
        this.pose1 = initObj.pose1
      }
      else {
        this.pose1 = new geometry_msgs.msg.PoseStamped();
      }
      if (initObj.hasOwnProperty('pose2')) {
        this.pose2 = initObj.pose2
      }
      else {
        this.pose2 = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoopMoveMsg
    // Serialize message field [pose1]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose1, buffer, bufferOffset);
    // Serialize message field [pose2]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoopMoveMsg
    let len;
    let data = new LoopMoveMsg(null);
    // Deserialize message field [pose1]
    data.pose1 = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [pose2]
    data.pose2 = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose1);
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose2);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'loop_move/LoopMoveMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db0db2066f7076a1006be5499d9857d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/PoseStamped pose1
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoopMoveMsg(null);
    if (msg.pose1 !== undefined) {
      resolved.pose1 = geometry_msgs.msg.PoseStamped.Resolve(msg.pose1)
    }
    else {
      resolved.pose1 = new geometry_msgs.msg.PoseStamped()
    }

    if (msg.pose2 !== undefined) {
      resolved.pose2 = geometry_msgs.msg.PoseStamped.Resolve(msg.pose2)
    }
    else {
      resolved.pose2 = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = LoopMoveMsg;
