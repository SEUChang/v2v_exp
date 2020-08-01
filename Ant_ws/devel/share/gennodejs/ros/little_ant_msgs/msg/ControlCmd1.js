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

class ControlCmd1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.set_driverlessMode = null;
      this.set_remoteStart = null;
      this.set_handBrake = null;
      this.set_turnLight_R = null;
      this.set_turnLight_L = null;
      this.set_lowBeam = null;
      this.set_reverseLight = null;
      this.set_brakeLight = null;
      this.set_horn = null;
    }
    else {
      if (initObj.hasOwnProperty('set_driverlessMode')) {
        this.set_driverlessMode = initObj.set_driverlessMode
      }
      else {
        this.set_driverlessMode = false;
      }
      if (initObj.hasOwnProperty('set_remoteStart')) {
        this.set_remoteStart = initObj.set_remoteStart
      }
      else {
        this.set_remoteStart = false;
      }
      if (initObj.hasOwnProperty('set_handBrake')) {
        this.set_handBrake = initObj.set_handBrake
      }
      else {
        this.set_handBrake = false;
      }
      if (initObj.hasOwnProperty('set_turnLight_R')) {
        this.set_turnLight_R = initObj.set_turnLight_R
      }
      else {
        this.set_turnLight_R = false;
      }
      if (initObj.hasOwnProperty('set_turnLight_L')) {
        this.set_turnLight_L = initObj.set_turnLight_L
      }
      else {
        this.set_turnLight_L = false;
      }
      if (initObj.hasOwnProperty('set_lowBeam')) {
        this.set_lowBeam = initObj.set_lowBeam
      }
      else {
        this.set_lowBeam = false;
      }
      if (initObj.hasOwnProperty('set_reverseLight')) {
        this.set_reverseLight = initObj.set_reverseLight
      }
      else {
        this.set_reverseLight = false;
      }
      if (initObj.hasOwnProperty('set_brakeLight')) {
        this.set_brakeLight = initObj.set_brakeLight
      }
      else {
        this.set_brakeLight = false;
      }
      if (initObj.hasOwnProperty('set_horn')) {
        this.set_horn = initObj.set_horn
      }
      else {
        this.set_horn = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlCmd1
    // Serialize message field [set_driverlessMode]
    bufferOffset = _serializer.bool(obj.set_driverlessMode, buffer, bufferOffset);
    // Serialize message field [set_remoteStart]
    bufferOffset = _serializer.bool(obj.set_remoteStart, buffer, bufferOffset);
    // Serialize message field [set_handBrake]
    bufferOffset = _serializer.bool(obj.set_handBrake, buffer, bufferOffset);
    // Serialize message field [set_turnLight_R]
    bufferOffset = _serializer.bool(obj.set_turnLight_R, buffer, bufferOffset);
    // Serialize message field [set_turnLight_L]
    bufferOffset = _serializer.bool(obj.set_turnLight_L, buffer, bufferOffset);
    // Serialize message field [set_lowBeam]
    bufferOffset = _serializer.bool(obj.set_lowBeam, buffer, bufferOffset);
    // Serialize message field [set_reverseLight]
    bufferOffset = _serializer.bool(obj.set_reverseLight, buffer, bufferOffset);
    // Serialize message field [set_brakeLight]
    bufferOffset = _serializer.bool(obj.set_brakeLight, buffer, bufferOffset);
    // Serialize message field [set_horn]
    bufferOffset = _serializer.bool(obj.set_horn, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlCmd1
    let len;
    let data = new ControlCmd1(null);
    // Deserialize message field [set_driverlessMode]
    data.set_driverlessMode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_remoteStart]
    data.set_remoteStart = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_handBrake]
    data.set_handBrake = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_turnLight_R]
    data.set_turnLight_R = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_turnLight_L]
    data.set_turnLight_L = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_lowBeam]
    data.set_lowBeam = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_reverseLight]
    data.set_reverseLight = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_brakeLight]
    data.set_brakeLight = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [set_horn]
    data.set_horn = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'little_ant_msgs/ControlCmd1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f587e931e6927c2a0aadae434268a15b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #IDM_1  0x2C5
    
    bool set_driverlessMode
    bool set_remoteStart
    bool set_handBrake
    bool set_turnLight_R
    bool set_turnLight_L
    bool set_lowBeam
    bool set_reverseLight
    bool set_brakeLight
    bool set_horn
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlCmd1(null);
    if (msg.set_driverlessMode !== undefined) {
      resolved.set_driverlessMode = msg.set_driverlessMode;
    }
    else {
      resolved.set_driverlessMode = false
    }

    if (msg.set_remoteStart !== undefined) {
      resolved.set_remoteStart = msg.set_remoteStart;
    }
    else {
      resolved.set_remoteStart = false
    }

    if (msg.set_handBrake !== undefined) {
      resolved.set_handBrake = msg.set_handBrake;
    }
    else {
      resolved.set_handBrake = false
    }

    if (msg.set_turnLight_R !== undefined) {
      resolved.set_turnLight_R = msg.set_turnLight_R;
    }
    else {
      resolved.set_turnLight_R = false
    }

    if (msg.set_turnLight_L !== undefined) {
      resolved.set_turnLight_L = msg.set_turnLight_L;
    }
    else {
      resolved.set_turnLight_L = false
    }

    if (msg.set_lowBeam !== undefined) {
      resolved.set_lowBeam = msg.set_lowBeam;
    }
    else {
      resolved.set_lowBeam = false
    }

    if (msg.set_reverseLight !== undefined) {
      resolved.set_reverseLight = msg.set_reverseLight;
    }
    else {
      resolved.set_reverseLight = false
    }

    if (msg.set_brakeLight !== undefined) {
      resolved.set_brakeLight = msg.set_brakeLight;
    }
    else {
      resolved.set_brakeLight = false
    }

    if (msg.set_horn !== undefined) {
      resolved.set_horn = msg.set_horn;
    }
    else {
      resolved.set_horn = false
    }

    return resolved;
    }
};

module.exports = ControlCmd1;
