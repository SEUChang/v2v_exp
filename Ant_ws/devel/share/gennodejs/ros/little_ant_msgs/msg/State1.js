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

class State1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.act_gear = null;
      this.accel_pedal_position = null;
      this.brake_pedal = null;
      this.accel_pedal_position_valid = null;
      this.act_gear_valid = null;
      this.brake_pedal_valid = null;
      this.vehicle_ready = null;
      this.driverless_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('act_gear')) {
        this.act_gear = initObj.act_gear
      }
      else {
        this.act_gear = 0;
      }
      if (initObj.hasOwnProperty('accel_pedal_position')) {
        this.accel_pedal_position = initObj.accel_pedal_position
      }
      else {
        this.accel_pedal_position = 0.0;
      }
      if (initObj.hasOwnProperty('brake_pedal')) {
        this.brake_pedal = initObj.brake_pedal
      }
      else {
        this.brake_pedal = 0;
      }
      if (initObj.hasOwnProperty('accel_pedal_position_valid')) {
        this.accel_pedal_position_valid = initObj.accel_pedal_position_valid
      }
      else {
        this.accel_pedal_position_valid = false;
      }
      if (initObj.hasOwnProperty('act_gear_valid')) {
        this.act_gear_valid = initObj.act_gear_valid
      }
      else {
        this.act_gear_valid = false;
      }
      if (initObj.hasOwnProperty('brake_pedal_valid')) {
        this.brake_pedal_valid = initObj.brake_pedal_valid
      }
      else {
        this.brake_pedal_valid = false;
      }
      if (initObj.hasOwnProperty('vehicle_ready')) {
        this.vehicle_ready = initObj.vehicle_ready
      }
      else {
        this.vehicle_ready = false;
      }
      if (initObj.hasOwnProperty('driverless_mode')) {
        this.driverless_mode = initObj.driverless_mode
      }
      else {
        this.driverless_mode = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State1
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [act_gear]
    bufferOffset = _serializer.uint8(obj.act_gear, buffer, bufferOffset);
    // Serialize message field [accel_pedal_position]
    bufferOffset = _serializer.float32(obj.accel_pedal_position, buffer, bufferOffset);
    // Serialize message field [brake_pedal]
    bufferOffset = _serializer.uint8(obj.brake_pedal, buffer, bufferOffset);
    // Serialize message field [accel_pedal_position_valid]
    bufferOffset = _serializer.bool(obj.accel_pedal_position_valid, buffer, bufferOffset);
    // Serialize message field [act_gear_valid]
    bufferOffset = _serializer.bool(obj.act_gear_valid, buffer, bufferOffset);
    // Serialize message field [brake_pedal_valid]
    bufferOffset = _serializer.bool(obj.brake_pedal_valid, buffer, bufferOffset);
    // Serialize message field [vehicle_ready]
    bufferOffset = _serializer.bool(obj.vehicle_ready, buffer, bufferOffset);
    // Serialize message field [driverless_mode]
    bufferOffset = _serializer.bool(obj.driverless_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State1
    let len;
    let data = new State1(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [act_gear]
    data.act_gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accel_pedal_position]
    data.accel_pedal_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [brake_pedal]
    data.brake_pedal = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [accel_pedal_position_valid]
    data.accel_pedal_position_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [act_gear_valid]
    data.act_gear_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [brake_pedal_valid]
    data.brake_pedal_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [vehicle_ready]
    data.vehicle_ready = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [driverless_mode]
    data.driverless_mode = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'little_ant_msgs/State1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd700876b21c15951961ee3bec1bee8b6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #VCU_8 0x151
    
    std_msgs/Header header
    
    uint8 GEAR_DRIVE   = 11
    uint8 GEAR_NEUTRAL = 12
    uint8 GEAR_REVERSE = 13
    
    uint8 act_gear
    float32 accel_pedal_position
    uint8 brake_pedal
    bool accel_pedal_position_valid
    bool act_gear_valid
    bool brake_pedal_valid
    bool vehicle_ready
    bool driverless_mode
    
    
    
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
    const resolved = new State1(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.act_gear !== undefined) {
      resolved.act_gear = msg.act_gear;
    }
    else {
      resolved.act_gear = 0
    }

    if (msg.accel_pedal_position !== undefined) {
      resolved.accel_pedal_position = msg.accel_pedal_position;
    }
    else {
      resolved.accel_pedal_position = 0.0
    }

    if (msg.brake_pedal !== undefined) {
      resolved.brake_pedal = msg.brake_pedal;
    }
    else {
      resolved.brake_pedal = 0
    }

    if (msg.accel_pedal_position_valid !== undefined) {
      resolved.accel_pedal_position_valid = msg.accel_pedal_position_valid;
    }
    else {
      resolved.accel_pedal_position_valid = false
    }

    if (msg.act_gear_valid !== undefined) {
      resolved.act_gear_valid = msg.act_gear_valid;
    }
    else {
      resolved.act_gear_valid = false
    }

    if (msg.brake_pedal_valid !== undefined) {
      resolved.brake_pedal_valid = msg.brake_pedal_valid;
    }
    else {
      resolved.brake_pedal_valid = false
    }

    if (msg.vehicle_ready !== undefined) {
      resolved.vehicle_ready = msg.vehicle_ready;
    }
    else {
      resolved.vehicle_ready = false
    }

    if (msg.driverless_mode !== undefined) {
      resolved.driverless_mode = msg.driverless_mode;
    }
    else {
      resolved.driverless_mode = false
    }

    return resolved;
    }
};

// Constants for message
State1.Constants = {
  GEAR_DRIVE: 11,
  GEAR_NEUTRAL: 12,
  GEAR_REVERSE: 13,
}

module.exports = State1;
