// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Point {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.z = null;
      this.s = null;
      this.cuv = null;
      this.heading = null;
      this.speed = null;
      this.speedkmh = null;
      this.rtk_mode = null;
      this.driving_mode = null;
      this.special_mode = null;
      this.obs_search_strategy = null;
      this.speed_mode = null;
      this.obs_strategy = null;
      this.follow_strategy = null;
      this.cross_option = null;
      this.reserved_option = null;
      this.uuid = null;
      this.lane_uuid = null;
      this.section_uuid = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('s')) {
        this.s = initObj.s
      }
      else {
        this.s = 0.0;
      }
      if (initObj.hasOwnProperty('cuv')) {
        this.cuv = initObj.cuv
      }
      else {
        this.cuv = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('speedkmh')) {
        this.speedkmh = initObj.speedkmh
      }
      else {
        this.speedkmh = 0.0;
      }
      if (initObj.hasOwnProperty('rtk_mode')) {
        this.rtk_mode = initObj.rtk_mode
      }
      else {
        this.rtk_mode = 0;
      }
      if (initObj.hasOwnProperty('driving_mode')) {
        this.driving_mode = initObj.driving_mode
      }
      else {
        this.driving_mode = 0;
      }
      if (initObj.hasOwnProperty('special_mode')) {
        this.special_mode = initObj.special_mode
      }
      else {
        this.special_mode = 0;
      }
      if (initObj.hasOwnProperty('obs_search_strategy')) {
        this.obs_search_strategy = initObj.obs_search_strategy
      }
      else {
        this.obs_search_strategy = 0;
      }
      if (initObj.hasOwnProperty('speed_mode')) {
        this.speed_mode = initObj.speed_mode
      }
      else {
        this.speed_mode = 0;
      }
      if (initObj.hasOwnProperty('obs_strategy')) {
        this.obs_strategy = initObj.obs_strategy
      }
      else {
        this.obs_strategy = 0;
      }
      if (initObj.hasOwnProperty('follow_strategy')) {
        this.follow_strategy = initObj.follow_strategy
      }
      else {
        this.follow_strategy = 0;
      }
      if (initObj.hasOwnProperty('cross_option')) {
        this.cross_option = initObj.cross_option
      }
      else {
        this.cross_option = 0;
      }
      if (initObj.hasOwnProperty('reserved_option')) {
        this.reserved_option = initObj.reserved_option
      }
      else {
        this.reserved_option = 0;
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('lane_uuid')) {
        this.lane_uuid = initObj.lane_uuid
      }
      else {
        this.lane_uuid = new std_msgs.msg.String();
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
    // Serializes a message object of type Point
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float64(obj.z, buffer, bufferOffset);
    // Serialize message field [s]
    bufferOffset = _serializer.float64(obj.s, buffer, bufferOffset);
    // Serialize message field [cuv]
    bufferOffset = _serializer.float64(obj.cuv, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    // Serialize message field [speedkmh]
    bufferOffset = _serializer.float64(obj.speedkmh, buffer, bufferOffset);
    // Serialize message field [rtk_mode]
    bufferOffset = _serializer.int32(obj.rtk_mode, buffer, bufferOffset);
    // Serialize message field [driving_mode]
    bufferOffset = _serializer.int32(obj.driving_mode, buffer, bufferOffset);
    // Serialize message field [special_mode]
    bufferOffset = _serializer.int32(obj.special_mode, buffer, bufferOffset);
    // Serialize message field [obs_search_strategy]
    bufferOffset = _serializer.int32(obj.obs_search_strategy, buffer, bufferOffset);
    // Serialize message field [speed_mode]
    bufferOffset = _serializer.int32(obj.speed_mode, buffer, bufferOffset);
    // Serialize message field [obs_strategy]
    bufferOffset = _serializer.int32(obj.obs_strategy, buffer, bufferOffset);
    // Serialize message field [follow_strategy]
    bufferOffset = _serializer.int32(obj.follow_strategy, buffer, bufferOffset);
    // Serialize message field [cross_option]
    bufferOffset = _serializer.int32(obj.cross_option, buffer, bufferOffset);
    // Serialize message field [reserved_option]
    bufferOffset = _serializer.int32(obj.reserved_option, buffer, bufferOffset);
    // Serialize message field [uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.uuid, buffer, bufferOffset);
    // Serialize message field [lane_uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.lane_uuid, buffer, bufferOffset);
    // Serialize message field [section_uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.section_uuid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Point
    let len;
    let data = new Point(null);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s]
    data.s = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [cuv]
    data.cuv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speedkmh]
    data.speedkmh = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rtk_mode]
    data.rtk_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [driving_mode]
    data.driving_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [special_mode]
    data.special_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [obs_search_strategy]
    data.obs_search_strategy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed_mode]
    data.speed_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [obs_strategy]
    data.obs_strategy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [follow_strategy]
    data.follow_strategy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cross_option]
    data.cross_option = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [reserved_option]
    data.reserved_option = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [uuid]
    data.uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [lane_uuid]
    data.lane_uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [section_uuid]
    data.section_uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.uuid);
    length += std_msgs.msg.String.getMessageSize(object.lane_uuid);
    length += std_msgs.msg.String.getMessageSize(object.section_uuid);
    return length + 100;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Point';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bccfec239a88b4161680fb692e3d84e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Point(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.s !== undefined) {
      resolved.s = msg.s;
    }
    else {
      resolved.s = 0.0
    }

    if (msg.cuv !== undefined) {
      resolved.cuv = msg.cuv;
    }
    else {
      resolved.cuv = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.speedkmh !== undefined) {
      resolved.speedkmh = msg.speedkmh;
    }
    else {
      resolved.speedkmh = 0.0
    }

    if (msg.rtk_mode !== undefined) {
      resolved.rtk_mode = msg.rtk_mode;
    }
    else {
      resolved.rtk_mode = 0
    }

    if (msg.driving_mode !== undefined) {
      resolved.driving_mode = msg.driving_mode;
    }
    else {
      resolved.driving_mode = 0
    }

    if (msg.special_mode !== undefined) {
      resolved.special_mode = msg.special_mode;
    }
    else {
      resolved.special_mode = 0
    }

    if (msg.obs_search_strategy !== undefined) {
      resolved.obs_search_strategy = msg.obs_search_strategy;
    }
    else {
      resolved.obs_search_strategy = 0
    }

    if (msg.speed_mode !== undefined) {
      resolved.speed_mode = msg.speed_mode;
    }
    else {
      resolved.speed_mode = 0
    }

    if (msg.obs_strategy !== undefined) {
      resolved.obs_strategy = msg.obs_strategy;
    }
    else {
      resolved.obs_strategy = 0
    }

    if (msg.follow_strategy !== undefined) {
      resolved.follow_strategy = msg.follow_strategy;
    }
    else {
      resolved.follow_strategy = 0
    }

    if (msg.cross_option !== undefined) {
      resolved.cross_option = msg.cross_option;
    }
    else {
      resolved.cross_option = 0
    }

    if (msg.reserved_option !== undefined) {
      resolved.reserved_option = msg.reserved_option;
    }
    else {
      resolved.reserved_option = 0
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = std_msgs.msg.String.Resolve(msg.uuid)
    }
    else {
      resolved.uuid = new std_msgs.msg.String()
    }

    if (msg.lane_uuid !== undefined) {
      resolved.lane_uuid = std_msgs.msg.String.Resolve(msg.lane_uuid)
    }
    else {
      resolved.lane_uuid = new std_msgs.msg.String()
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

module.exports = Point;
