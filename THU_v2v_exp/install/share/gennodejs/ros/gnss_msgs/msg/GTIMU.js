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

class GTIMU {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.GPSWeek = null;
      this.GPSTime = null;
      this.pitch_rate = null;
      this.roll_rate = null;
      this.yaw_rate = null;
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.tpr = null;
    }
    else {
      if (initObj.hasOwnProperty('GPSWeek')) {
        this.GPSWeek = initObj.GPSWeek
      }
      else {
        this.GPSWeek = 0;
      }
      if (initObj.hasOwnProperty('GPSTime')) {
        this.GPSTime = initObj.GPSTime
      }
      else {
        this.GPSTime = 0.0;
      }
      if (initObj.hasOwnProperty('pitch_rate')) {
        this.pitch_rate = initObj.pitch_rate
      }
      else {
        this.pitch_rate = 0.0;
      }
      if (initObj.hasOwnProperty('roll_rate')) {
        this.roll_rate = initObj.roll_rate
      }
      else {
        this.roll_rate = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rate')) {
        this.yaw_rate = initObj.yaw_rate
      }
      else {
        this.yaw_rate = 0.0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('tpr')) {
        this.tpr = initObj.tpr
      }
      else {
        this.tpr = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GTIMU
    // Serialize message field [GPSWeek]
    bufferOffset = _serializer.int32(obj.GPSWeek, buffer, bufferOffset);
    // Serialize message field [GPSTime]
    bufferOffset = _serializer.float64(obj.GPSTime, buffer, bufferOffset);
    // Serialize message field [pitch_rate]
    bufferOffset = _serializer.float64(obj.pitch_rate, buffer, bufferOffset);
    // Serialize message field [roll_rate]
    bufferOffset = _serializer.float64(obj.roll_rate, buffer, bufferOffset);
    // Serialize message field [yaw_rate]
    bufferOffset = _serializer.float64(obj.yaw_rate, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float64(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float64(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.float64(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [tpr]
    bufferOffset = _serializer.float64(obj.tpr, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GTIMU
    let len;
    let data = new GTIMU(null);
    // Deserialize message field [GPSWeek]
    data.GPSWeek = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GPSTime]
    data.GPSTime = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch_rate]
    data.pitch_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll_rate]
    data.roll_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yaw_rate]
    data.yaw_rate = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [tpr]
    data.tpr = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_msgs/GTIMU';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd78377954954abd5e348c740ac6f7798';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 GPSWeek
    float64 GPSTime
    float64 pitch_rate
    float64 roll_rate
    float64 yaw_rate
    
    float64 acc_x
    float64 acc_y
    float64 acc_z
    
    float64 tpr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GTIMU(null);
    if (msg.GPSWeek !== undefined) {
      resolved.GPSWeek = msg.GPSWeek;
    }
    else {
      resolved.GPSWeek = 0
    }

    if (msg.GPSTime !== undefined) {
      resolved.GPSTime = msg.GPSTime;
    }
    else {
      resolved.GPSTime = 0.0
    }

    if (msg.pitch_rate !== undefined) {
      resolved.pitch_rate = msg.pitch_rate;
    }
    else {
      resolved.pitch_rate = 0.0
    }

    if (msg.roll_rate !== undefined) {
      resolved.roll_rate = msg.roll_rate;
    }
    else {
      resolved.roll_rate = 0.0
    }

    if (msg.yaw_rate !== undefined) {
      resolved.yaw_rate = msg.yaw_rate;
    }
    else {
      resolved.yaw_rate = 0.0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0.0
    }

    if (msg.tpr !== undefined) {
      resolved.tpr = msg.tpr;
    }
    else {
      resolved.tpr = 0.0
    }

    return resolved;
    }
};

module.exports = GTIMU;
