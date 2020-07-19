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

class monitor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.valuelight = null;
      this.deslight = null;
      this.valuetext = null;
      this.destext = null;
      this.dotcnt = null;
      this.timestamp = null;
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('valuelight')) {
        this.valuelight = initObj.valuelight
      }
      else {
        this.valuelight = [];
      }
      if (initObj.hasOwnProperty('deslight')) {
        this.deslight = initObj.deslight
      }
      else {
        this.deslight = [];
      }
      if (initObj.hasOwnProperty('valuetext')) {
        this.valuetext = initObj.valuetext
      }
      else {
        this.valuetext = [];
      }
      if (initObj.hasOwnProperty('destext')) {
        this.destext = initObj.destext
      }
      else {
        this.destext = [];
      }
      if (initObj.hasOwnProperty('dotcnt')) {
        this.dotcnt = initObj.dotcnt
      }
      else {
        this.dotcnt = [];
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0;
      }
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type monitor
    // Serialize message field [valuelight]
    bufferOffset = _arraySerializer.byte(obj.valuelight, buffer, bufferOffset, null);
    // Serialize message field [deslight]
    bufferOffset = _arraySerializer.string(obj.deslight, buffer, bufferOffset, null);
    // Serialize message field [valuetext]
    bufferOffset = _arraySerializer.float64(obj.valuetext, buffer, bufferOffset, null);
    // Serialize message field [destext]
    bufferOffset = _arraySerializer.string(obj.destext, buffer, bufferOffset, null);
    // Serialize message field [dotcnt]
    bufferOffset = _arraySerializer.byte(obj.dotcnt, buffer, bufferOffset, null);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.int64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int64(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type monitor
    let len;
    let data = new monitor(null);
    // Deserialize message field [valuelight]
    data.valuelight = _arrayDeserializer.byte(buffer, bufferOffset, null)
    // Deserialize message field [deslight]
    data.deslight = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [valuetext]
    data.valuetext = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [destext]
    data.destext = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [dotcnt]
    data.dotcnt = _arrayDeserializer.byte(buffer, bufferOffset, null)
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.valuelight.length;
    object.deslight.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.valuetext.length;
    object.destext.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.dotcnt.length;
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'common_msgs/monitor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dec2db79b03f82b53f8552b76488299a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    byte[] valuelight
    string[] deslight
    float64[] valuetext
    string[] destext
    byte[] dotcnt
    int64 timestamp
    int64 status
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new monitor(null);
    if (msg.valuelight !== undefined) {
      resolved.valuelight = msg.valuelight;
    }
    else {
      resolved.valuelight = []
    }

    if (msg.deslight !== undefined) {
      resolved.deslight = msg.deslight;
    }
    else {
      resolved.deslight = []
    }

    if (msg.valuetext !== undefined) {
      resolved.valuetext = msg.valuetext;
    }
    else {
      resolved.valuetext = []
    }

    if (msg.destext !== undefined) {
      resolved.destext = msg.destext;
    }
    else {
      resolved.destext = []
    }

    if (msg.dotcnt !== undefined) {
      resolved.dotcnt = msg.dotcnt;
    }
    else {
      resolved.dotcnt = []
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0
    }

    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = monitor;
