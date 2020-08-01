// Auto-generated. Do not edit!

// (in-package little_ant_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControlCmd2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_gear = null;
      this.set_speed = null;
      this.set_brake = null;
      this.set_accelerate = null;
      this.set_roadWheelAngle = null;
      this.set_emergencyBrake = null;
    }
    else {
      if (initObj.hasOwnProperty('set_gear')) {
        this.set_gear = initObj.set_gear
      }
      else {
        this.set_gear = 0;
      }
      if (initObj.hasOwnProperty('set_speed')) {
        this.set_speed = initObj.set_speed
      }
      else {
        this.set_speed = 0.0;
      }
      if (initObj.hasOwnProperty('set_brake')) {
        this.set_brake = initObj.set_brake
      }
      else {
        this.set_brake = 0.0;
      }
      if (initObj.hasOwnProperty('set_accelerate')) {
        this.set_accelerate = initObj.set_accelerate
      }
      else {
        this.set_accelerate = 0.0;
      }
      if (initObj.hasOwnProperty('set_roadWheelAngle')) {
        this.set_roadWheelAngle = initObj.set_roadWheelAngle
      }
      else {
        this.set_roadWheelAngle = 0.0;
      }
      if (initObj.hasOwnProperty('set_emergencyBrake')) {
        this.set_emergencyBrake = initObj.set_emergencyBrake
      }
      else {
        this.set_emergencyBrake = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlCmd2
    // Serialize message field [set_gear]
    bufferOffset = _serializer.uint8(obj.set_gear, buffer, bufferOffset);
    // Serialize message field [set_speed]
    bufferOffset = _serializer.float32(obj.set_speed, buffer, bufferOffset);
    // Serialize message field [set_brake]
    bufferOffset = _serializer.float32(obj.set_brake, buffer, bufferOffset);
    // Serialize message field [set_accelerate]
    bufferOffset = _serializer.float32(obj.set_accelerate, buffer, bufferOffset);
    // Serialize message field [set_roadWheelAngle]
    bufferOffset = _serializer.float32(obj.set_roadWheelAngle, buffer, bufferOffset);
    // Serialize message field [set_emergencyBrake]
    bufferOffset = _serializer.bool(obj.set_emergencyBrake, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlCmd2
    let len;
    let data = new ControlCmd2(null);
    // Deserialize message field [set_gear]
    data.set_gear = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [set_speed]
    data.set_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [set_brake]
    data.set_brake = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [set_accelerate]
    data.set_accelerate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [set_roadWheelAngle]
    data.set_roadWheelAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [set_emergencyBrake]
    data.set_emergencyBrake = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'little_ant_msgs/ControlCmd2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37dba26fbb2ffb96611897d743ebdf12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #IDM_2  0x1C5
    
    
    uint8 GEAR_DRIVE   = 1
    uint8 GEAR_REVERSE = 9
    uint8 GEAR_NEUTRAL = 10
    uint8 GEAR_PARKING = 11
    
    uint8 set_gear
    float32 set_speed
    float32 set_brake
    float32 set_accelerate
    float32 set_roadWheelAngle   #CCW(-), CW(+)
    bool set_emergencyBrake
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlCmd2(null);
    if (msg.set_gear !== undefined) {
      resolved.set_gear = msg.set_gear;
    }
    else {
      resolved.set_gear = 0
    }

    if (msg.set_speed !== undefined) {
      resolved.set_speed = msg.set_speed;
    }
    else {
      resolved.set_speed = 0.0
    }

    if (msg.set_brake !== undefined) {
      resolved.set_brake = msg.set_brake;
    }
    else {
      resolved.set_brake = 0.0
    }

    if (msg.set_accelerate !== undefined) {
      resolved.set_accelerate = msg.set_accelerate;
    }
    else {
      resolved.set_accelerate = 0.0
    }

    if (msg.set_roadWheelAngle !== undefined) {
      resolved.set_roadWheelAngle = msg.set_roadWheelAngle;
    }
    else {
      resolved.set_roadWheelAngle = 0.0
    }

    if (msg.set_emergencyBrake !== undefined) {
      resolved.set_emergencyBrake = msg.set_emergencyBrake;
    }
    else {
      resolved.set_emergencyBrake = false
    }

    return resolved;
    }
};

// Constants for message
ControlCmd2.Constants = {
  GEAR_DRIVE: 1,
  GEAR_REVERSE: 9,
  GEAR_NEUTRAL: 10,
  GEAR_PARKING: 11,
}

module.exports = ControlCmd2;
