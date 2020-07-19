// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class controllat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.epsmethod = null;
      this.epsangle = null;
      this.limitspeed = null;
      this.epstorque = null;
      this.lights = null;
      this.isvalid = null;
      this.deviation = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('epsmethod')) {
        this.epsmethod = initObj.epsmethod
      }
      else {
        this.epsmethod = 0;
      }
      if (initObj.hasOwnProperty('epsangle')) {
        this.epsangle = initObj.epsangle
      }
      else {
        this.epsangle = 0;
      }
      if (initObj.hasOwnProperty('limitspeed')) {
        this.limitspeed = initObj.limitspeed
      }
      else {
        this.limitspeed = 0.0;
      }
      if (initObj.hasOwnProperty('epstorque')) {
        this.epstorque = initObj.epstorque
      }
      else {
        this.epstorque = 0.0;
      }
      if (initObj.hasOwnProperty('lights')) {
        this.lights = initObj.lights
      }
      else {
        this.lights = 0;
      }
      if (initObj.hasOwnProperty('isvalid')) {
        this.isvalid = initObj.isvalid
      }
      else {
        this.isvalid = 0;
      }
      if (initObj.hasOwnProperty('deviation')) {
        this.deviation = initObj.deviation
      }
      else {
        this.deviation = 0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type controllat
    // Serialize message field [epsmethod]
    bufferOffset = _serializer.uint8(obj.epsmethod, buffer, bufferOffset);
    // Serialize message field [epsangle]
    bufferOffset = _serializer.int16(obj.epsangle, buffer, bufferOffset);
    // Serialize message field [limitspeed]
    bufferOffset = _serializer.float32(obj.limitspeed, buffer, bufferOffset);
    // Serialize message field [epstorque]
    bufferOffset = _serializer.float32(obj.epstorque, buffer, bufferOffset);
    // Serialize message field [lights]
    bufferOffset = _serializer.uint8(obj.lights, buffer, bufferOffset);
    // Serialize message field [isvalid]
    bufferOffset = _serializer.uint8(obj.isvalid, buffer, bufferOffset);
    // Serialize message field [deviation]
    bufferOffset = _serializer.int16(obj.deviation, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.int64(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type controllat
    let len;
    let data = new controllat(null);
    // Deserialize message field [epsmethod]
    data.epsmethod = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [epsangle]
    data.epsangle = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [limitspeed]
    data.limitspeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [epstorque]
    data.epstorque = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lights]
    data.lights = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isvalid]
    data.isvalid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [deviation]
    data.deviation = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/controllat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0c1639e4c92c3d89dd4c0c14d08ef839';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8    epsmethod   #使能位
    int16    epsangle    #目标角度
    float32  limitspeed  #限速
    float32  epstorque   #扭矩
    uint8    lights      #目标灯光
    uint8    isvalid     #有效位
    int16    deviation   #deviation
    int64    timestamp   #时间戳
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new controllat(null);
    if (msg.epsmethod !== undefined) {
      resolved.epsmethod = msg.epsmethod;
    }
    else {
      resolved.epsmethod = 0
    }

    if (msg.epsangle !== undefined) {
      resolved.epsangle = msg.epsangle;
    }
    else {
      resolved.epsangle = 0
    }

    if (msg.limitspeed !== undefined) {
      resolved.limitspeed = msg.limitspeed;
    }
    else {
      resolved.limitspeed = 0.0
    }

    if (msg.epstorque !== undefined) {
      resolved.epstorque = msg.epstorque;
    }
    else {
      resolved.epstorque = 0.0
    }

    if (msg.lights !== undefined) {
      resolved.lights = msg.lights;
    }
    else {
      resolved.lights = 0
    }

    if (msg.isvalid !== undefined) {
      resolved.isvalid = msg.isvalid;
    }
    else {
      resolved.isvalid = 0
    }

    if (msg.deviation !== undefined) {
      resolved.deviation = msg.deviation;
    }
    else {
      resolved.deviation = 0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    return resolved;
    }
};

module.exports = controllat;
