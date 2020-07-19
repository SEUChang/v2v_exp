// Auto-generated. Do not edit!

// (in-package gnss_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class VehStat {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.utm_x = null;
      this.utm_y = null;
      this.utm_z = null;
      this.speed_kmh = null;
      this.speed_ms = null;
      this.heading_ori = null;
      this.heading_rad = null;
      this.heading_deg = null;
      this.gnss_status = null;
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('utm_x')) {
        this.utm_x = initObj.utm_x
      }
      else {
        this.utm_x = 0.0;
      }
      if (initObj.hasOwnProperty('utm_y')) {
        this.utm_y = initObj.utm_y
      }
      else {
        this.utm_y = 0.0;
      }
      if (initObj.hasOwnProperty('utm_z')) {
        this.utm_z = initObj.utm_z
      }
      else {
        this.utm_z = 0.0;
      }
      if (initObj.hasOwnProperty('speed_kmh')) {
        this.speed_kmh = initObj.speed_kmh
      }
      else {
        this.speed_kmh = 0.0;
      }
      if (initObj.hasOwnProperty('speed_ms')) {
        this.speed_ms = initObj.speed_ms
      }
      else {
        this.speed_ms = 0.0;
      }
      if (initObj.hasOwnProperty('heading_ori')) {
        this.heading_ori = initObj.heading_ori
      }
      else {
        this.heading_ori = 0.0;
      }
      if (initObj.hasOwnProperty('heading_rad')) {
        this.heading_rad = initObj.heading_rad
      }
      else {
        this.heading_rad = 0.0;
      }
      if (initObj.hasOwnProperty('heading_deg')) {
        this.heading_deg = initObj.heading_deg
      }
      else {
        this.heading_deg = 0.0;
      }
      if (initObj.hasOwnProperty('gnss_status')) {
        this.gnss_status = initObj.gnss_status
      }
      else {
        this.gnss_status = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.PoseStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VehStat
    // Serialize message field [utm_x]
    bufferOffset = _serializer.float64(obj.utm_x, buffer, bufferOffset);
    // Serialize message field [utm_y]
    bufferOffset = _serializer.float64(obj.utm_y, buffer, bufferOffset);
    // Serialize message field [utm_z]
    bufferOffset = _serializer.float64(obj.utm_z, buffer, bufferOffset);
    // Serialize message field [speed_kmh]
    bufferOffset = _serializer.float64(obj.speed_kmh, buffer, bufferOffset);
    // Serialize message field [speed_ms]
    bufferOffset = _serializer.float64(obj.speed_ms, buffer, bufferOffset);
    // Serialize message field [heading_ori]
    bufferOffset = _serializer.float64(obj.heading_ori, buffer, bufferOffset);
    // Serialize message field [heading_rad]
    bufferOffset = _serializer.float64(obj.heading_rad, buffer, bufferOffset);
    // Serialize message field [heading_deg]
    bufferOffset = _serializer.float64(obj.heading_deg, buffer, bufferOffset);
    // Serialize message field [gnss_status]
    bufferOffset = _serializer.int32(obj.gnss_status, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.PoseStamped.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VehStat
    let len;
    let data = new VehStat(null);
    // Deserialize message field [utm_x]
    data.utm_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utm_y]
    data.utm_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [utm_z]
    data.utm_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_kmh]
    data.speed_kmh = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [speed_ms]
    data.speed_ms = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_ori]
    data.heading_ori = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_rad]
    data.heading_rad = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading_deg]
    data.heading_deg = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gnss_status]
    data.gnss_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.PoseStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PoseStamped.getMessageSize(object.pose);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_msgs/VehStat';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a7b573b6cfdb4756f9721c428469112';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    ###       SunHao          ###
    #############################
    
    #  pose and speed
    
    
    float64 utm_x
    float64 utm_y
    float64 utm_z
    
    
    float64 speed_kmh
    float64 speed_ms
    float64 heading_ori
    float64 heading_rad
    float64 heading_deg
    
    int32 gnss_status
    
    
    geometry_msgs/PoseStamped pose
    
    ================================================================================
    MSG: geometry_msgs/PoseStamped
    # A Pose with reference coordinate frame and timestamp
    Header header
    Pose pose
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VehStat(null);
    if (msg.utm_x !== undefined) {
      resolved.utm_x = msg.utm_x;
    }
    else {
      resolved.utm_x = 0.0
    }

    if (msg.utm_y !== undefined) {
      resolved.utm_y = msg.utm_y;
    }
    else {
      resolved.utm_y = 0.0
    }

    if (msg.utm_z !== undefined) {
      resolved.utm_z = msg.utm_z;
    }
    else {
      resolved.utm_z = 0.0
    }

    if (msg.speed_kmh !== undefined) {
      resolved.speed_kmh = msg.speed_kmh;
    }
    else {
      resolved.speed_kmh = 0.0
    }

    if (msg.speed_ms !== undefined) {
      resolved.speed_ms = msg.speed_ms;
    }
    else {
      resolved.speed_ms = 0.0
    }

    if (msg.heading_ori !== undefined) {
      resolved.heading_ori = msg.heading_ori;
    }
    else {
      resolved.heading_ori = 0.0
    }

    if (msg.heading_rad !== undefined) {
      resolved.heading_rad = msg.heading_rad;
    }
    else {
      resolved.heading_rad = 0.0
    }

    if (msg.heading_deg !== undefined) {
      resolved.heading_deg = msg.heading_deg;
    }
    else {
      resolved.heading_deg = 0.0
    }

    if (msg.gnss_status !== undefined) {
      resolved.gnss_status = msg.gnss_status;
    }
    else {
      resolved.gnss_status = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.PoseStamped.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.PoseStamped()
    }

    return resolved;
    }
};

module.exports = VehStat;
