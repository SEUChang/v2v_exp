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

class sensorgps {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lon = null;
      this.lat = null;
      this.roadtype = null;
      this.lanetype = null;
      this.heading = null;
      this.pitch = null;
      this.roll = null;
      this.velocity = null;
      this.status = null;
      this.satenum = null;
      this.gpstime = null;
      this.isvalid = null;
      this.timestamp = null;
    }
    else {
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
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
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('satenum')) {
        this.satenum = initObj.satenum
      }
      else {
        this.satenum = 0;
      }
      if (initObj.hasOwnProperty('gpstime')) {
        this.gpstime = initObj.gpstime
      }
      else {
        this.gpstime = 0;
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
    // Serializes a message object of type sensorgps
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [roadtype]
    bufferOffset = _serializer.uint8(obj.roadtype, buffer, bufferOffset);
    // Serialize message field [lanetype]
    bufferOffset = _serializer.uint8(obj.lanetype, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.uint8(obj.status, buffer, bufferOffset);
    // Serialize message field [satenum]
    bufferOffset = _serializer.uint8(obj.satenum, buffer, bufferOffset);
    // Serialize message field [gpstime]
    bufferOffset = _serializer.int32(obj.gpstime, buffer, bufferOffset);
    // Serialize message field [isvalid]
    bufferOffset = _serializer.uint8(obj.isvalid, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.int64(obj.timestamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type sensorgps
    let len;
    let data = new sensorgps(null);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roadtype]
    data.roadtype = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [lanetype]
    data.lanetype = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [satenum]
    data.satenum = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gpstime]
    data.gpstime = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [isvalid]
    data.isvalid = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/sensorgps';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '942117abbdd2207c4cfc57759afd9a93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 lon          #纬度
    float64 lat          #经度
    uint8 roadtype       #道路属性
    uint8 lanetype       #当前车道|总车道(4|4)
    float64 heading      #航向角
    float64 pitch        #俯仰角
    float64 roll         #横滚角
    float64 velocity     #速度
    uint8 status         #导航状态
    uint8 satenum        #卫星个数
    int32 gpstime        #gps时间
    uint8 isvalid        #有效位
    int64 timestamp      #时间戳
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new sensorgps(null);
    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
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

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.satenum !== undefined) {
      resolved.satenum = msg.satenum;
    }
    else {
      resolved.satenum = 0
    }

    if (msg.gpstime !== undefined) {
      resolved.gpstime = msg.gpstime;
    }
    else {
      resolved.gpstime = 0
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

module.exports = sensorgps;
