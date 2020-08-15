// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Localization = require('./Localization.js');
let InternalStat = require('./InternalStat.js');

//-----------------------------------------------------------

class VehStat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.localization = null;
      this.stat = null;
    }
    else {
      if (initObj.hasOwnProperty('localization')) {
        this.localization = initObj.localization
      }
      else {
        this.localization = new Localization();
      }
      if (initObj.hasOwnProperty('stat')) {
        this.stat = initObj.stat
      }
      else {
        this.stat = new InternalStat();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehStat
    // Serialize message field [localization]
    bufferOffset = Localization.serialize(obj.localization, buffer, bufferOffset);
    // Serialize message field [stat]
    bufferOffset = InternalStat.serialize(obj.stat, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehStat
    let len;
    let data = new VehStat(null);
    // Deserialize message field [localization]
    data.localization = Localization.deserialize(buffer, bufferOffset);
    // Deserialize message field [stat]
    data.stat = InternalStat.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Localization.getMessageSize(object.localization);
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/VehStat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '14f027e98cfa9be37f7d1091ffc370b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    ###       SunHao          ###
    #############################
    
    
    
    
    perception_msgs/Localization localization
    perception_msgs/InternalStat stat
    ================================================================================
    MSG: perception_msgs/Localization
    #############################
    ###       SunHao          ###
    #############################
    
    std_msgs/Header header
    
    int32 state
    
    float64 x
    float64 y
    float64 z
    float64 heading
    float64 speed
    float64 utc_time
    
    
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
    
    ================================================================================
    MSG: perception_msgs/InternalStat
    #############################
    ###       SunHao          ###
    #############################
    
    int32 state
    
    float64 vx
    float64 vy
    
    float64 omega
    float64 sw
    float64 acc
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehStat(null);
    if (msg.localization !== undefined) {
      resolved.localization = Localization.Resolve(msg.localization)
    }
    else {
      resolved.localization = new Localization()
    }

    if (msg.stat !== undefined) {
      resolved.stat = InternalStat.Resolve(msg.stat)
    }
    else {
      resolved.stat = new InternalStat()
    }

    return resolved;
    }
};

module.exports = VehStat;
