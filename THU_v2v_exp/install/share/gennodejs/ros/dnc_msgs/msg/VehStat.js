// Auto-generated. Do not edit!

// (in-package dnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class VehStat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vx = null;
      this.v_kmh = null;
      this.sw_deg = null;
      this.sw_rad = null;
      this.gear_status = null;
    }
    else {
      if (initObj.hasOwnProperty('vx')) {
        this.vx = initObj.vx
      }
      else {
        this.vx = 0.0;
      }
      if (initObj.hasOwnProperty('v_kmh')) {
        this.v_kmh = initObj.v_kmh
      }
      else {
        this.v_kmh = 0.0;
      }
      if (initObj.hasOwnProperty('sw_deg')) {
        this.sw_deg = initObj.sw_deg
      }
      else {
        this.sw_deg = 0.0;
      }
      if (initObj.hasOwnProperty('sw_rad')) {
        this.sw_rad = initObj.sw_rad
      }
      else {
        this.sw_rad = 0.0;
      }
      if (initObj.hasOwnProperty('gear_status')) {
        this.gear_status = initObj.gear_status
      }
      else {
        this.gear_status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehStat
    // Serialize message field [vx]
    bufferOffset = _serializer.float32(obj.vx, buffer, bufferOffset);
    // Serialize message field [v_kmh]
    bufferOffset = _serializer.float32(obj.v_kmh, buffer, bufferOffset);
    // Serialize message field [sw_deg]
    bufferOffset = _serializer.float32(obj.sw_deg, buffer, bufferOffset);
    // Serialize message field [sw_rad]
    bufferOffset = _serializer.float32(obj.sw_rad, buffer, bufferOffset);
    // Serialize message field [gear_status]
    bufferOffset = _serializer.int32(obj.gear_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehStat
    let len;
    let data = new VehStat(null);
    // Deserialize message field [vx]
    data.vx = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [v_kmh]
    data.v_kmh = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sw_deg]
    data.sw_deg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sw_rad]
    data.sw_rad = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gear_status]
    data.gear_status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnc_msgs/VehStat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e80772b9bb70a4ec8d045b4f390e4eb8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    float32 vx
    float32 v_kmh
    float32 sw_deg
    float32 sw_rad
    
    int32 gear_status
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehStat(null);
    if (msg.vx !== undefined) {
      resolved.vx = msg.vx;
    }
    else {
      resolved.vx = 0.0
    }

    if (msg.v_kmh !== undefined) {
      resolved.v_kmh = msg.v_kmh;
    }
    else {
      resolved.v_kmh = 0.0
    }

    if (msg.sw_deg !== undefined) {
      resolved.sw_deg = msg.sw_deg;
    }
    else {
      resolved.sw_deg = 0.0
    }

    if (msg.sw_rad !== undefined) {
      resolved.sw_rad = msg.sw_rad;
    }
    else {
      resolved.sw_rad = 0.0
    }

    if (msg.gear_status !== undefined) {
      resolved.gear_status = msg.gear_status;
    }
    else {
      resolved.gear_status = 0
    }

    return resolved;
    }
};

module.exports = VehStat;
