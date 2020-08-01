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

class State4 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.driverless_mode = null;
      this.steeringAngle = null;
      this.roadwheelAngle = null;
      this.steeringAngle_valid = null;
      this.steeringAngle_speed = null;
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
      if (initObj.hasOwnProperty('steeringAngle')) {
        this.steeringAngle = initObj.steeringAngle
      }
      else {
        this.steeringAngle = 0.0;
      }
      if (initObj.hasOwnProperty('roadwheelAngle')) {
        this.roadwheelAngle = initObj.roadwheelAngle
      }
      else {
        this.roadwheelAngle = 0.0;
      }
      if (initObj.hasOwnProperty('steeringAngle_valid')) {
        this.steeringAngle_valid = initObj.steeringAngle_valid
      }
      else {
        this.steeringAngle_valid = false;
      }
      if (initObj.hasOwnProperty('steeringAngle_speed')) {
        this.steeringAngle_speed = initObj.steeringAngle_speed
      }
      else {
        this.steeringAngle_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type State4
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [driverless_mode]
    bufferOffset = _serializer.bool(obj.driverless_mode, buffer, bufferOffset);
    // Serialize message field [steeringAngle]
    bufferOffset = _serializer.float32(obj.steeringAngle, buffer, bufferOffset);
    // Serialize message field [roadwheelAngle]
    bufferOffset = _serializer.float32(obj.roadwheelAngle, buffer, bufferOffset);
    // Serialize message field [steeringAngle_valid]
    bufferOffset = _serializer.bool(obj.steeringAngle_valid, buffer, bufferOffset);
    // Serialize message field [steeringAngle_speed]
    bufferOffset = _serializer.float32(obj.steeringAngle_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type State4
    let len;
    let data = new State4(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driverless_mode]
    data.driverless_mode = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steeringAngle]
    data.steeringAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [roadwheelAngle]
    data.roadwheelAngle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steeringAngle_valid]
    data.steeringAngle_valid = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [steeringAngle_speed]
    data.steeringAngle_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 14;
  }

  static datatype() {
    // Returns string type for a message object
    return 'little_ant_msgs/State4';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac90c5adc2e5026c3ff29c1d42c1bb25';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #EPS_1  0x1D5
    
    std_msgs/Header header
    
    bool driverless_mode
    float32 steeringAngle        #CCW(-), CW(+)
    float32 roadwheelAngle
    bool steeringAngle_valid
    float32 steeringAngle_speed
    
    
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
    const resolved = new State4(null);
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

    if (msg.steeringAngle !== undefined) {
      resolved.steeringAngle = msg.steeringAngle;
    }
    else {
      resolved.steeringAngle = 0.0
    }

    if (msg.roadwheelAngle !== undefined) {
      resolved.roadwheelAngle = msg.roadwheelAngle;
    }
    else {
      resolved.roadwheelAngle = 0.0
    }

    if (msg.steeringAngle_valid !== undefined) {
      resolved.steeringAngle_valid = msg.steeringAngle_valid;
    }
    else {
      resolved.steeringAngle_valid = false
    }

    if (msg.steeringAngle_speed !== undefined) {
      resolved.steeringAngle_speed = msg.steeringAngle_speed;
    }
    else {
      resolved.steeringAngle_speed = 0.0
    }

    return resolved;
    }
};

module.exports = State4;
