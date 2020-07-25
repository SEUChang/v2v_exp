// Auto-generated. Do not edit!

// (in-package dnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Cmd_WF {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.enable_steering = null;
      this.enable_braking = null;
      this.enable_driving = null;
      this.enable_Estop = null;
      this.enable_gear = null;
      this.sw_deg = null;
      this.sw_rad = null;
      this.speed_ms = null;
      this.speed_kms = null;
      this.ax_ms2 = null;
      this.omega_rad = null;
      this.gear_mode = null;
      this.steering = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('enable_steering')) {
        this.enable_steering = initObj.enable_steering
      }
      else {
        this.enable_steering = false;
      }
      if (initObj.hasOwnProperty('enable_braking')) {
        this.enable_braking = initObj.enable_braking
      }
      else {
        this.enable_braking = false;
      }
      if (initObj.hasOwnProperty('enable_driving')) {
        this.enable_driving = initObj.enable_driving
      }
      else {
        this.enable_driving = false;
      }
      if (initObj.hasOwnProperty('enable_Estop')) {
        this.enable_Estop = initObj.enable_Estop
      }
      else {
        this.enable_Estop = false;
      }
      if (initObj.hasOwnProperty('enable_gear')) {
        this.enable_gear = initObj.enable_gear
      }
      else {
        this.enable_gear = false;
      }
      if (initObj.hasOwnProperty('sw_deg')) {
        this.sw_deg = initObj.sw_deg
      }
      else {
        this.sw_deg = 0.0;
      }
      if (initObj.hasOwnProperty('sw_rad')) {
        this.sw_rad = initObj.sw_rad
      }
      else {
        this.sw_rad = 0.0;
      }
      if (initObj.hasOwnProperty('speed_ms')) {
        this.speed_ms = initObj.speed_ms
      }
      else {
        this.speed_ms = 0.0;
      }
      if (initObj.hasOwnProperty('speed_kms')) {
        this.speed_kms = initObj.speed_kms
      }
      else {
        this.speed_kms = 0.0;
      }
      if (initObj.hasOwnProperty('ax_ms2')) {
        this.ax_ms2 = initObj.ax_ms2
      }
      else {
        this.ax_ms2 = 0.0;
      }
      if (initObj.hasOwnProperty('omega_rad')) {
        this.omega_rad = initObj.omega_rad
      }
      else {
        this.omega_rad = 0.0;
      }
      if (initObj.hasOwnProperty('gear_mode')) {
        this.gear_mode = initObj.gear_mode
      }
      else {
        this.gear_mode = 0;
      }
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cmd_WF
    // Serialize message field [enable_steering]
    bufferOffset = _serializer.bool(obj.enable_steering, buffer, bufferOffset);
    // Serialize message field [enable_braking]
    bufferOffset = _serializer.bool(obj.enable_braking, buffer, bufferOffset);
    // Serialize message field [enable_driving]
    bufferOffset = _serializer.bool(obj.enable_driving, buffer, bufferOffset);
    // Serialize message field [enable_Estop]
    bufferOffset = _serializer.bool(obj.enable_Estop, buffer, bufferOffset);
    // Serialize message field [enable_gear]
    bufferOffset = _serializer.bool(obj.enable_gear, buffer, bufferOffset);
    // Serialize message field [sw_deg]
    bufferOffset = _serializer.float32(obj.sw_deg, buffer, bufferOffset);
    // Serialize message field [sw_rad]
    bufferOffset = _serializer.float32(obj.sw_rad, buffer, bufferOffset);
    // Serialize message field [speed_ms]
    bufferOffset = _serializer.float32(obj.speed_ms, buffer, bufferOffset);
    // Serialize message field [speed_kms]
    bufferOffset = _serializer.float32(obj.speed_kms, buffer, bufferOffset);
    // Serialize message field [ax_ms2]
    bufferOffset = _serializer.float32(obj.ax_ms2, buffer, bufferOffset);
    // Serialize message field [omega_rad]
    bufferOffset = _serializer.float32(obj.omega_rad, buffer, bufferOffset);
    // Serialize message field [gear_mode]
    bufferOffset = _serializer.int32(obj.gear_mode, buffer, bufferOffset);
    // Serialize message field [steering]
    bufferOffset = _serializer.float32(obj.steering, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float32(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cmd_WF
    let len;
    let data = new Cmd_WF(null);
    // Deserialize message field [enable_steering]
    data.enable_steering = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_braking]
    data.enable_braking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_driving]
    data.enable_driving = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_Estop]
    data.enable_Estop = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enable_gear]
    data.enable_gear = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [sw_deg]
    data.sw_deg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sw_rad]
    data.sw_rad = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_ms]
    data.speed_ms = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed_kms]
    data.speed_kms = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ax_ms2]
    data.ax_ms2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega_rad]
    data.omega_rad = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gear_mode]
    data.gear_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [steering]
    data.steering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnc_msgs/Cmd_WF';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd06405f78ad4d1752ebdd64f2ef906dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    #  control cmd for weifang qingsaoche
    #
    
    #########################
    
    bool enable_steering
    bool enable_braking
    bool enable_driving
    bool enable_Estop
    bool enable_gear
    #########################
    
    float32 sw_deg  # steering wheel angle
    float32 sw_rad
    float32 speed_ms
    float32 speed_kms
    float32 ax_ms2
    float32 omega_rad
    int32 gear_mode  # 0: N, // 1: forward , // 2 backward, // 3: stop
    
    #########################
    float32 steering
    float32 speed
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Cmd_WF(null);
    if (msg.enable_steering !== undefined) {
      resolved.enable_steering = msg.enable_steering;
    }
    else {
      resolved.enable_steering = false
    }

    if (msg.enable_braking !== undefined) {
      resolved.enable_braking = msg.enable_braking;
    }
    else {
      resolved.enable_braking = false
    }

    if (msg.enable_driving !== undefined) {
      resolved.enable_driving = msg.enable_driving;
    }
    else {
      resolved.enable_driving = false
    }

    if (msg.enable_Estop !== undefined) {
      resolved.enable_Estop = msg.enable_Estop;
    }
    else {
      resolved.enable_Estop = false
    }

    if (msg.enable_gear !== undefined) {
      resolved.enable_gear = msg.enable_gear;
    }
    else {
      resolved.enable_gear = false
    }

    if (msg.sw_deg !== undefined) {
      resolved.sw_deg = msg.sw_deg;
    }
    else {
      resolved.sw_deg = 0.0
    }

    if (msg.sw_rad !== undefined) {
      resolved.sw_rad = msg.sw_rad;
    }
    else {
      resolved.sw_rad = 0.0
    }

    if (msg.speed_ms !== undefined) {
      resolved.speed_ms = msg.speed_ms;
    }
    else {
      resolved.speed_ms = 0.0
    }

    if (msg.speed_kms !== undefined) {
      resolved.speed_kms = msg.speed_kms;
    }
    else {
      resolved.speed_kms = 0.0
    }

    if (msg.ax_ms2 !== undefined) {
      resolved.ax_ms2 = msg.ax_ms2;
    }
    else {
      resolved.ax_ms2 = 0.0
    }

    if (msg.omega_rad !== undefined) {
      resolved.omega_rad = msg.omega_rad;
    }
    else {
      resolved.omega_rad = 0.0
    }

    if (msg.gear_mode !== undefined) {
      resolved.gear_mode = msg.gear_mode;
    }
    else {
      resolved.gear_mode = 0
    }

    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

module.exports = Cmd_WF;
