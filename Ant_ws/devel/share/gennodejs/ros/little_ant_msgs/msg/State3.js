// Auto-generated. Do not edit!

// (in-package little_ant_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class State3 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.driverless_mode = null;
      this.turn_light_R = null;
      this.turn_light_L = null;
      this.parkTail_light = null;
      this.high_beam = null;
      this.low_beam = null;
      this.brake_light = null;
      this.horn = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('driverless_mode')) {
        this.driverless_mode = initObj.driverless_mode
      }
      else {
        this.driverless_mode = false;
      }
      if (initObj.hasOwnProperty('turn_light_R')) {
        this.turn_light_R = initObj.turn_light_R
      }
      else {
        this.turn_light_R = false;
      }
      if (initObj.hasOwnProperty('turn_light_L')) {
        this.turn_light_L = initObj.turn_light_L
      }
      else {
        this.turn_light_L = false;
      }
      if (initObj.hasOwnProperty('parkTail_light')) {
        this.parkTail_light = initObj.parkTail_light
      }
      else {
        this.parkTail_light = false;
      }
      if (initObj.hasOwnProperty('high_beam')) {
        this.high_beam = initObj.high_beam
      }
      else {
        this.high_beam = false;
      }
      if (initObj.hasOwnProperty('low_beam')) {
        this.low_beam = initObj.low_beam
      }
      else {
        this.low_beam = false;
      }
      if (initObj.hasOwnProperty('brake_light')) {
        this.brake_light = initObj.brake_light
      }
      else {
        this.brake_light = false;
      }
      if (initObj.hasOwnProperty('horn')) {
        this.horn = initObj.horn
      }
      else {
        this.horn = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State3
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [driverless_mode]
    bufferOffset = _serializer.bool(obj.driverless_mode, buffer, bufferOffset);
    // Serialize message field [turn_light_R]
    bufferOffset = _serializer.bool(obj.turn_light_R, buffer, bufferOffset);
    // Serialize message field [turn_light_L]
    bufferOffset = _serializer.bool(obj.turn_light_L, buffer, bufferOffset);
    // Serialize message field [parkTail_light]
    bufferOffset = _serializer.bool(obj.parkTail_light, buffer, bufferOffset);
    // Serialize message field [high_beam]
    bufferOffset = _serializer.bool(obj.high_beam, buffer, bufferOffset);
    // Serialize message field [low_beam]
    bufferOffset = _serializer.bool(obj.low_beam, buffer, bufferOffset);
    // Serialize message field [brake_light]
    bufferOffset = _serializer.bool(obj.brake_light, buffer, bufferOffset);
    // Serialize message field [horn]
    bufferOffset = _serializer.bool(obj.horn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State3
    let len;
    let data = new State3(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driverless_mode]
    data.driverless_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_light_R]
    data.turn_light_R = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [turn_light_L]
    data.turn_light_L = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [parkTail_light]
    data.parkTail_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [high_beam]
    data.high_beam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [low_beam]
    data.low_beam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_light]
    data.brake_light = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [horn]
    data.horn = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'little_ant_msgs/State3';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2adb4f3bd0140b3e748f6391b224e7e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #ACM_1  0x4D1
    
    std_msgs/Header header
    
    bool driverless_mode
    
    bool turn_light_R
    
    bool turn_light_L
    
    bool parkTail_light
    
    bool high_beam
    bool low_beam
    
    bool brake_light
    bool horn
    
    
    
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new State3(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.driverless_mode !== undefined) {
      resolved.driverless_mode = msg.driverless_mode;
    }
    else {
      resolved.driverless_mode = false
    }

    if (msg.turn_light_R !== undefined) {
      resolved.turn_light_R = msg.turn_light_R;
    }
    else {
      resolved.turn_light_R = false
    }

    if (msg.turn_light_L !== undefined) {
      resolved.turn_light_L = msg.turn_light_L;
    }
    else {
      resolved.turn_light_L = false
    }

    if (msg.parkTail_light !== undefined) {
      resolved.parkTail_light = msg.parkTail_light;
    }
    else {
      resolved.parkTail_light = false
    }

    if (msg.high_beam !== undefined) {
      resolved.high_beam = msg.high_beam;
    }
    else {
      resolved.high_beam = false
    }

    if (msg.low_beam !== undefined) {
      resolved.low_beam = msg.low_beam;
    }
    else {
      resolved.low_beam = false
    }

    if (msg.brake_light !== undefined) {
      resolved.brake_light = msg.brake_light;
    }
    else {
      resolved.brake_light = false
    }

    if (msg.horn !== undefined) {
      resolved.horn = msg.horn;
    }
    else {
      resolved.horn = false
    }

    return resolved;
    }
};

module.exports = State3;
