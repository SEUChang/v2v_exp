// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Point = require('./Point.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Line {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pts = null;
      this.is_main = null;
      this.offset = null;
      this.width = null;
      this.uuid = null;
      this.main_uuid = null;
      this.left_uuid = null;
      this.right_uuid = null;
      this.section_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('pts')) {
        this.pts = initObj.pts
      }
      else {
        this.pts = [];
      }
      if (initObj.hasOwnProperty('is_main')) {
        this.is_main = initObj.is_main
      }
      else {
        this.is_main = 0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('main_uuid')) {
        this.main_uuid = initObj.main_uuid
      }
      else {
        this.main_uuid = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('left_uuid')) {
        this.left_uuid = initObj.left_uuid
      }
      else {
        this.left_uuid = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('right_uuid')) {
        this.right_uuid = initObj.right_uuid
      }
      else {
        this.right_uuid = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('section_uuid')) {
        this.section_uuid = initObj.section_uuid
      }
      else {
        this.section_uuid = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Line
    // Serialize message field [pts]
    // Serialize the length for message field [pts]
    bufferOffset = _serializer.uint32(obj.pts.length, buffer, bufferOffset);
    obj.pts.forEach((val) => {
      bufferOffset = Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [is_main]
    bufferOffset = _serializer.int8(obj.is_main, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = _serializer.float64(obj.offset, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float64(obj.width, buffer, bufferOffset);
    // Serialize message field [uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.uuid, buffer, bufferOffset);
    // Serialize message field [main_uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.main_uuid, buffer, bufferOffset);
    // Serialize message field [left_uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.left_uuid, buffer, bufferOffset);
    // Serialize message field [right_uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.right_uuid, buffer, bufferOffset);
    // Serialize message field [section_uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.section_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Line
    let len;
    let data = new Line(null);
    // Deserialize message field [pts]
    // Deserialize array length for message field [pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pts[i] = Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [is_main]
    data.is_main = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [uuid]
    data.uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [main_uuid]
    data.main_uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [left_uuid]
    data.left_uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_uuid]
    data.right_uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [section_uuid]
    data.section_uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pts.forEach((val) => {
      length += Point.getMessageSize(val);
    });
    length += std_msgs.msg.String.getMessageSize(object.uuid);
    length += std_msgs.msg.String.getMessageSize(object.main_uuid);
    length += std_msgs.msg.String.getMessageSize(object.left_uuid);
    length += std_msgs.msg.String.getMessageSize(object.right_uuid);
    length += std_msgs.msg.String.getMessageSize(object.section_uuid);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Line';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd68493cc93c1caae986c853169b539f3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    ###       SunHao          ###
    #############################
    
    perception_msgs/Point[] pts
    
    #############################
    int8 is_main # Is the lane center lane of this section
    float64 offset
    float64 width
    
    #############################
    
    #int32 id
    std_msgs/String uuid
    
    #############################
    
    std_msgs/String main_uuid
    
    #int32 left_id
    std_msgs/String left_uuid
    
    #int32 right_id
    std_msgs/String right_uuid
    
    
    #############################
    
    #int32 section_id
    std_msgs/String section_uuid
    
    #############################
    
    
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
    const resolved = new Line(null);
    if (msg.pts !== undefined) {
      resolved.pts = new Array(msg.pts.length);
      for (let i = 0; i < resolved.pts.length; ++i) {
        resolved.pts[i] = Point.Resolve(msg.pts[i]);
      }
    }
    else {
      resolved.pts = []
    }

    if (msg.is_main !== undefined) {
      resolved.is_main = msg.is_main;
    }
    else {
      resolved.is_main = 0
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = std_msgs.msg.String.Resolve(msg.uuid)
    }
    else {
      resolved.uuid = new std_msgs.msg.String()
    }

    if (msg.main_uuid !== undefined) {
      resolved.main_uuid = std_msgs.msg.String.Resolve(msg.main_uuid)
    }
    else {
      resolved.main_uuid = new std_msgs.msg.String()
    }

    if (msg.left_uuid !== undefined) {
      resolved.left_uuid = std_msgs.msg.String.Resolve(msg.left_uuid)
    }
    else {
      resolved.left_uuid = new std_msgs.msg.String()
    }

    if (msg.right_uuid !== undefined) {
      resolved.right_uuid = std_msgs.msg.String.Resolve(msg.right_uuid)
    }
    else {
      resolved.right_uuid = new std_msgs.msg.String()
    }

    if (msg.section_uuid !== undefined) {
      resolved.section_uuid = std_msgs.msg.String.Resolve(msg.section_uuid)
    }
    else {
      resolved.section_uuid = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = Line;
