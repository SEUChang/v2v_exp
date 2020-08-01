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

class State2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.wheel_speed_FL = null;
      this.wheel_speed_FR = null;
      this.wheel_speed_RL = null;
      this.wheel_speed_RR = null;
      this.vehicle_speed = null;
      this.wheel_speed_FL_valid = null;
      this.wheel_speed_FR_valid = null;
      this.wheel_speed_RL_valid = null;
      this.wheel_speed_RR_valid = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('wheel_speed_FL')) {
        this.wheel_speed_FL = initObj.wheel_speed_FL
      }
      else {
        this.wheel_speed_FL = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_FR')) {
        this.wheel_speed_FR = initObj.wheel_speed_FR
      }
      else {
        this.wheel_speed_FR = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_RL')) {
        this.wheel_speed_RL = initObj.wheel_speed_RL
      }
      else {
        this.wheel_speed_RL = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_RR')) {
        this.wheel_speed_RR = initObj.wheel_speed_RR
      }
      else {
        this.wheel_speed_RR = 0.0;
      }
      if (initObj.hasOwnProperty('vehicle_speed')) {
        this.vehicle_speed = initObj.vehicle_speed
      }
      else {
        this.vehicle_speed = 0.0;
      }
      if (initObj.hasOwnProperty('wheel_speed_FL_valid')) {
        this.wheel_speed_FL_valid = initObj.wheel_speed_FL_valid
      }
      else {
        this.wheel_speed_FL_valid = false;
      }
      if (initObj.hasOwnProperty('wheel_speed_FR_valid')) {
        this.wheel_speed_FR_valid = initObj.wheel_speed_FR_valid
      }
      else {
        this.wheel_speed_FR_valid = false;
      }
      if (initObj.hasOwnProperty('wheel_speed_RL_valid')) {
        this.wheel_speed_RL_valid = initObj.wheel_speed_RL_valid
      }
      else {
        this.wheel_speed_RL_valid = false;
      }
      if (initObj.hasOwnProperty('wheel_speed_RR_valid')) {
        this.wheel_speed_RR_valid = initObj.wheel_speed_RR_valid
      }
      else {
        this.wheel_speed_RR_valid = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State2
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [wheel_speed_FL]
    bufferOffset = _serializer.float32(obj.wheel_speed_FL, buffer, bufferOffset);
    // Serialize message field [wheel_speed_FR]
    bufferOffset = _serializer.float32(obj.wheel_speed_FR, buffer, bufferOffset);
    // Serialize message field [wheel_speed_RL]
    bufferOffset = _serializer.float32(obj.wheel_speed_RL, buffer, bufferOffset);
    // Serialize message field [wheel_speed_RR]
    bufferOffset = _serializer.float32(obj.wheel_speed_RR, buffer, bufferOffset);
    // Serialize message field [vehicle_speed]
    bufferOffset = _serializer.float32(obj.vehicle_speed, buffer, bufferOffset);
    // Serialize message field [wheel_speed_FL_valid]
    bufferOffset = _serializer.bool(obj.wheel_speed_FL_valid, buffer, bufferOffset);
    // Serialize message field [wheel_speed_FR_valid]
    bufferOffset = _serializer.bool(obj.wheel_speed_FR_valid, buffer, bufferOffset);
    // Serialize message field [wheel_speed_RL_valid]
    bufferOffset = _serializer.bool(obj.wheel_speed_RL_valid, buffer, bufferOffset);
    // Serialize message field [wheel_speed_RR_valid]
    bufferOffset = _serializer.bool(obj.wheel_speed_RR_valid, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State2
    let len;
    let data = new State2(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_FL]
    data.wheel_speed_FL = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_FR]
    data.wheel_speed_FR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_RL]
    data.wheel_speed_RL = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_RR]
    data.wheel_speed_RR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [vehicle_speed]
    data.vehicle_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_FL_valid]
    data.wheel_speed_FL_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_FR_valid]
    data.wheel_speed_FR_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_RL_valid]
    data.wheel_speed_RL_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel_speed_RR_valid]
    data.wheel_speed_RR_valid = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'little_ant_msgs/State2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7e1f5bf0137abb4b497e51cd65566aa6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #VCU_ABS_1  0x300
    
    std_msgs/Header header
    
    #  km/s
    float32 wheel_speed_FL
    float32 wheel_speed_FR
    float32 wheel_speed_RL
    float32 wheel_speed_RR
    
    float32 vehicle_speed   # m/s
    
    bool wheel_speed_FL_valid
    bool wheel_speed_FR_valid
    bool wheel_speed_RL_valid
    bool wheel_speed_RR_valid
    
    
    
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
    const resolved = new State2(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.wheel_speed_FL !== undefined) {
      resolved.wheel_speed_FL = msg.wheel_speed_FL;
    }
    else {
      resolved.wheel_speed_FL = 0.0
    }

    if (msg.wheel_speed_FR !== undefined) {
      resolved.wheel_speed_FR = msg.wheel_speed_FR;
    }
    else {
      resolved.wheel_speed_FR = 0.0
    }

    if (msg.wheel_speed_RL !== undefined) {
      resolved.wheel_speed_RL = msg.wheel_speed_RL;
    }
    else {
      resolved.wheel_speed_RL = 0.0
    }

    if (msg.wheel_speed_RR !== undefined) {
      resolved.wheel_speed_RR = msg.wheel_speed_RR;
    }
    else {
      resolved.wheel_speed_RR = 0.0
    }

    if (msg.vehicle_speed !== undefined) {
      resolved.vehicle_speed = msg.vehicle_speed;
    }
    else {
      resolved.vehicle_speed = 0.0
    }

    if (msg.wheel_speed_FL_valid !== undefined) {
      resolved.wheel_speed_FL_valid = msg.wheel_speed_FL_valid;
    }
    else {
      resolved.wheel_speed_FL_valid = false
    }

    if (msg.wheel_speed_FR_valid !== undefined) {
      resolved.wheel_speed_FR_valid = msg.wheel_speed_FR_valid;
    }
    else {
      resolved.wheel_speed_FR_valid = false
    }

    if (msg.wheel_speed_RL_valid !== undefined) {
      resolved.wheel_speed_RL_valid = msg.wheel_speed_RL_valid;
    }
    else {
      resolved.wheel_speed_RL_valid = false
    }

    if (msg.wheel_speed_RR_valid !== undefined) {
      resolved.wheel_speed_RR_valid = msg.wheel_speed_RR_valid;
    }
    else {
      resolved.wheel_speed_RR_valid = false
    }

    return resolved;
    }
};

module.exports = State2;
