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

class GPVTG {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.real_north = null;
      this.magn_north = null;
      this.speed_nav = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('real_north')) {
        this.real_north = initObj.real_north
      }
      else {
        this.real_north = 0.0;
      }
      if (initObj.hasOwnProperty('magn_north')) {
        this.magn_north = initObj.magn_north
      }
      else {
        this.magn_north = 0.0;
      }
      if (initObj.hasOwnProperty('speed_nav')) {
        this.speed_nav = initObj.speed_nav
      }
      else {
        this.speed_nav = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPVTG
    // Serialize message field [real_north]
    bufferOffset = _serializer.float64(obj.real_north, buffer, bufferOffset);
    // Serialize message field [magn_north]
    bufferOffset = _serializer.float64(obj.magn_north, buffer, bufferOffset);
    // Serialize message field [speed_nav]
    bufferOffset = _serializer.float64(obj.speed_nav, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPVTG
    let len;
    let data = new GPVTG(null);
    // Deserialize message field [real_north]
    data.real_north = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [magn_north]
    data.magn_north = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_nav]
    data.speed_nav = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_msgs/GPVTG';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55bf248c8109ca74aca673f0009467b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Message from GPVTG NMEA String
    
    
    float64 real_north
    float64 magn_north
    float64 speed_nav
    float64 speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPVTG(null);
    if (msg.real_north !== undefined) {
      resolved.real_north = msg.real_north;
    }
    else {
      resolved.real_north = 0.0
    }

    if (msg.magn_north !== undefined) {
      resolved.magn_north = msg.magn_north;
    }
    else {
      resolved.magn_north = 0.0
    }

    if (msg.speed_nav !== undefined) {
      resolved.speed_nav = msg.speed_nav;
    }
    else {
      resolved.speed_nav = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

module.exports = GPVTG;
