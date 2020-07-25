// Auto-generated. Do not edit!

// (in-package perception_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point = require('../msg/Point.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PtLocalizationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pt = null;
    }
    else {
      if (initObj.hasOwnProperty('pt')) {
        this.pt = initObj.pt
      }
      else {
        this.pt = new Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PtLocalizationRequest
    // Serialize message field [pt]
    bufferOffset = Point.serialize(obj.pt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PtLocalizationRequest
    let len;
    let data = new PtLocalizationRequest(null);
    // Deserialize message field [pt]
    data.pt = Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Point.getMessageSize(object.pt);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'perception_msgs/PtLocalizationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '160a51e9f1b26585fb6898083120feae';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_msgs/Point pt
    
    ================================================================================
    MSG: perception_msgs/Point
    #############################
    ###       SunHao          ###
    #############################
    
    float64 x
    float64 y
    float64 z
    float64 s
    float64 cuv
    float64 heading
    float64 speed
    float64 speedkmh
    
    ############################
    
    
    int32 rtk_mode # 0: 无影响 1： Not rtk stop
    int32 driving_mode # acc or collision avoidance
    int32 special_mode  #
    
    ####################################33
    int32 obs_search_strategy  # 0: donot search obs
    int32 speed_mode  #
    int32 obs_strategy  #
    int32 follow_strategy  #
    int32 cross_option  #
    int32 reserved_option  #
    
    
    
    ############################
    
    #int32 id
    std_msgs/String uuid
    
    #############################
    
    #int32 line_id
    std_msgs/String lane_uuid
    
    #############################
    
    #int32 section_id
    std_msgs/String section_uuid
    
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PtLocalizationRequest(null);
    if (msg.pt !== undefined) {
      resolved.pt = Point.Resolve(msg.pt)
    }
    else {
      resolved.pt = new Point()
    }

    return resolved;
    }
};

class PtLocalizationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.s = null;
      this.l = null;
      this.p = null;
    }
    else {
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0;
      }
      if (initObj.hasOwnProperty('l')) {
        this.l = initObj.l
      }
      else {
        this.l = 0;
      }
      if (initObj.hasOwnProperty('p')) {
        this.p = initObj.p
      }
      else {
        this.p = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PtLocalizationResponse
    // Serialize message field [s]
    bufferOffset = _serializer.int32(obj.s, buffer, bufferOffset);
    // Serialize message field [l]
    bufferOffset = _serializer.int32(obj.l, buffer, bufferOffset);
    // Serialize message field [p]
    bufferOffset = _serializer.int32(obj.p, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PtLocalizationResponse
    let len;
    let data = new PtLocalizationResponse(null);
    // Deserialize message field [s]
    data.s = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [l]
    data.l = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [p]
    data.p = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'perception_msgs/PtLocalizationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1e90f6b1d5bdc7872c8f3385bddd9cb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 s
    int32 l
    int32 p
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PtLocalizationResponse(null);
    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0
    }

    if (msg.l !== undefined) {
      resolved.l = msg.l;
    }
    else {
      resolved.l = 0
    }

    if (msg.p !== undefined) {
      resolved.p = msg.p;
    }
    else {
      resolved.p = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: PtLocalizationRequest,
  Response: PtLocalizationResponse,
  md5sum() { return '8aef997f06107575271338a7eeacbecc'; },
  datatype() { return 'perception_msgs/PtLocalization'; }
};
