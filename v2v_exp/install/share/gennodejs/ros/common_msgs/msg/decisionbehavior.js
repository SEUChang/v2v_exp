// Auto-generated. Do not edit!

// (in-package common_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensorobject = require('./sensorobject.js');

//-----------------------------------------------------------

class decisionbehavior {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.drivebehavior = null;
      this.obs = null;
      this.isvalid = null;
      this.turnlights = null;
      this.laneblock = null;
      this.adjustspeed = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('drivebehavior')) {
        this.drivebehavior = initObj.drivebehavior
      }
      else {
        this.drivebehavior = 0;
      }
      if (initObj.hasOwnProperty('obs')) {
        this.obs = initObj.obs
      }
      else {
        this.obs = [];
      }
      if (initObj.hasOwnProperty('isvalid')) {
        this.isvalid = initObj.isvalid
      }
      else {
        this.isvalid = 0;
      }
      if (initObj.hasOwnProperty('turnlights')) {
        this.turnlights = initObj.turnlights
      }
      else {
        this.turnlights = 0;
      }
      if (initObj.hasOwnProperty('laneblock')) {
        this.laneblock = initObj.laneblock
      }
      else {
        this.laneblock = 0;
      }
      if (initObj.hasOwnProperty('adjustspeed')) {
        this.adjustspeed = initObj.adjustspeed
      }
      else {
        this.adjustspeed = 0;
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
    // Serializes a message object of type decisionbehavior
    // Serialize message field [drivebehavior]
    bufferOffset = _serializer.uint8(obj.drivebehavior, buffer, bufferOffset);
    // Serialize message field [obs]
    // Serialize the length for message field [obs]
    bufferOffset = _serializer.uint32(obj.obs.length, buffer, bufferOffset);
    obj.obs.forEach((val) => {
      bufferOffset = sensorobject.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [isvalid]
    bufferOffset = _serializer.uint8(obj.isvalid, buffer, bufferOffset);
    // Serialize message field [turnlights]
    bufferOffset = _serializer.uint8(obj.turnlights, buffer, bufferOffset);
    // Serialize message field [laneblock]
    bufferOffset = _serializer.uint8(obj.laneblock, buffer, bufferOffset);
    // Serialize message field [adjustspeed]
    bufferOffset = _serializer.uint8(obj.adjustspeed, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.int64(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type decisionbehavior
    let len;
    let data = new decisionbehavior(null);
    // Deserialize message field [drivebehavior]
    data.drivebehavior = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [obs]
    // Deserialize array length for message field [obs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obs[i] = sensorobject.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [isvalid]
    data.isvalid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [turnlights]
    data.turnlights = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [laneblock]
    data.laneblock = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [adjustspeed]
    data.adjustspeed = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.obs.forEach((val) => {
      length += sensorobject.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/decisionbehavior';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39bd5187cf8d5459e943d2531dd4d87e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 drivebehavior   #驾驶行为
    sensorobject[] obs    #障碍物
    uint8 isvalid         #有效位
    uint8 turnlights      #转向灯
    uint8 laneblock
    uint8 adjustspeed     #调整速度　１　调整　０　不变
    int64 timestamp       #时间戳
    ================================================================================
    MSG: common_msgs/sensorobject
    uint8   id                     #跟踪的ID
    float32 x                      #横坐标
    float32 y                      #纵坐标
    float32 relspeedy              #纵轴相对速度
    float32 relspeedx              #横轴相对速度
    float32 azimuth                #航向
    float32 width                  #宽度
    float32 length                 #长度
    float32 height                 #高度
    uint8   classification         #类别
    uint8   value                  #置信度
    point3d[] points #轮廓点数据 
    ================================================================================
    MSG: common_msgs/point3d
    float32 x
    float32 y
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new decisionbehavior(null);
    if (msg.drivebehavior !== undefined) {
      resolved.drivebehavior = msg.drivebehavior;
    }
    else {
      resolved.drivebehavior = 0
    }

    if (msg.obs !== undefined) {
      resolved.obs = new Array(msg.obs.length);
      for (let i = 0; i < resolved.obs.length; ++i) {
        resolved.obs[i] = sensorobject.Resolve(msg.obs[i]);
      }
    }
    else {
      resolved.obs = []
    }

    if (msg.isvalid !== undefined) {
      resolved.isvalid = msg.isvalid;
    }
    else {
      resolved.isvalid = 0
    }

    if (msg.turnlights !== undefined) {
      resolved.turnlights = msg.turnlights;
    }
    else {
      resolved.turnlights = 0
    }

    if (msg.laneblock !== undefined) {
      resolved.laneblock = msg.laneblock;
    }
    else {
      resolved.laneblock = 0
    }

    if (msg.adjustspeed !== undefined) {
      resolved.adjustspeed = msg.adjustspeed;
    }
    else {
      resolved.adjustspeed = 0
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

module.exports = decisionbehavior;
