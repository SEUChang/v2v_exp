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

class GlobalPathIndex {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start_section = null;
      this.start_lane = null;
      this.start_pt = null;
      this.topo = null;
      this.goal_section = null;
      this.goal_lane = null;
      this.goal_pt = null;
    }
    else {
      if (initObj.hasOwnProperty('start_section')) {
        this.start_section = initObj.start_section
      }
      else {
        this.start_section = 0;
      }
      if (initObj.hasOwnProperty('start_lane')) {
        this.start_lane = initObj.start_lane
      }
      else {
        this.start_lane = 0;
      }
      if (initObj.hasOwnProperty('start_pt')) {
        this.start_pt = initObj.start_pt
      }
      else {
        this.start_pt = 0;
      }
      if (initObj.hasOwnProperty('topo')) {
        this.topo = initObj.topo
      }
      else {
        this.topo = [];
      }
      if (initObj.hasOwnProperty('goal_section')) {
        this.goal_section = initObj.goal_section
      }
      else {
        this.goal_section = 0;
      }
      if (initObj.hasOwnProperty('goal_lane')) {
        this.goal_lane = initObj.goal_lane
      }
      else {
        this.goal_lane = 0;
      }
      if (initObj.hasOwnProperty('goal_pt')) {
        this.goal_pt = initObj.goal_pt
      }
      else {
        this.goal_pt = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalPathIndex
    // Serialize message field [start_section]
    bufferOffset = _serializer.int32(obj.start_section, buffer, bufferOffset);
    // Serialize message field [start_lane]
    bufferOffset = _serializer.int32(obj.start_lane, buffer, bufferOffset);
    // Serialize message field [start_pt]
    bufferOffset = _serializer.int32(obj.start_pt, buffer, bufferOffset);
    // Serialize message field [topo]
    bufferOffset = _arraySerializer.int32(obj.topo, buffer, bufferOffset, null);
    // Serialize message field [goal_section]
    bufferOffset = _serializer.int32(obj.goal_section, buffer, bufferOffset);
    // Serialize message field [goal_lane]
    bufferOffset = _serializer.int32(obj.goal_lane, buffer, bufferOffset);
    // Serialize message field [goal_pt]
    bufferOffset = _serializer.int32(obj.goal_pt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalPathIndex
    let len;
    let data = new GlobalPathIndex(null);
    // Deserialize message field [start_section]
    data.start_section = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_lane]
    data.start_lane = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [start_pt]
    data.start_pt = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [topo]
    data.topo = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [goal_section]
    data.goal_section = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal_lane]
    data.goal_lane = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [goal_pt]
    data.goal_pt = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.topo.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/GlobalPathIndex';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1d5f95ec9e9a5e5dadbfd38059134fcf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    ###       SunHao          ###
    #############################
    
    
    int32 start_section
    int32 start_lane
    int32 start_pt
    
    #########################
    
    int32[] topo
    
    #########################
    int32 goal_section
    int32 goal_lane
    int32 goal_pt
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalPathIndex(null);
    if (msg.start_section !== undefined) {
      resolved.start_section = msg.start_section;
    }
    else {
      resolved.start_section = 0
    }

    if (msg.start_lane !== undefined) {
      resolved.start_lane = msg.start_lane;
    }
    else {
      resolved.start_lane = 0
    }

    if (msg.start_pt !== undefined) {
      resolved.start_pt = msg.start_pt;
    }
    else {
      resolved.start_pt = 0
    }

    if (msg.topo !== undefined) {
      resolved.topo = msg.topo;
    }
    else {
      resolved.topo = []
    }

    if (msg.goal_section !== undefined) {
      resolved.goal_section = msg.goal_section;
    }
    else {
      resolved.goal_section = 0
    }

    if (msg.goal_lane !== undefined) {
      resolved.goal_lane = msg.goal_lane;
    }
    else {
      resolved.goal_lane = 0
    }

    if (msg.goal_pt !== undefined) {
      resolved.goal_pt = msg.goal_pt;
    }
    else {
      resolved.goal_pt = 0
    }

    return resolved;
    }
};

module.exports = GlobalPathIndex;
