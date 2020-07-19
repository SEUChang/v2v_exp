// Auto-generated. Do not edit!

// (in-package dnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DNCtrajectory = require('./DNCtrajectory.js');

//-----------------------------------------------------------

class VizTraj {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cluster = null;
    }
    else {
      if (initObj.hasOwnProperty('cluster')) {
        this.cluster = initObj.cluster
      }
      else {
        this.cluster = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VizTraj
    // Serialize message field [cluster]
    // Serialize the length for message field [cluster]
    bufferOffset = _serializer.uint32(obj.cluster.length, buffer, bufferOffset);
    obj.cluster.forEach((val) => {
      bufferOffset = DNCtrajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VizTraj
    let len;
    let data = new VizTraj(null);
    // Deserialize message field [cluster]
    // Deserialize array length for message field [cluster]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cluster = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cluster[i] = DNCtrajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.cluster.forEach((val) => {
      length += DNCtrajectory.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnc_msgs/VizTraj';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23126120fd65eed3989e3e640a1add5d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    dnc_msgs/DNCtrajectory[] cluster
    ================================================================================
    MSG: dnc_msgs/DNCtrajectory
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
    const resolved = new VizTraj(null);
    if (msg.cluster !== undefined) {
      resolved.cluster = new Array(msg.cluster.length);
      for (let i = 0; i < resolved.cluster.length; ++i) {
        resolved.cluster[i] = DNCtrajectory.Resolve(msg.cluster[i]);
      }
    }
    else {
      resolved.cluster = []
    }

    return resolved;
    }
};

module.exports = VizTraj;
