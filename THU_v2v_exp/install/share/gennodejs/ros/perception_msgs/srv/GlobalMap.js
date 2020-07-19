// Auto-generated. Do not edit!

// (in-package perception_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Map = require('../msg/Map.js');

//-----------------------------------------------------------

class GlobalMapRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalMapRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.int32(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalMapRequest
    let len;
    let data = new GlobalMapRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'perception_msgs/GlobalMapRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff63f6ea3c3e9b7504b2cb3ee0a09d92';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalMapRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

class GlobalMapResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.map = null;
    }
    else {
      if (initObj.hasOwnProperty('map')) {
        this.map = initObj.map
      }
      else {
        this.map = new Map();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalMapResponse
    // Serialize message field [map]
    bufferOffset = Map.serialize(obj.map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalMapResponse
    let len;
    let data = new GlobalMapResponse(null);
    // Deserialize message field [map]
    data.map = Map.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Map.getMessageSize(object.map);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'perception_msgs/GlobalMapResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a170b31a8e9ad04adc0dd48f6ea17a9e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    perception_msgs/Map map
    
    
    ================================================================================
    MSG: perception_msgs/Map
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
    const resolved = new GlobalMapResponse(null);
    if (msg.map !== undefined) {
      resolved.map = Map.Resolve(msg.map)
    }
    else {
      resolved.map = new Map()
    }

    return resolved;
    }
};

module.exports = {
  Request: GlobalMapRequest,
  Response: GlobalMapResponse,
  md5sum() { return 'd26fdf98f211670f5a52fac3522681f7'; },
  datatype() { return 'perception_msgs/GlobalMap'; }
};
