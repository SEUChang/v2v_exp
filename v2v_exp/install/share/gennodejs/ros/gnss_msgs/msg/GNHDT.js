// Auto-generated. Do not edit!

// (in-package gnss_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GNHDT {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.heading_deg = null;
    }
    else {
      if (initObj.hasOwnProperty('heading_deg')) {
        this.heading_deg = initObj.heading_deg
      }
      else {
        this.heading_deg = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GNHDT
    // Serialize message field [heading_deg]
    bufferOffset = _serializer.float64(obj.heading_deg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GNHDT
    let len;
    let data = new GNHDT(null);
    // Deserialize message field [heading_deg]
    data.heading_deg = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_msgs/GNHDT';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1faae2859dcb5aa43baeb4f984cff1fd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ##
    
    ##
    
    float64 heading_deg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GNHDT(null);
    if (msg.heading_deg !== undefined) {
      resolved.heading_deg = msg.heading_deg;
    }
    else {
      resolved.heading_deg = 0.0
    }

    return resolved;
    }
};

module.exports = GNHDT;
