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

class controllon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.method = null;
      this.pedal = null;
      this.mode = null;
      this.objdis = null;
      this.objrel = null;
      this.parkdis = null;
      this.isvalid = null;
      this.geer = null;
      this.timestamp = null;
      this.gasPedal = null;
      this.brakePedal = null;
      this.targetSpeed = null;
    }
    else {
      if (initObj.hasOwnProperty('method')) {
        this.method = initObj.method
      }
      else {
        this.method = 0;
      }
      if (initObj.hasOwnProperty('pedal')) {
        this.pedal = initObj.pedal
      }
      else {
        this.pedal = 0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('objdis')) {
        this.objdis = initObj.objdis
      }
      else {
        this.objdis = 0.0;
      }
      if (initObj.hasOwnProperty('objrel')) {
        this.objrel = initObj.objrel
      }
      else {
        this.objrel = 0.0;
      }
      if (initObj.hasOwnProperty('parkdis')) {
        this.parkdis = initObj.parkdis
      }
      else {
        this.parkdis = 0.0;
      }
      if (initObj.hasOwnProperty('isvalid')) {
        this.isvalid = initObj.isvalid
      }
      else {
        this.isvalid = 0;
      }
      if (initObj.hasOwnProperty('geer')) {
        this.geer = initObj.geer
      }
      else {
        this.geer = 0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('gasPedal')) {
        this.gasPedal = initObj.gasPedal
      }
      else {
        this.gasPedal = 0;
      }
      if (initObj.hasOwnProperty('brakePedal')) {
        this.brakePedal = initObj.brakePedal
      }
      else {
        this.brakePedal = 0;
      }
      if (initObj.hasOwnProperty('targetSpeed')) {
        this.targetSpeed = initObj.targetSpeed
      }
      else {
        this.targetSpeed = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type controllon
    // Serialize message field [method]
    bufferOffset = _serializer.uint8(obj.method, buffer, bufferOffset);
    // Serialize message field [pedal]
    bufferOffset = _serializer.int8(obj.pedal, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [objdis]
    bufferOffset = _serializer.float32(obj.objdis, buffer, bufferOffset);
    // Serialize message field [objrel]
    bufferOffset = _serializer.float32(obj.objrel, buffer, bufferOffset);
    // Serialize message field [parkdis]
    bufferOffset = _serializer.float32(obj.parkdis, buffer, bufferOffset);
    // Serialize message field [isvalid]
    bufferOffset = _serializer.uint8(obj.isvalid, buffer, bufferOffset);
    // Serialize message field [geer]
    bufferOffset = _serializer.uint8(obj.geer, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.int64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [gasPedal]
    bufferOffset = _serializer.uint8(obj.gasPedal, buffer, bufferOffset);
    // Serialize message field [brakePedal]
    bufferOffset = _serializer.uint8(obj.brakePedal, buffer, bufferOffset);
    // Serialize message field [targetSpeed]
    bufferOffset = _serializer.uint8(obj.targetSpeed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type controllon
    let len;
    let data = new controllon(null);
    // Deserialize message field [method]
    data.method = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pedal]
    data.pedal = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [objdis]
    data.objdis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [objrel]
    data.objrel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [parkdis]
    data.parkdis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isvalid]
    data.isvalid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [geer]
    data.geer = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [gasPedal]
    data.gasPedal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [brakePedal]
    data.brakePedal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [targetSpeed]
    data.targetSpeed = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/controllon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50c02c1f1bee67af253cc975ea95407b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8    method     #使能位
    int8     pedal      #输出量
    uint8    mode       #mode
    float32  objdis     #
    float32  objrel     #
    float32  parkdis
    uint8    isvalid    #有效位
    uint8    geer       #
    int64    timestamp  #时间戳 
    uint8    gasPedal
    uint8    brakePedal
    uint8    targetSpeed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new controllon(null);
    if (msg.method !== undefined) {
      resolved.method = msg.method;
    }
    else {
      resolved.method = 0
    }

    if (msg.pedal !== undefined) {
      resolved.pedal = msg.pedal;
    }
    else {
      resolved.pedal = 0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.objdis !== undefined) {
      resolved.objdis = msg.objdis;
    }
    else {
      resolved.objdis = 0.0
    }

    if (msg.objrel !== undefined) {
      resolved.objrel = msg.objrel;
    }
    else {
      resolved.objrel = 0.0
    }

    if (msg.parkdis !== undefined) {
      resolved.parkdis = msg.parkdis;
    }
    else {
      resolved.parkdis = 0.0
    }

    if (msg.isvalid !== undefined) {
      resolved.isvalid = msg.isvalid;
    }
    else {
      resolved.isvalid = 0
    }

    if (msg.geer !== undefined) {
      resolved.geer = msg.geer;
    }
    else {
      resolved.geer = 0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.gasPedal !== undefined) {
      resolved.gasPedal = msg.gasPedal;
    }
    else {
      resolved.gasPedal = 0
    }

    if (msg.brakePedal !== undefined) {
      resolved.brakePedal = msg.brakePedal;
    }
    else {
      resolved.brakePedal = 0
    }

    if (msg.targetSpeed !== undefined) {
      resolved.targetSpeed = msg.targetSpeed;
    }
    else {
      resolved.targetSpeed = 0
    }

    return resolved;
    }
};

module.exports = controllon;
