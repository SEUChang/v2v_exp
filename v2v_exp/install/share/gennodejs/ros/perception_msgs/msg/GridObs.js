// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');

//-----------------------------------------------------------

class GridObs {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obs = null;
      this.grid_size = null;
    }
    else {
      if (initObj.hasOwnProperty('obs')) {
        this.obs = initObj.obs
      }
      else {
        this.obs = [];
      }
      if (initObj.hasOwnProperty('grid_size')) {
        this.grid_size = initObj.grid_size
      }
      else {
        this.grid_size = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GridObs
    // Serialize message field [obs]
    // Serialize the length for message field [obs]
    bufferOffset = _serializer.uint32(obj.obs.length, buffer, bufferOffset);
    obj.obs.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [grid_size]
    bufferOffset = _serializer.float32(obj.grid_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GridObs
    let len;
    let data = new GridObs(null);
    // Deserialize message field [obs]
    // Deserialize array length for message field [obs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obs[i] = Object.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [grid_size]
    data.grid_size = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.obs.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/GridObs';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4acf58cf22a7c584ee4f8f50c03fe7d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    ###
    
    perception_msgs/Object[] obs
    float32 grid_size
    ###
    ================================================================================
    MSG: perception_msgs/Object
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
    const resolved = new GridObs(null);
    if (msg.obs !== undefined) {
      resolved.obs = new Array(msg.obs.length);
      for (let i = 0; i < resolved.obs.length; ++i) {
        resolved.obs[i] = Object.Resolve(msg.obs[i]);
      }
    }
    else {
      resolved.obs = []
    }

    if (msg.grid_size !== undefined) {
      resolved.grid_size = msg.grid_size;
    }
    else {
      resolved.grid_size = 0.0
    }

    return resolved;
    }
};

module.exports = GridObs;
