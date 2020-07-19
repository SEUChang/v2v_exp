// Auto-generated. Do not edit!

// (in-package dnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pt = require('./Pt.js');

//-----------------------------------------------------------

class Path {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pts = null;
      this.s_flag = null;
      this.h_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('pts')) {
        this.pts = initObj.pts
      }
      else {
        this.pts = [];
      }
      if (initObj.hasOwnProperty('s_flag')) {
        this.s_flag = initObj.s_flag
      }
      else {
        this.s_flag = false;
      }
      if (initObj.hasOwnProperty('h_flag')) {
        this.h_flag = initObj.h_flag
      }
      else {
        this.h_flag = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Path
    // Serialize message field [pts]
    // Serialize the length for message field [pts]
    bufferOffset = _serializer.uint32(obj.pts.length, buffer, bufferOffset);
    obj.pts.forEach((val) => {
      bufferOffset = Pt.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [s_flag]
    bufferOffset = _serializer.bool(obj.s_flag, buffer, bufferOffset);
    // Serialize message field [h_flag]
    bufferOffset = _serializer.bool(obj.h_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Path
    let len;
    let data = new Path(null);
    // Deserialize message field [pts]
    // Deserialize array length for message field [pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts[i] = Pt.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [s_flag]
    data.s_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [h_flag]
    data.h_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.pts.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnc_msgs/Path';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33f23220b687c9f758ff12cb63f9522c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ################
    #
    ################
    
    dnc_msgs/Pt[] pts
    bool s_flag
    bool h_flag
    ================================================================================
    MSG: dnc_msgs/Pt
    ################
    #
    ################
    
    
    float32 x
    float32 y
    float32 s
    float32 h
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Path(null);
    if (msg.pts !== undefined) {
      resolved.pts = new Array(msg.pts.length);
      for (let i = 0; i < resolved.pts.length; ++i) {
        resolved.pts[i] = Pt.Resolve(msg.pts[i]);
      }
    }
    else {
      resolved.pts = []
    }

    if (msg.s_flag !== undefined) {
      resolved.s_flag = msg.s_flag;
    }
    else {
      resolved.s_flag = false
    }

    if (msg.h_flag !== undefined) {
      resolved.h_flag = msg.h_flag;
    }
    else {
      resolved.h_flag = false
    }

    return resolved;
    }
};

module.exports = Path;
