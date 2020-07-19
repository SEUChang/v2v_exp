// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pt = require('./Pt.js');

//-----------------------------------------------------------

class Object {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Pts = null;
      this.id = null;
      this.type = null;
      this.relative_dir = null;
      this.relative_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('Pts')) {
        this.Pts = initObj.Pts
      }
      else {
        this.Pts = [];
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = 0;
      }
      if (initObj.hasOwnProperty('relative_dir')) {
        this.relative_dir = initObj.relative_dir
      }
      else {
        this.relative_dir = 0.0;
      }
      if (initObj.hasOwnProperty('relative_speed')) {
        this.relative_speed = initObj.relative_speed
      }
      else {
        this.relative_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Object
    // Serialize message field [Pts]
    // Serialize the length for message field [Pts]
    bufferOffset = _serializer.uint32(obj.Pts.length, buffer, bufferOffset);
    obj.Pts.forEach((val) => {
      bufferOffset = Pt.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.int8(obj.type, buffer, bufferOffset);
    // Serialize message field [relative_dir]
    bufferOffset = _serializer.float64(obj.relative_dir, buffer, bufferOffset);
    // Serialize message field [relative_speed]
    bufferOffset = _serializer.float64(obj.relative_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Object
    let len;
    let data = new Object(null);
    // Deserialize message field [Pts]
    // Deserialize array length for message field [Pts]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Pts = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Pts[i] = Pt.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [relative_dir]
    data.relative_dir = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [relative_speed]
    data.relative_speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.Pts.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/Object';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3112ad4cbb7a5e67aa53306c9d9e3b67';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    #
    
    
    perception_msgs/Pt[] Pts
    
    int8 id
    int8 type
    
    float64  relative_dir
    float64  relative_speed
    
    
    ###  add gridcells info  ###
    
    
    
    ================================================================================
    MSG: perception_msgs/Pt
    ####
    ###
    
    
    float32 x
    float32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Object(null);
    if (msg.Pts !== undefined) {
      resolved.Pts = new Array(msg.Pts.length);
      for (let i = 0; i < resolved.Pts.length; ++i) {
        resolved.Pts[i] = Pt.Resolve(msg.Pts[i]);
      }
    }
    else {
      resolved.Pts = []
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = 0
    }

    if (msg.relative_dir !== undefined) {
      resolved.relative_dir = msg.relative_dir;
    }
    else {
      resolved.relative_dir = 0.0
    }

    if (msg.relative_speed !== undefined) {
      resolved.relative_speed = msg.relative_speed;
    }
    else {
      resolved.relative_speed = 0.0
    }

    return resolved;
    }
};

module.exports = Object;
