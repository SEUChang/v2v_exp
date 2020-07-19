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

class actuator {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.epsmethod = null;
      this.epstorque = null;
      this.epserror = null;
      this.epsangle = null;
      this.escbrakepress = null;
      this.gaspedal = null;
      this.sysstatus = null;
      this.speed = null;
      this.lights = null;
      this.turnLight = null;
      this.geer = null;
      this.epb = null;
      this.isvalid = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('epsmethod')) {
        this.epsmethod = initObj.epsmethod
      }
      else {
        this.epsmethod = 0;
      }
      if (initObj.hasOwnProperty('epstorque')) {
        this.epstorque = initObj.epstorque
      }
      else {
        this.epstorque = 0;
      }
      if (initObj.hasOwnProperty('epserror')) {
        this.epserror = initObj.epserror
      }
      else {
        this.epserror = 0;
      }
      if (initObj.hasOwnProperty('epsangle')) {
        this.epsangle = initObj.epsangle
      }
      else {
        this.epsangle = 0;
      }
      if (initObj.hasOwnProperty('escbrakepress')) {
        this.escbrakepress = initObj.escbrakepress
      }
      else {
        this.escbrakepress = 0;
      }
      if (initObj.hasOwnProperty('gaspedal')) {
        this.gaspedal = initObj.gaspedal
      }
      else {
        this.gaspedal = 0;
      }
      if (initObj.hasOwnProperty('sysstatus')) {
        this.sysstatus = initObj.sysstatus
      }
      else {
        this.sysstatus = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('lights')) {
        this.lights = initObj.lights
      }
      else {
        this.lights = 0;
      }
      if (initObj.hasOwnProperty('turnLight')) {
        this.turnLight = initObj.turnLight
      }
      else {
        this.turnLight = 0;
      }
      if (initObj.hasOwnProperty('geer')) {
        this.geer = initObj.geer
      }
      else {
        this.geer = 0;
      }
      if (initObj.hasOwnProperty('epb')) {
        this.epb = initObj.epb
      }
      else {
        this.epb = 0;
      }
      if (initObj.hasOwnProperty('isvalid')) {
        this.isvalid = initObj.isvalid
      }
      else {
        this.isvalid = 0;
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
    // Serializes a message object of type actuator
    // Serialize message field [epsmethod]
    bufferOffset = _serializer.uint8(obj.epsmethod, buffer, bufferOffset);
    // Serialize message field [epstorque]
    bufferOffset = _serializer.uint8(obj.epstorque, buffer, bufferOffset);
    // Serialize message field [epserror]
    bufferOffset = _serializer.uint8(obj.epserror, buffer, bufferOffset);
    // Serialize message field [epsangle]
    bufferOffset = _serializer.int16(obj.epsangle, buffer, bufferOffset);
    // Serialize message field [escbrakepress]
    bufferOffset = _serializer.uint8(obj.escbrakepress, buffer, bufferOffset);
    // Serialize message field [gaspedal]
    bufferOffset = _serializer.uint8(obj.gaspedal, buffer, bufferOffset);
    // Serialize message field [sysstatus]
    bufferOffset = _serializer.uint8(obj.sysstatus, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [lights]
    bufferOffset = _serializer.uint8(obj.lights, buffer, bufferOffset);
    // Serialize message field [turnLight]
    bufferOffset = _serializer.uint8(obj.turnLight, buffer, bufferOffset);
    // Serialize message field [geer]
    bufferOffset = _serializer.uint8(obj.geer, buffer, bufferOffset);
    // Serialize message field [epb]
    bufferOffset = _serializer.uint8(obj.epb, buffer, bufferOffset);
    // Serialize message field [isvalid]
    bufferOffset = _serializer.uint8(obj.isvalid, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.int64(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type actuator
    let len;
    let data = new actuator(null);
    // Deserialize message field [epsmethod]
    data.epsmethod = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [epstorque]
    data.epstorque = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [epserror]
    data.epserror = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [epsangle]
    data.epsangle = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [escbrakepress]
    data.escbrakepress = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gaspedal]
    data.gaspedal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [sysstatus]
    data.sysstatus = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lights]
    data.lights = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [turnLight]
    data.turnLight = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [geer]
    data.geer = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [epb]
    data.epb = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [isvalid]
    data.isvalid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/actuator';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f5ae8b7fd4f1392f2d669cd9134bb652';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 epsmethod          #方向盘模式位
    uint8 epstorque          #方向盘扭矩
    uint8 epserror           #方向盘故障码
    int16 epsangle           #放向盘角度
    uint8 escbrakepress      #刹车压力
    uint8 gaspedal           #油门开度
    uint8 sysstatus          #系统状态
    float32 speed              #车速
    uint8 lights             #灯光
    uint8 turnLight
    uint8 geer
    uint8 epb
    uint8 isvalid            #有效位
    int64 timestamp          #时间戳
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new actuator(null);
    if (msg.epsmethod !== undefined) {
      resolved.epsmethod = msg.epsmethod;
    }
    else {
      resolved.epsmethod = 0
    }

    if (msg.epstorque !== undefined) {
      resolved.epstorque = msg.epstorque;
    }
    else {
      resolved.epstorque = 0
    }

    if (msg.epserror !== undefined) {
      resolved.epserror = msg.epserror;
    }
    else {
      resolved.epserror = 0
    }

    if (msg.epsangle !== undefined) {
      resolved.epsangle = msg.epsangle;
    }
    else {
      resolved.epsangle = 0
    }

    if (msg.escbrakepress !== undefined) {
      resolved.escbrakepress = msg.escbrakepress;
    }
    else {
      resolved.escbrakepress = 0
    }

    if (msg.gaspedal !== undefined) {
      resolved.gaspedal = msg.gaspedal;
    }
    else {
      resolved.gaspedal = 0
    }

    if (msg.sysstatus !== undefined) {
      resolved.sysstatus = msg.sysstatus;
    }
    else {
      resolved.sysstatus = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.lights !== undefined) {
      resolved.lights = msg.lights;
    }
    else {
      resolved.lights = 0
    }

    if (msg.turnLight !== undefined) {
      resolved.turnLight = msg.turnLight;
    }
    else {
      resolved.turnLight = 0
    }

    if (msg.geer !== undefined) {
      resolved.geer = msg.geer;
    }
    else {
      resolved.geer = 0
    }

    if (msg.epb !== undefined) {
      resolved.epb = msg.epb;
    }
    else {
      resolved.epb = 0
    }

    if (msg.isvalid !== undefined) {
      resolved.isvalid = msg.isvalid;
    }
    else {
      resolved.isvalid = 0
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

module.exports = actuator;
