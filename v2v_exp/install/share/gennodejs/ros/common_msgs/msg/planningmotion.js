// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let roadpoint = require('./roadpoint.js');

//-----------------------------------------------------------

class planningmotion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.points = null;
      this.guidespeed = null;
      this.guideangle = null;
      this.changelanedis = null;
      this.isvalid = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('points')) {
        this.points = initObj.points
      }
      else {
        this.points = [];
      }
      if (initObj.hasOwnProperty('guidespeed')) {
        this.guidespeed = initObj.guidespeed
      }
      else {
        this.guidespeed = 0.0;
      }
      if (initObj.hasOwnProperty('guideangle')) {
        this.guideangle = initObj.guideangle
      }
      else {
        this.guideangle = 0.0;
      }
      if (initObj.hasOwnProperty('changelanedis')) {
        this.changelanedis = initObj.changelanedis
      }
      else {
        this.changelanedis = 0.0;
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
    // Serializes a message object of type planningmotion
    // Serialize message field [points]
    // Serialize the length for message field [points]
    bufferOffset = _serializer.uint32(obj.points.length, buffer, bufferOffset);
    obj.points.forEach((val) => {
      bufferOffset = roadpoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [guidespeed]
    bufferOffset = _serializer.float32(obj.guidespeed, buffer, bufferOffset);
    // Serialize message field [guideangle]
    bufferOffset = _serializer.float32(obj.guideangle, buffer, bufferOffset);
    // Serialize message field [changelanedis]
    bufferOffset = _serializer.float32(obj.changelanedis, buffer, bufferOffset);
    // Serialize message field [isvalid]
    bufferOffset = _serializer.uint8(obj.isvalid, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.int64(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type planningmotion
    let len;
    let data = new planningmotion(null);
    // Deserialize message field [points]
    // Deserialize array length for message field [points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.points[i] = roadpoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [guidespeed]
    data.guidespeed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [guideangle]
    data.guideangle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [changelanedis]
    data.changelanedis = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isvalid]
    data.isvalid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 22 * object.points.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/planningmotion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '60c4de7218f80a33e433e83c3d8c4fcb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    roadpoint[] points   #轨迹点
    float32 guidespeed   #指导速度 m/s
    float32 guideangle
    float32 changelanedis
    uint8  isvalid
    int64 timestamp
    ================================================================================
    MSG: common_msgs/roadpoint
    int16 x                  #局部横坐标   cm
    int16 y                  #局部纵坐标   cm
    int32 gx                 #全局横坐标   cm
    int32 gy                 #全局纵坐标   cm
    uint8 roadtype           #道路属性
    uint8 lanetype           #当前车道|总车道(4|4)
    float32 heading          #heading
    float32 curvature
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new planningmotion(null);
    if (msg.points !== undefined) {
      resolved.points = new Array(msg.points.length);
      for (let i = 0; i < resolved.points.length; ++i) {
        resolved.points[i] = roadpoint.Resolve(msg.points[i]);
      }
    }
    else {
      resolved.points = []
    }

    if (msg.guidespeed !== undefined) {
      resolved.guidespeed = msg.guidespeed;
    }
    else {
      resolved.guidespeed = 0.0
    }

    if (msg.guideangle !== undefined) {
      resolved.guideangle = msg.guideangle;
    }
    else {
      resolved.guideangle = 0.0
    }

    if (msg.changelanedis !== undefined) {
      resolved.changelanedis = msg.changelanedis;
    }
    else {
      resolved.changelanedis = 0.0
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

module.exports = planningmotion;
