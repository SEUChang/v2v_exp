// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let V2XUnit = require('./V2XUnit.js');

//-----------------------------------------------------------

class V2XData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type V2XData
    // Serialize message field [data]
    // Serialize the length for message field [data]
    bufferOffset = _serializer.uint32(obj.data.length, buffer, bufferOffset);
    obj.data.forEach((val) => {
      bufferOffset = V2XUnit.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type V2XData
    let len;
    let data = new V2XData(null);
    // Deserialize message field [data]
    // Deserialize array length for message field [data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.data[i] = V2XUnit.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 40 * object.data.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/V2XData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb96f885a230ba842ce5534fe6ba0ab5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    perception_msgs/V2XUnit[] data
    ================================================================================
    MSG: perception_msgs/V2XUnit
    
    
    
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
    const resolved = new V2XData(null);
    if (msg.data !== undefined) {
      resolved.data = new Array(msg.data.length);
      for (let i = 0; i < resolved.data.length; ++i) {
        resolved.data[i] = V2XUnit.Resolve(msg.data[i]);
      }
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = V2XData;
