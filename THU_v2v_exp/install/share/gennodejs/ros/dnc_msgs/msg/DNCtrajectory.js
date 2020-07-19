// Auto-generated. Do not edit!

// (in-package dnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DNCpath = require('./DNCpath.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DNCtrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.desired_ax = null;
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('desired_ax')) {
        this.desired_ax = initObj.desired_ax
      }
      else {
        this.desired_ax = 0.0;
      }
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new DNCpath();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DNCtrajectory
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    // Serialize message field [desired_ax]
    bufferOffset = _serializer.float32(obj.desired_ax, buffer, bufferOffset);
    // Serialize message field [path]
    bufferOffset = DNCpath.serialize(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DNCtrajectory
    let len;
    let data = new DNCtrajectory(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [desired_ax]
    data.desired_ax = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [path]
    data.path = DNCpath.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += DNCpath.getMessageSize(object.path);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnc_msgs/DNCtrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '30984eee6f59e717ab9028ecc27d7d49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    ###       SunHao          ###
    #############################
    
    std_msgs/Header header
    
    int32 mode
    float32 desired_ax
    dnc_msgs/DNCpath path
    
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
    MSG: dnc_msgs/DNCpath
    #############################
    ###       SunHao          ###
    #############################
    
    
    dnc_msgs/DNCpoint[] pts
    bool s_flag
    bool h_flag
    ================================================================================
    MSG: dnc_msgs/DNCpoint
    #############################
    ###       SunHao          ###
    #############################
    
    
    float64 x
    float64 y
    float64 s
    
    float64 cuv
    float64 heading
    float64 speed
    
    float32 h
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DNCtrajectory(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.desired_ax !== undefined) {
      resolved.desired_ax = msg.desired_ax;
    }
    else {
      resolved.desired_ax = 0.0
    }

    if (msg.path !== undefined) {
      resolved.path = DNCpath.Resolve(msg.path)
    }
    else {
      resolved.path = new DNCpath()
    }

    return resolved;
    }
};

module.exports = DNCtrajectory;
