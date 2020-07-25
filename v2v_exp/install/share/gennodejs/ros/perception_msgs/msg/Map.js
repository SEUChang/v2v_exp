// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Section = require('./Section.js');
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Map {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.origin_utm_pt = null;
      this.sections = null;
      this.uuid = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('origin_utm_pt')) {
        this.origin_utm_pt = initObj.origin_utm_pt
      }
      else {
        this.origin_utm_pt = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('sections')) {
        this.sections = initObj.sections
      }
      else {
        this.sections = [];
      }
      if (initObj.hasOwnProperty('uuid')) {
        this.uuid = initObj.uuid
      }
      else {
        this.uuid = new std_msgs.msg.String();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Map
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [origin_utm_pt]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.origin_utm_pt, buffer, bufferOffset);
    // Serialize message field [sections]
    // Serialize the length for message field [sections]
    bufferOffset = _serializer.uint32(obj.sections.length, buffer, bufferOffset);
    obj.sections.forEach((val) => {
      bufferOffset = Section.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [uuid]
    bufferOffset = std_msgs.msg.String.serialize(obj.uuid, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Map
    let len;
    let data = new Map(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [origin_utm_pt]
    data.origin_utm_pt = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [sections]
    // Deserialize array length for message field [sections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sections[i] = Section.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [uuid]
    data.uuid = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.sections.forEach((val) => {
      length += Section.getMessageSize(val);
    });
    length += std_msgs.msg.String.getMessageSize(object.uuid);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Map';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f311c97842ff52d6f2efb99074fbe5db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    ###       SunHao          ###
    #############################
    
    
    std_msgs/Header header
    
    geometry_msgs/Point origin_utm_pt
    
    perception_msgs/Section[] sections
    
    std_msgs/String uuid
    
    int32 id
    # -1 : closed map
    # 0 : simple map
    # 1: topo map
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: perception_msgs/Section
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
    const resolved = new Map(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.origin_utm_pt !== undefined) {
      resolved.origin_utm_pt = geometry_msgs.msg.Point.Resolve(msg.origin_utm_pt)
    }
    else {
      resolved.origin_utm_pt = new geometry_msgs.msg.Point()
    }

    if (msg.sections !== undefined) {
      resolved.sections = new Array(msg.sections.length);
      for (let i = 0; i < resolved.sections.length; ++i) {
        resolved.sections[i] = Section.Resolve(msg.sections[i]);
      }
    }
    else {
      resolved.sections = []
    }

    if (msg.uuid !== undefined) {
      resolved.uuid = std_msgs.msg.String.Resolve(msg.uuid)
    }
    else {
      resolved.uuid = new std_msgs.msg.String()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = Map;
