// Auto-generated. Do not edit!

// (in-package dnc_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DNCpoint = require('../msg/DNCpoint.js');
let DNCpath = require('../msg/DNCpath.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class SmoothPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.st_pt = null;
      this.ori_path = null;
    }
    else {
      if (initObj.hasOwnProperty('st_pt')) {
        this.st_pt = initObj.st_pt
      }
      else {
        this.st_pt = new DNCpoint();
      }
      if (initObj.hasOwnProperty('ori_path')) {
        this.ori_path = initObj.ori_path
      }
      else {
        this.ori_path = new DNCpath();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SmoothPathRequest
    // Serialize message field [st_pt]
    bufferOffset = DNCpoint.serialize(obj.st_pt, buffer, bufferOffset);
    // Serialize message field [ori_path]
    bufferOffset = DNCpath.serialize(obj.ori_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SmoothPathRequest
    let len;
    let data = new SmoothPathRequest(null);
    // Deserialize message field [st_pt]
    data.st_pt = DNCpoint.deserialize(buffer, bufferOffset);
    // Deserialize message field [ori_path]
    data.ori_path = DNCpath.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DNCpath.getMessageSize(object.ori_path);
    return length + 52;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnc_msgs/SmoothPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3e2477dfc2c7b4fe5d98a2685ecb8bdb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    dnc_msgs/DNCpoint st_pt
    dnc_msgs/DNCpath  ori_path
    
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
    
    ================================================================================
    MSG: dnc_msgs/DNCpath
    #############################
    ###       SunHao          ###
    #############################
    
    
    dnc_msgs/DNCpoint[] pts
    bool s_flag
    bool h_flag
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SmoothPathRequest(null);
    if (msg.st_pt !== undefined) {
      resolved.st_pt = DNCpoint.Resolve(msg.st_pt)
    }
    else {
      resolved.st_pt = new DNCpoint()
    }

    if (msg.ori_path !== undefined) {
      resolved.ori_path = DNCpath.Resolve(msg.ori_path)
    }
    else {
      resolved.ori_path = new DNCpath()
    }

    return resolved;
    }
};

class SmoothPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res_path = null;
    }
    else {
      if (initObj.hasOwnProperty('res_path')) {
        this.res_path = initObj.res_path
      }
      else {
        this.res_path = new DNCpath();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SmoothPathResponse
    // Serialize message field [res_path]
    bufferOffset = DNCpath.serialize(obj.res_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SmoothPathResponse
    let len;
    let data = new SmoothPathResponse(null);
    // Deserialize message field [res_path]
    data.res_path = DNCpath.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DNCpath.getMessageSize(object.res_path);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'dnc_msgs/SmoothPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99200e4c6d865f8a9edb8b7a03edba5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    dnc_msgs/DNCpath res_path
    
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
    const resolved = new SmoothPathResponse(null);
    if (msg.res_path !== undefined) {
      resolved.res_path = DNCpath.Resolve(msg.res_path)
    }
    else {
      resolved.res_path = new DNCpath()
    }

    return resolved;
    }
};

module.exports = {
  Request: SmoothPathRequest,
  Response: SmoothPathResponse,
  md5sum() { return 'f4c127e6fd3a1d84b001ac0a03f0e720'; },
  datatype() { return 'dnc_msgs/SmoothPath'; }
};
