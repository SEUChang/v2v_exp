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

class app {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stopgo = null;
      this.mapnum = null;
    }
    else {
      if (initObj.hasOwnProperty('stopgo')) {
        this.stopgo = initObj.stopgo
      }
      else {
        this.stopgo = 0;
      }
      if (initObj.hasOwnProperty('mapnum')) {
        this.mapnum = initObj.mapnum
      }
      else {
        this.mapnum = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type app
    // Serialize message field [stopgo]
    bufferOffset = _serializer.uint8(obj.stopgo, buffer, bufferOffset);
    // Serialize message field [mapnum]
    bufferOffset = _serializer.uint8(obj.mapnum, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type app
    let len;
    let data = new app(null);
    // Deserialize message field [stopgo]
    data.stopgo = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mapnum]
    data.mapnum = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/app';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c51ad9d6e175af3548f31dad6a82baf4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 stopgo
    uint8 mapnum
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new app(null);
    if (msg.stopgo !== undefined) {
      resolved.stopgo = msg.stopgo;
    }
    else {
      resolved.stopgo = 0
    }

    if (msg.mapnum !== undefined) {
      resolved.mapnum = msg.mapnum;
    }
    else {
      resolved.mapnum = 0
    }

    return resolved;
    }
};

module.exports = app;
