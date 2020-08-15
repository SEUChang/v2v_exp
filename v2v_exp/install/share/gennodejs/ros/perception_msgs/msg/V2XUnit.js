// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class V2XUnit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.x = null;
      this.y = null;
      this.yaw = null;
      this.speed = null;
      this.utc_time = null;
      this.platoon_status = null;
      this.bdata0 = null;
      this.bdata1 = null;
      this.bdata2 = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
      if (initObj.hasOwnProperty('utc_time')) {
        this.utc_time = initObj.utc_time
      }
      else {
        this.utc_time = 0.0;
      }
      if (initObj.hasOwnProperty('platoon_status')) {
        this.platoon_status = initObj.platoon_status
      }
      else {
        this.platoon_status = 0;
      }
      if (initObj.hasOwnProperty('bdata0')) {
        this.bdata0 = initObj.bdata0
      }
      else {
        this.bdata0 = 0.0;
      }
      if (initObj.hasOwnProperty('bdata1')) {
        this.bdata1 = initObj.bdata1
      }
      else {
        this.bdata1 = 0.0;
      }
      if (initObj.hasOwnProperty('bdata2')) {
        this.bdata2 = initObj.bdata2
      }
      else {
        this.bdata2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2XUnit
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float32(obj.yaw, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    // Serialize message field [utc_time]
    bufferOffset = _serializer.float32(obj.utc_time, buffer, bufferOffset);
    // Serialize message field [platoon_status]
    bufferOffset = _serializer.uint32(obj.platoon_status, buffer, bufferOffset);
    // Serialize message field [bdata0]
    bufferOffset = _serializer.float32(obj.bdata0, buffer, bufferOffset);
    // Serialize message field [bdata1]
    bufferOffset = _serializer.float32(obj.bdata1, buffer, bufferOffset);
    // Serialize message field [bdata2]
    bufferOffset = _serializer.float32(obj.bdata2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2XUnit
    let len;
    let data = new V2XUnit(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [utc_time]
    data.utc_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [platoon_status]
    data.platoon_status = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [bdata0]
    data.bdata0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bdata1]
    data.bdata1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bdata2]
    data.bdata2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/V2XUnit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45bc168a1e84404a48fc0ed86b72e629';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    
    #std_msgs/String info_id
    int32  id
    float32 x
    float32 y
    float32 yaw
    float32 speed
    float32 utc_time
    uint32 platoon_status
    ##----------------------
    float32 bdata0
    float32 bdata1
    float32 bdata2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new V2XUnit(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    if (msg.utc_time !== undefined) {
      resolved.utc_time = msg.utc_time;
    }
    else {
      resolved.utc_time = 0.0
    }

    if (msg.platoon_status !== undefined) {
      resolved.platoon_status = msg.platoon_status;
    }
    else {
      resolved.platoon_status = 0
    }

    if (msg.bdata0 !== undefined) {
      resolved.bdata0 = msg.bdata0;
    }
    else {
      resolved.bdata0 = 0.0
    }

    if (msg.bdata1 !== undefined) {
      resolved.bdata1 = msg.bdata1;
    }
    else {
      resolved.bdata1 = 0.0
    }

    if (msg.bdata2 !== undefined) {
      resolved.bdata2 = msg.bdata2;
    }
    else {
      resolved.bdata2 = 0.0
    }

    return resolved;
    }
};

module.exports = V2XUnit;
