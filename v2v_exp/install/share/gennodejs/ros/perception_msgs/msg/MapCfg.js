// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MapCfg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_or_pause = null;
      this.stop_and_save = null;
      this.closed = null;
      this.speed_limit_kph = null;
      this.bag_name = null;
      this.tpk_name = null;
      this.rtk_mode = null;
      this.driving_mode = null;
      this.special_mode = null;
      this.obs_search_strategy = null;
      this.speed_mode = null;
      this.obs_strategy = null;
      this.follow_strategy = null;
      this.cross_option = null;
      this.reserved_option = null;
    }
    else {
      if (initObj.hasOwnProperty('start_or_pause')) {
        this.start_or_pause = initObj.start_or_pause
      }
      else {
        this.start_or_pause = false;
      }
      if (initObj.hasOwnProperty('stop_and_save')) {
        this.stop_and_save = initObj.stop_and_save
      }
      else {
        this.stop_and_save = false;
      }
      if (initObj.hasOwnProperty('closed')) {
        this.closed = initObj.closed
      }
      else {
        this.closed = false;
      }
      if (initObj.hasOwnProperty('speed_limit_kph')) {
        this.speed_limit_kph = initObj.speed_limit_kph
      }
      else {
        this.speed_limit_kph = 0.0;
      }
      if (initObj.hasOwnProperty('bag_name')) {
        this.bag_name = initObj.bag_name
      }
      else {
        this.bag_name = '';
      }
      if (initObj.hasOwnProperty('tpk_name')) {
        this.tpk_name = initObj.tpk_name
      }
      else {
        this.tpk_name = '';
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapCfg
    // Serialize message field [start_or_pause]
    bufferOffset = _serializer.bool(obj.start_or_pause, buffer, bufferOffset);
    // Serialize message field [stop_and_save]
    bufferOffset = _serializer.bool(obj.stop_and_save, buffer, bufferOffset);
    // Serialize message field [closed]
    bufferOffset = _serializer.bool(obj.closed, buffer, bufferOffset);
    // Serialize message field [speed_limit_kph]
    bufferOffset = _serializer.float32(obj.speed_limit_kph, buffer, bufferOffset);
    // Serialize message field [bag_name]
    bufferOffset = _serializer.string(obj.bag_name, buffer, bufferOffset);
    // Serialize message field [tpk_name]
    bufferOffset = _serializer.string(obj.tpk_name, buffer, bufferOffset);
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
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapCfg
    let len;
    let data = new MapCfg(null);
    // Deserialize message field [start_or_pause]
    data.start_or_pause = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stop_and_save]
    data.stop_and_save = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [closed]
    data.closed = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed_limit_kph]
    data.speed_limit_kph = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bag_name]
    data.bag_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [tpk_name]
    data.tpk_name = _deserializer.string(buffer, bufferOffset);
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
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.bag_name.length;
    length += object.tpk_name.length;
    return length + 51;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/MapCfg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '114743d989eebb15f931732b39a7a0f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    
    
    
    bool start_or_pause
    bool stop_and_save
    bool closed
    float32 speed_limit_kph
    
    string bag_name
    string tpk_name
    ####################################33
    
    int32 rtk_mode
    int32 driving_mode # acc or collision avoidance
    int32 special_mode  #
    
    ####################################33
    int32 obs_search_strategy  # 0: donot search obs
    int32 speed_mode  #
    int32 obs_strategy  #
    int32 follow_strategy  #
    int32 cross_option  #
    int32 reserved_option  #
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapCfg(null);
    if (msg.start_or_pause !== undefined) {
      resolved.start_or_pause = msg.start_or_pause;
    }
    else {
      resolved.start_or_pause = false
    }

    if (msg.stop_and_save !== undefined) {
      resolved.stop_and_save = msg.stop_and_save;
    }
    else {
      resolved.stop_and_save = false
    }

    if (msg.closed !== undefined) {
      resolved.closed = msg.closed;
    }
    else {
      resolved.closed = false
    }

    if (msg.speed_limit_kph !== undefined) {
      resolved.speed_limit_kph = msg.speed_limit_kph;
    }
    else {
      resolved.speed_limit_kph = 0.0
    }

    if (msg.bag_name !== undefined) {
      resolved.bag_name = msg.bag_name;
    }
    else {
      resolved.bag_name = ''
    }

    if (msg.tpk_name !== undefined) {
      resolved.tpk_name = msg.tpk_name;
    }
    else {
      resolved.tpk_name = ''
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

    return resolved;
    }
};

module.exports = MapCfg;
