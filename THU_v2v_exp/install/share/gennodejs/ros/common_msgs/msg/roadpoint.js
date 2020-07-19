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

class roadpoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.gx = null;
      this.gy = null;
      this.roadtype = null;
      this.lanetype = null;
      this.heading = null;
      this.curvature = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0;
      }
      if (initObj.hasOwnProperty('gx')) {
        this.gx = initObj.gx
      }
      else {
        this.gx = 0;
      }
      if (initObj.hasOwnProperty('gy')) {
        this.gy = initObj.gy
      }
      else {
        this.gy = 0;
      }
      if (initObj.hasOwnProperty('roadtype')) {
        this.roadtype = initObj.roadtype
      }
      else {
        this.roadtype = 0;
      }
      if (initObj.hasOwnProperty('lanetype')) {
        this.lanetype = initObj.lanetype
      }
      else {
        this.lanetype = 0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('curvature')) {
        this.curvature = initObj.curvature
      }
      else {
        this.curvature = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type roadpoint
    // Serialize message field [x]
    bufferOffset = _serializer.int16(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.int16(obj.y, buffer, bufferOffset);
    // Serialize message field [gx]
    bufferOffset = _serializer.int32(obj.gx, buffer, bufferOffset);
    // Serialize message field [gy]
    bufferOffset = _serializer.int32(obj.gy, buffer, bufferOffset);
    // Serialize message field [roadtype]
    bufferOffset = _serializer.uint8(obj.roadtype, buffer, bufferOffset);
    // Serialize message field [lanetype]
    bufferOffset = _serializer.uint8(obj.lanetype, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float32(obj.heading, buffer, bufferOffset);
    // Serialize message field [curvature]
    bufferOffset = _serializer.float32(obj.curvature, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type roadpoint
    let len;
    let data = new roadpoint(null);
    // Deserialize message field [x]
    data.x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [gx]
    data.gx = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gy]
    data.gy = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [roadtype]
    data.roadtype = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lanetype]
    data.lanetype = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curvature]
    data.curvature = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/roadpoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5188723d8908b67bd1c8e04daf63a8f8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new roadpoint(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0
    }

    if (msg.gx !== undefined) {
      resolved.gx = msg.gx;
    }
    else {
      resolved.gx = 0
    }

    if (msg.gy !== undefined) {
      resolved.gy = msg.gy;
    }
    else {
      resolved.gy = 0
    }

    if (msg.roadtype !== undefined) {
      resolved.roadtype = msg.roadtype;
    }
    else {
      resolved.roadtype = 0
    }

    if (msg.lanetype !== undefined) {
      resolved.lanetype = msg.lanetype;
    }
    else {
      resolved.lanetype = 0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.curvature !== undefined) {
      resolved.curvature = msg.curvature;
    }
    else {
      resolved.curvature = 0.0
    }

    return resolved;
    }
};

module.exports = roadpoint;
