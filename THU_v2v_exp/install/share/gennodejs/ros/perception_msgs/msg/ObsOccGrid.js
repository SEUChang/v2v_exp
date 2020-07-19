// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ObsOccGrid {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.occ = null;
      this.gird_size = null;
      this.col_num = null;
      this.row_num = null;
      this.x0 = null;
      this.y0 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('occ')) {
        this.occ = initObj.occ
      }
      else {
        this.occ = [];
      }
      if (initObj.hasOwnProperty('gird_size')) {
        this.gird_size = initObj.gird_size
      }
      else {
        this.gird_size = 0.0;
      }
      if (initObj.hasOwnProperty('col_num')) {
        this.col_num = initObj.col_num
      }
      else {
        this.col_num = 0;
      }
      if (initObj.hasOwnProperty('row_num')) {
        this.row_num = initObj.row_num
      }
      else {
        this.row_num = 0;
      }
      if (initObj.hasOwnProperty('x0')) {
        this.x0 = initObj.x0
      }
      else {
        this.x0 = 0.0;
      }
      if (initObj.hasOwnProperty('y0')) {
        this.y0 = initObj.y0
      }
      else {
        this.y0 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObsOccGrid
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [occ]
    bufferOffset = _arraySerializer.int8(obj.occ, buffer, bufferOffset, null);
    // Serialize message field [gird_size]
    bufferOffset = _serializer.float32(obj.gird_size, buffer, bufferOffset);
    // Serialize message field [col_num]
    bufferOffset = _serializer.int32(obj.col_num, buffer, bufferOffset);
    // Serialize message field [row_num]
    bufferOffset = _serializer.int32(obj.row_num, buffer, bufferOffset);
    // Serialize message field [x0]
    bufferOffset = _serializer.float32(obj.x0, buffer, bufferOffset);
    // Serialize message field [y0]
    bufferOffset = _serializer.float32(obj.y0, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObsOccGrid
    let len;
    let data = new ObsOccGrid(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [occ]
    data.occ = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [gird_size]
    data.gird_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [col_num]
    data.col_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [row_num]
    data.row_num = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [x0]
    data.x0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y0]
    data.y0 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.occ.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/ObsOccGrid';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ec189275c525cd48a9b9ba3f3290c5f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #################
    
    std_msgs/Header header
    
    int8[] occ
    float32 gird_size
    int32 col_num
    int32 row_num
    
    float32 x0
    float32 y0
    
    
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
    const resolved = new ObsOccGrid(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.occ !== undefined) {
      resolved.occ = msg.occ;
    }
    else {
      resolved.occ = []
    }

    if (msg.gird_size !== undefined) {
      resolved.gird_size = msg.gird_size;
    }
    else {
      resolved.gird_size = 0.0
    }

    if (msg.col_num !== undefined) {
      resolved.col_num = msg.col_num;
    }
    else {
      resolved.col_num = 0
    }

    if (msg.row_num !== undefined) {
      resolved.row_num = msg.row_num;
    }
    else {
      resolved.row_num = 0
    }

    if (msg.x0 !== undefined) {
      resolved.x0 = msg.x0;
    }
    else {
      resolved.x0 = 0.0
    }

    if (msg.y0 !== undefined) {
      resolved.y0 = msg.y0;
    }
    else {
      resolved.y0 = 0.0
    }

    return resolved;
    }
};

module.exports = ObsOccGrid;
