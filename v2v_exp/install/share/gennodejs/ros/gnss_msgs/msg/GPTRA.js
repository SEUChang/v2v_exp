// Auto-generated. Do not edit!

// (in-package gnss_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GPTRA {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.utc_time = null;
      this.yaw = null;
      this.pitch = null;
      this.roll = null;
      this.QF = null;
      this.sta_num = null;
      this.delay = null;
      this.stn_id = null;
    }
    else {
      if (initObj.hasOwnProperty('utc_time')) {
        this.utc_time = initObj.utc_time
      }
      else {
        this.utc_time = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('QF')) {
        this.QF = initObj.QF
      }
      else {
        this.QF = 0;
      }
      if (initObj.hasOwnProperty('sta_num')) {
        this.sta_num = initObj.sta_num
      }
      else {
        this.sta_num = 0;
      }
      if (initObj.hasOwnProperty('delay')) {
        this.delay = initObj.delay
      }
      else {
        this.delay = 0.0;
      }
      if (initObj.hasOwnProperty('stn_id')) {
        this.stn_id = initObj.stn_id
      }
      else {
        this.stn_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPTRA
    // Serialize message field [utc_time]
    bufferOffset = _serializer.float64(obj.utc_time, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [QF]
    bufferOffset = _serializer.int8(obj.QF, buffer, bufferOffset);
    // Serialize message field [sta_num]
    bufferOffset = _serializer.int8(obj.sta_num, buffer, bufferOffset);
    // Serialize message field [delay]
    bufferOffset = _serializer.float64(obj.delay, buffer, bufferOffset);
    // Serialize message field [stn_id]
    bufferOffset = _serializer.int8(obj.stn_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPTRA
    let len;
    let data = new GPTRA(null);
    // Deserialize message field [utc_time]
    data.utc_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [QF]
    data.QF = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sta_num]
    data.sta_num = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [delay]
    data.delay = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [stn_id]
    data.stn_id = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_msgs/GPTRA';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e282e90be2db4683bb90f41f45ec3f97';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float64 utc_time
    float64 yaw
    float64 pitch
    float64 roll
    int8 QF
    int8 sta_num
    float64 delay
    int8 stn_id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPTRA(null);
    if (msg.utc_time !== undefined) {
      resolved.utc_time = msg.utc_time;
    }
    else {
      resolved.utc_time = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.QF !== undefined) {
      resolved.QF = msg.QF;
    }
    else {
      resolved.QF = 0
    }

    if (msg.sta_num !== undefined) {
      resolved.sta_num = msg.sta_num;
    }
    else {
      resolved.sta_num = 0
    }

    if (msg.delay !== undefined) {
      resolved.delay = msg.delay;
    }
    else {
      resolved.delay = 0.0
    }

    if (msg.stn_id !== undefined) {
      resolved.stn_id = msg.stn_id;
    }
    else {
      resolved.stn_id = 0
    }

    return resolved;
    }
};

module.exports = GPTRA;
