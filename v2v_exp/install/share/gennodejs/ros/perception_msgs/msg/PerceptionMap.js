// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Object = require('./Object.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PerceptionMap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objects = null;
      this.obj = null;
    }
    else {
      if (initObj.hasOwnProperty('objects')) {
        this.objects = initObj.objects
      }
      else {
        this.objects = [];
      }
      if (initObj.hasOwnProperty('obj')) {
        this.obj = initObj.obj
      }
      else {
        this.obj = new geometry_msgs.msg.PoseArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PerceptionMap
    // Serialize message field [objects]
    // Serialize the length for message field [objects]
    bufferOffset = _serializer.uint32(obj.objects.length, buffer, bufferOffset);
    obj.objects.forEach((val) => {
      bufferOffset = Object.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [obj]
    bufferOffset = geometry_msgs.msg.PoseArray.serialize(obj.obj, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PerceptionMap
    let len;
    let data = new PerceptionMap(null);
    // Deserialize message field [objects]
    // Deserialize array length for message field [objects]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.objects = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.objects[i] = Object.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [obj]
    data.obj = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.objects.forEach((val) => {
      length += Object.getMessageSize(val);
    });
    length += geometry_msgs.msg.PoseArray.getMessageSize(object.obj);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/PerceptionMap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '366a6b524c2178f2275f791e91732ad8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    #
    
    
    perception_msgs/Object[]  objects
    geometry_msgs/PoseArray obj
    
    #perception_msgs/Lane  left_line
    #perception_msgs/Lane  right_line
    #perception_msgs/Lane  left_boundary
    #perception_msgs/Lane  right_line
    ================================================================================
    MSG: perception_msgs/Object
    #
    #
    
    
    perception_msgs/Pt[] Pts
    
    int8 id
    int8 type
    
    float64  relative_dir
    float64  relative_speed
    
    
    ###  add gridcells info  ###
    
    
    
    ================================================================================
    MSG: perception_msgs/Pt
    ####
    ###
    
    
    float32 x
    float32 y
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
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
    const resolved = new PerceptionMap(null);
    if (msg.objects !== undefined) {
      resolved.objects = new Array(msg.objects.length);
      for (let i = 0; i < resolved.objects.length; ++i) {
        resolved.objects[i] = Object.Resolve(msg.objects[i]);
      }
    }
    else {
      resolved.objects = []
    }

    if (msg.obj !== undefined) {
      resolved.obj = geometry_msgs.msg.PoseArray.Resolve(msg.obj)
    }
    else {
      resolved.obj = new geometry_msgs.msg.PoseArray()
    }

    return resolved;
    }
};

module.exports = PerceptionMap;
