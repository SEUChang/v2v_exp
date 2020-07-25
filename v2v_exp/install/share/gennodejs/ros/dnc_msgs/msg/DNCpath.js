// Auto-generated. Do not edit!

// (in-package dnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DNCpoint = require('./DNCpoint.js');

//-----------------------------------------------------------

class DNCpath {
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
    // Serializes a message object of type DNCpath
    // Serialize message field [pts]
    // Serialize the length for message field [pts]
    bufferOffset = _serializer.uint32(obj.pts.length, buffer, bufferOffset);
    obj.pts.forEach((val) => {
      bufferOffset = DNCpoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [s_flag]
    bufferOffset = _serializer.bool(obj.s_flag, buffer, bufferOffset);
    // Serialize message field [h_flag]
    bufferOffset = _serializer.bool(obj.h_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DNCpath
    let len;
    let data = new DNCpath(null);
    // Deserialize message field [pts]
    // Deserialize array length for message field [pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts[i] = DNCpoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [s_flag]
    data.s_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [h_flag]
    data.h_flag = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 52 * object.pts.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnc_msgs/DNCpath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99eb39ef67140679ac539ba30d82f7ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new DNCpath(null);
    if (msg.pts !== undefined) {
      resolved.pts = new Array(msg.pts.length);
      for (let i = 0; i < resolved.pts.length; ++i) {
        resolved.pts[i] = DNCpoint.Resolve(msg.pts[i]);
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

module.exports = DNCpath;
