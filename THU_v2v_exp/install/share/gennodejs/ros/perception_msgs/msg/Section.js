// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Line = require('./Line.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Section {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lanes = null;
      this.direction_mode = null;
      this.uuid = null;
      this.to_section_uuid = null;
      this.from_section_uuid = null;
      this.to_lane_uuid = null;
      this.from_lane_uuid = null;
      this.to_pt_uuid = null;
      this.from_pt_uuid = null;
      this.length = null;
      this.highest_speed = null;
      this.traffic_cost = null;
    }
    else {
      if (initObj.hasOwnProperty('lanes')) {
        this.lanes = initObj.lanes
      }
      else {
        this.lanes = [];
      }
      if (initObj.hasOwnProperty('direction_mode')) {
        this.direction_mode = initObj.direction_mode
      }
      else {
        this.direction_mode = 0;
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('to_section_uuid')) {
        this.to_section_uuid = initObj.to_section_uuid
      }
      else {
        this.to_section_uuid = [];
      }
      if (initObj.hasOwnProperty('from_section_uuid')) {
        this.from_section_uuid = initObj.from_section_uuid
      }
      else {
        this.from_section_uuid = [];
      }
      if (initObj.hasOwnProperty('to_lane_uuid')) {
        this.to_lane_uuid = initObj.to_lane_uuid
      }
      else {
        this.to_lane_uuid = [];
      }
      if (initObj.hasOwnProperty('from_lane_uuid')) {
        this.from_lane_uuid = initObj.from_lane_uuid
      }
      else {
        this.from_lane_uuid = [];
      }
      if (initObj.hasOwnProperty('to_pt_uuid')) {
        this.to_pt_uuid = initObj.to_pt_uuid
      }
      else {
        this.to_pt_uuid = [];
      }
      if (initObj.hasOwnProperty('from_pt_uuid')) {
        this.from_pt_uuid = initObj.from_pt_uuid
      }
      else {
        this.from_pt_uuid = [];
      }
      if (initObj.hasOwnProperty('length')) {
        this.length = initObj.length
      }
      else {
        this.length = 0.0;
      }
      if (initObj.hasOwnProperty('highest_speed')) {
        this.highest_speed = initObj.highest_speed
      }
      else {
        this.highest_speed = 0.0;
      }
      if (initObj.hasOwnProperty('traffic_cost')) {
        this.traffic_cost = initObj.traffic_cost
      }
      else {
        this.traffic_cost = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Section
    // Serialize message field [lanes]
    // Serialize the length for message field [lanes]
    bufferOffset = _serializer.uint32(obj.lanes.length, buffer, bufferOffset);
    obj.lanes.forEach((val) => {
      bufferOffset = Line.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [direction_mode]
    bufferOffset = _serializer.int32(obj.direction_mode, buffer, bufferOffset);
    // Serialize message field [uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.uuid, buffer, bufferOffset);
    // Serialize message field [to_section_uuid]
    // Serialize the length for message field [to_section_uuid]
    bufferOffset = _serializer.uint32(obj.to_section_uuid.length, buffer, bufferOffset);
    obj.to_section_uuid.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [from_section_uuid]
    // Serialize the length for message field [from_section_uuid]
    bufferOffset = _serializer.uint32(obj.from_section_uuid.length, buffer, bufferOffset);
    obj.from_section_uuid.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [to_lane_uuid]
    // Serialize the length for message field [to_lane_uuid]
    bufferOffset = _serializer.uint32(obj.to_lane_uuid.length, buffer, bufferOffset);
    obj.to_lane_uuid.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [from_lane_uuid]
    // Serialize the length for message field [from_lane_uuid]
    bufferOffset = _serializer.uint32(obj.from_lane_uuid.length, buffer, bufferOffset);
    obj.from_lane_uuid.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [to_pt_uuid]
    // Serialize the length for message field [to_pt_uuid]
    bufferOffset = _serializer.uint32(obj.to_pt_uuid.length, buffer, bufferOffset);
    obj.to_pt_uuid.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [from_pt_uuid]
    // Serialize the length for message field [from_pt_uuid]
    bufferOffset = _serializer.uint32(obj.from_pt_uuid.length, buffer, bufferOffset);
    obj.from_pt_uuid.forEach((val) => {
      bufferOffset = std_msgs.msg.String.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [length]
    bufferOffset = _serializer.float32(obj.length, buffer, bufferOffset);
    // Serialize message field [highest_speed]
    bufferOffset = _serializer.float32(obj.highest_speed, buffer, bufferOffset);
    // Serialize message field [traffic_cost]
    bufferOffset = _serializer.float32(obj.traffic_cost, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Section
    let len;
    let data = new Section(null);
    // Deserialize message field [lanes]
    // Deserialize array length for message field [lanes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lanes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lanes[i] = Line.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [direction_mode]
    data.direction_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [uuid]
    data.uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [to_section_uuid]
    // Deserialize array length for message field [to_section_uuid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.to_section_uuid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.to_section_uuid[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [from_section_uuid]
    // Deserialize array length for message field [from_section_uuid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.from_section_uuid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.from_section_uuid[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [to_lane_uuid]
    // Deserialize array length for message field [to_lane_uuid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.to_lane_uuid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.to_lane_uuid[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [from_lane_uuid]
    // Deserialize array length for message field [from_lane_uuid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.from_lane_uuid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.from_lane_uuid[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [to_pt_uuid]
    // Deserialize array length for message field [to_pt_uuid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.to_pt_uuid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.to_pt_uuid[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [from_pt_uuid]
    // Deserialize array length for message field [from_pt_uuid]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.from_pt_uuid = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.from_pt_uuid[i] = std_msgs.msg.String.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [length]
    data.length = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [highest_speed]
    data.highest_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [traffic_cost]
    data.traffic_cost = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.lanes.forEach((val) => {
      length += Line.getMessageSize(val);
    });
    length += std_msgs.msg.String.getMessageSize(object.uuid);
    object.to_section_uuid.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    object.from_section_uuid.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    object.to_lane_uuid.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    object.from_lane_uuid.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    object.to_pt_uuid.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    object.from_pt_uuid.forEach((val) => {
      length += std_msgs.msg.String.getMessageSize(val);
    });
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Section';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b3fd0e0d7f2e11a16dcf750a2d0177d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    ###       SunHao          ###
    #############################
    
    
    
    perception_msgs/Line[] lanes
    
    int32 direction_mode
    
    #############################
    #int32 id
    std_msgs/String uuid
    
    #############################
    
    std_msgs/String[] to_section_uuid
    std_msgs/String[] from_section_uuid
    
    
    std_msgs/String[] to_lane_uuid
    std_msgs/String[] from_lane_uuid
    
    
    std_msgs/String[] to_pt_uuid
    std_msgs/String[] from_pt_uuid
    
    #int32[] to_pt_id
    #int32[] from_pt_id
    
    #############################
    
    float32 length
    float32 highest_speed
    float32 traffic_cost
    
    
    
    ================================================================================
    MSG: perception_msgs/Line
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
    const resolved = new Section(null);
    if (msg.lanes !== undefined) {
      resolved.lanes = new Array(msg.lanes.length);
      for (let i = 0; i < resolved.lanes.length; ++i) {
        resolved.lanes[i] = Line.Resolve(msg.lanes[i]);
      }
    }
    else {
      resolved.lanes = []
    }

    if (msg.direction_mode !== undefined) {
      resolved.direction_mode = msg.direction_mode;
    }
    else {
      resolved.direction_mode = 0
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = std_msgs.msg.String.Resolve(msg.uuid)
    }
    else {
      resolved.uuid = new std_msgs.msg.String()
    }

    if (msg.to_section_uuid !== undefined) {
      resolved.to_section_uuid = new Array(msg.to_section_uuid.length);
      for (let i = 0; i < resolved.to_section_uuid.length; ++i) {
        resolved.to_section_uuid[i] = std_msgs.msg.String.Resolve(msg.to_section_uuid[i]);
      }
    }
    else {
      resolved.to_section_uuid = []
    }

    if (msg.from_section_uuid !== undefined) {
      resolved.from_section_uuid = new Array(msg.from_section_uuid.length);
      for (let i = 0; i < resolved.from_section_uuid.length; ++i) {
        resolved.from_section_uuid[i] = std_msgs.msg.String.Resolve(msg.from_section_uuid[i]);
      }
    }
    else {
      resolved.from_section_uuid = []
    }

    if (msg.to_lane_uuid !== undefined) {
      resolved.to_lane_uuid = new Array(msg.to_lane_uuid.length);
      for (let i = 0; i < resolved.to_lane_uuid.length; ++i) {
        resolved.to_lane_uuid[i] = std_msgs.msg.String.Resolve(msg.to_lane_uuid[i]);
      }
    }
    else {
      resolved.to_lane_uuid = []
    }

    if (msg.from_lane_uuid !== undefined) {
      resolved.from_lane_uuid = new Array(msg.from_lane_uuid.length);
      for (let i = 0; i < resolved.from_lane_uuid.length; ++i) {
        resolved.from_lane_uuid[i] = std_msgs.msg.String.Resolve(msg.from_lane_uuid[i]);
      }
    }
    else {
      resolved.from_lane_uuid = []
    }

    if (msg.to_pt_uuid !== undefined) {
      resolved.to_pt_uuid = new Array(msg.to_pt_uuid.length);
      for (let i = 0; i < resolved.to_pt_uuid.length; ++i) {
        resolved.to_pt_uuid[i] = std_msgs.msg.String.Resolve(msg.to_pt_uuid[i]);
      }
    }
    else {
      resolved.to_pt_uuid = []
    }

    if (msg.from_pt_uuid !== undefined) {
      resolved.from_pt_uuid = new Array(msg.from_pt_uuid.length);
      for (let i = 0; i < resolved.from_pt_uuid.length; ++i) {
        resolved.from_pt_uuid[i] = std_msgs.msg.String.Resolve(msg.from_pt_uuid[i]);
      }
    }
    else {
      resolved.from_pt_uuid = []
    }

    if (msg.length !== undefined) {
      resolved.length = msg.length;
    }
    else {
      resolved.length = 0.0
    }

    if (msg.highest_speed !== undefined) {
      resolved.highest_speed = msg.highest_speed;
    }
    else {
      resolved.highest_speed = 0.0
    }

    if (msg.traffic_cost !== undefined) {
      resolved.traffic_cost = msg.traffic_cost;
    }
    else {
      resolved.traffic_cost = 0.0
    }

    return resolved;
    }
};

module.exports = Section;
