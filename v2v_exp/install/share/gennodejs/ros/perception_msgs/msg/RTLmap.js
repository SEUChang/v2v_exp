// Auto-generated. Do not edit!

// (in-package perception_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ObsOccGrid = require('./ObsOccGrid.js');
let GridObs = require('./GridObs.js');

//-----------------------------------------------------------

class RTLmap {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.occ_grid = null;
      this.grid_obs = null;
    }
    else {
      if (initObj.hasOwnProperty('occ_grid')) {
        this.occ_grid = initObj.occ_grid
      }
      else {
        this.occ_grid = new ObsOccGrid();
      }
      if (initObj.hasOwnProperty('grid_obs')) {
        this.grid_obs = initObj.grid_obs
      }
      else {
        this.grid_obs = new GridObs();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RTLmap
    // Serialize message field [occ_grid]
    bufferOffset = ObsOccGrid.serialize(obj.occ_grid, buffer, bufferOffset);
    // Serialize message field [grid_obs]
    bufferOffset = GridObs.serialize(obj.grid_obs, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RTLmap
    let len;
    let data = new RTLmap(null);
    // Deserialize message field [occ_grid]
    data.occ_grid = ObsOccGrid.deserialize(buffer, bufferOffset);
    // Deserialize message field [grid_obs]
    data.grid_obs = GridObs.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObsOccGrid.getMessageSize(object.occ_grid);
    length += GridObs.getMessageSize(object.grid_obs);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'perception_msgs/RTLmap';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cad5159f0957a62d993fb789a686586c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #############################
    ###       SunHao          ###
    #############################
    
    # traditional #
    perception_msgs/ObsOccGrid occ_grid
    
    ##  better  ##
    perception_msgs/GridObs grid_obs
    ================================================================================
    MSG: perception_msgs/ObsOccGrid
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
    
    ================================================================================
    MSG: perception_msgs/GridObs
    
    ###
    
    perception_msgs/Object[] obs
    float32 grid_size
    ###
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RTLmap(null);
    if (msg.occ_grid !== undefined) {
      resolved.occ_grid = ObsOccGrid.Resolve(msg.occ_grid)
    }
    else {
      resolved.occ_grid = new ObsOccGrid()
    }

    if (msg.grid_obs !== undefined) {
      resolved.grid_obs = GridObs.Resolve(msg.grid_obs)
    }
    else {
      resolved.grid_obs = new GridObs()
    }

    return resolved;
    }
};

module.exports = RTLmap;
