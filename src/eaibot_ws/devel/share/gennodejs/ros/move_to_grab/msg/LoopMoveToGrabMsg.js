// Auto-generated. Do not edit!

// (in-package move_to_grab.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MoveToGrabMsg = require('./MoveToGrabMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LoopMoveToGrabMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isLoop = null;
      this.action1 = null;
      this.action2 = null;
    }
    else {
      if (initObj.hasOwnProperty('isLoop')) {
        this.isLoop = initObj.isLoop
      }
      else {
        this.isLoop = new std_msgs.msg.Bool();
      }
      if (initObj.hasOwnProperty('action1')) {
        this.action1 = initObj.action1
      }
      else {
        this.action1 = new MoveToGrabMsg();
      }
      if (initObj.hasOwnProperty('action2')) {
        this.action2 = initObj.action2
      }
      else {
        this.action2 = new MoveToGrabMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LoopMoveToGrabMsg
    // Serialize message field [isLoop]
    bufferOffset = std_msgs.msg.Bool.serialize(obj.isLoop, buffer, bufferOffset);
    // Serialize message field [action1]
    bufferOffset = MoveToGrabMsg.serialize(obj.action1, buffer, bufferOffset);
    // Serialize message field [action2]
    bufferOffset = MoveToGrabMsg.serialize(obj.action2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LoopMoveToGrabMsg
    let len;
    let data = new LoopMoveToGrabMsg(null);
    // Deserialize message field [isLoop]
    data.isLoop = std_msgs.msg.Bool.deserialize(buffer, bufferOffset);
    // Deserialize message field [action1]
    data.action1 = MoveToGrabMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [action2]
    data.action2 = MoveToGrabMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MoveToGrabMsg.getMessageSize(object.action1);
    length += MoveToGrabMsg.getMessageSize(object.action2);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'move_to_grab/LoopMoveToGrabMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c0bfa85506ab2b9a3042cb471990b35';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Bool isLoop
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LoopMoveToGrabMsg(null);
    if (msg.isLoop !== undefined) {
      resolved.isLoop = std_msgs.msg.Bool.Resolve(msg.isLoop)
    }
    else {
      resolved.isLoop = new std_msgs.msg.Bool()
    }

    if (msg.action1 !== undefined) {
      resolved.action1 = MoveToGrabMsg.Resolve(msg.action1)
    }
    else {
      resolved.action1 = new MoveToGrabMsg()
    }

    if (msg.action2 !== undefined) {
      resolved.action2 = MoveToGrabMsg.Resolve(msg.action2)
    }
    else {
      resolved.action2 = new MoveToGrabMsg()
    }

    return resolved;
    }
};

module.exports = LoopMoveToGrabMsg;
