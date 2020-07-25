// Auto-generated. Do not edit!

// (in-package dnc_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Mission {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mission_pt = null;
      this.mission_type = null;
    }
    else {
      if (initObj.hasOwnProperty('mission_pt')) {
        this.mission_pt = initObj.mission_pt
      }
      else {
        this.mission_pt = [];
      }
      if (initObj.hasOwnProperty('mission_type')) {
        this.mission_type = initObj.mission_type
      }
      else {
        this.mission_type = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mission
    // Serialize message field [mission_pt]
    // Serialize the length for message field [mission_pt]
    bufferOffset = _serializer.uint32(obj.mission_pt.length, buffer, bufferOffset);
    obj.mission_pt.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [mission_type]
    bufferOffset = _arraySerializer.uint32(obj.mission_type, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mission
    let len;
    let data = new Mission(null);
    // Deserialize message field [mission_pt]
    // Deserialize array length for message field [mission_pt]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.mission_pt = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.mission_pt[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [mission_type]
    data.mission_type = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.mission_pt.length;
    length += 4 * object.mission_type.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'dnc_msgs/Mission';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '723fd4f61ea387de4693090c6c8f5797';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    #     Mision file           #
    #############################
    
    
    geometry_msgs/Point[] mission_pt
    uint32[]  mission_type
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mission(null);
    if (msg.mission_pt !== undefined) {
      resolved.mission_pt = new Array(msg.mission_pt.length);
      for (let i = 0; i < resolved.mission_pt.length; ++i) {
        resolved.mission_pt[i] = geometry_msgs.msg.Point.Resolve(msg.mission_pt[i]);
      }
    }
    else {
      resolved.mission_pt = []
    }

    if (msg.mission_type !== undefined) {
      resolved.mission_type = msg.mission_type;
    }
    else {
      resolved.mission_type = []
    }

    return resolved;
    }
};

module.exports = Mission;
