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

let GlobalPathIndex = require('../msg/GlobalPathIndex.js');

//-----------------------------------------------------------

class GlobalPathRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_pt = null;
      this.goal_pt = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('start_pt')) {
        this.start_pt = initObj.start_pt
      }
      else {
        this.start_pt = new Point();
      }
      if (initObj.hasOwnProperty('goal_pt')) {
        this.goal_pt = initObj.goal_pt
      }
      else {
        this.goal_pt = new Point();
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalPathRequest
    // Serialize message field [start_pt]
    bufferOffset = Point.serialize(obj.start_pt, buffer, bufferOffset);
    // Serialize message field [goal_pt]
    bufferOffset = Point.serialize(obj.goal_pt, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int32(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalPathRequest
    let len;
    let data = new GlobalPathRequest(null);
    // Deserialize message field [start_pt]
    data.start_pt = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [goal_pt]
    data.goal_pt = Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Point.getMessageSize(object.start_pt);
    length += Point.getMessageSize(object.goal_pt);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'perception_msgs/GlobalPathRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '69b470637d34f1ed45f4ad2eba99d1e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_msgs/Point start_pt
    perception_msgs/Point goal_pt
    int32 type
    
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
    const resolved = new GlobalPathRequest(null);
    if (msg.start_pt !== undefined) {
      resolved.start_pt = Point.Resolve(msg.start_pt)
    }
    else {
      resolved.start_pt = new Point()
    }

    if (msg.goal_pt !== undefined) {
      resolved.goal_pt = Point.Resolve(msg.goal_pt)
    }
    else {
      resolved.goal_pt = new Point()
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    return resolved;
    }
};

class GlobalPathResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path = null;
    }
    else {
      if (initObj.hasOwnProperty('path')) {
        this.path = initObj.path
      }
      else {
        this.path = new GlobalPathIndex();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalPathResponse
    // Serialize message field [path]
    bufferOffset = GlobalPathIndex.serialize(obj.path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalPathResponse
    let len;
    let data = new GlobalPathResponse(null);
    // Deserialize message field [path]
    data.path = GlobalPathIndex.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += GlobalPathIndex.getMessageSize(object.path);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'perception_msgs/GlobalPathResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '292fb84095eab8f09dbe7364f93297bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_msgs/GlobalPathIndex path
    
    ================================================================================
    MSG: perception_msgs/GlobalPathIndex
    #############################
    ###       SunHao          ###
    #############################
    
    
    int32 start_section
    int32 start_lane
    int32 start_pt
    
    #########################
    
    int32[] topo
    
    #########################
    int32 goal_section
    int32 goal_lane
    int32 goal_pt
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalPathResponse(null);
    if (msg.path !== undefined) {
      resolved.path = GlobalPathIndex.Resolve(msg.path)
    }
    else {
      resolved.path = new GlobalPathIndex()
    }

    return resolved;
    }
};

module.exports = {
  Request: GlobalPathRequest,
  Response: GlobalPathResponse,
  md5sum() { return '7837730f008be57270344a16d5aaa53d'; },
  datatype() { return 'perception_msgs/GlobalPath'; }
};
