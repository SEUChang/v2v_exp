// Auto-generated. Do not edit!

// (in-package simulator.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class SimuSet {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_or_pause = null;
      this.reset = null;
      this.pose_init = null;
      this.init_pt = null;
      this.init_heading = null;
      this.init_speed = null;
      this.rtk_status = null;
    }
    else {
      if (initObj.hasOwnProperty('start_or_pause')) {
        this.start_or_pause = initObj.start_or_pause
      }
      else {
        this.start_or_pause = false;
      }
      if (initObj.hasOwnProperty('reset')) {
        this.reset = initObj.reset
      }
      else {
        this.reset = false;
      }
      if (initObj.hasOwnProperty('pose_init')) {
        this.pose_init = initObj.pose_init
      }
      else {
        this.pose_init = false;
      }
      if (initObj.hasOwnProperty('init_pt')) {
        this.init_pt = initObj.init_pt
      }
      else {
        this.init_pt = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('init_heading')) {
        this.init_heading = initObj.init_heading
      }
      else {
        this.init_heading = 0.0;
      }
      if (initObj.hasOwnProperty('init_speed')) {
        this.init_speed = initObj.init_speed
      }
      else {
        this.init_speed = 0.0;
      }
      if (initObj.hasOwnProperty('rtk_status')) {
        this.rtk_status = initObj.rtk_status
      }
      else {
        this.rtk_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SimuSet
    // Serialize message field [start_or_pause]
    bufferOffset = _serializer.bool(obj.start_or_pause, buffer, bufferOffset);
    // Serialize message field [reset]
    bufferOffset = _serializer.bool(obj.reset, buffer, bufferOffset);
    // Serialize message field [pose_init]
    bufferOffset = _serializer.bool(obj.pose_init, buffer, bufferOffset);
    // Serialize message field [init_pt]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.init_pt, buffer, bufferOffset);
    // Serialize message field [init_heading]
    bufferOffset = _serializer.float32(obj.init_heading, buffer, bufferOffset);
    // Serialize message field [init_speed]
    bufferOffset = _serializer.float32(obj.init_speed, buffer, bufferOffset);
    // Serialize message field [rtk_status]
    bufferOffset = _serializer.int8(obj.rtk_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SimuSet
    let len;
    let data = new SimuSet(null);
    // Deserialize message field [start_or_pause]
    data.start_or_pause = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [reset]
    data.reset = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pose_init]
    data.pose_init = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [init_pt]
    data.init_pt = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [init_heading]
    data.init_heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [init_speed]
    data.init_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rtk_status]
    data.rtk_status = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'simulator/SimuSet';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1f488552fec6ede53d99f875862e60d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    
    #
    
    bool start_or_pause
    bool reset
    
    
    
    bool pose_init
    geometry_msgs/Point init_pt
    float32 init_heading
    float32 init_speed
    
    
    int8 rtk_status
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SimuSet(null);
    if (msg.start_or_pause !== undefined) {
      resolved.start_or_pause = msg.start_or_pause;
    }
    else {
      resolved.start_or_pause = false
    }

    if (msg.reset !== undefined) {
      resolved.reset = msg.reset;
    }
    else {
      resolved.reset = false
    }

    if (msg.pose_init !== undefined) {
      resolved.pose_init = msg.pose_init;
    }
    else {
      resolved.pose_init = false
    }

    if (msg.init_pt !== undefined) {
      resolved.init_pt = geometry_msgs.msg.Point.Resolve(msg.init_pt)
    }
    else {
      resolved.init_pt = new geometry_msgs.msg.Point()
    }

    if (msg.init_heading !== undefined) {
      resolved.init_heading = msg.init_heading;
    }
    else {
      resolved.init_heading = 0.0
    }

    if (msg.init_speed !== undefined) {
      resolved.init_speed = msg.init_speed;
    }
    else {
      resolved.init_speed = 0.0
    }

    if (msg.rtk_status !== undefined) {
      resolved.rtk_status = msg.rtk_status;
    }
    else {
      resolved.rtk_status = 0
    }

    return resolved;
    }
};

module.exports = SimuSet;
