// Auto-generated. Do not edit!

// (in-package gnss_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GPFPD {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.GPS_week = null;
      this.GPS_time = null;
      this.heading = null;
      this.pitch = null;
      this.roll = null;
      this.lat = null;
      this.lon = null;
      this.alt = null;
      this.v_east = null;
      this.v_north = null;
      this.v_sky = null;
      this.baseline_len = null;
      this.num_sat1 = null;
      this.num_sat2 = null;
      this.gnss_status = null;
      this.gnss_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('GPS_week')) {
        this.GPS_week = initObj.GPS_week
      }
      else {
        this.GPS_week = 0;
      }
      if (initObj.hasOwnProperty('GPS_time')) {
        this.GPS_time = initObj.GPS_time
      }
      else {
        this.GPS_time = 0.0;
      }
      if (initObj.hasOwnProperty('heading')) {
        this.heading = initObj.heading
      }
      else {
        this.heading = 0.0;
      }
      if (initObj.hasOwnProperty('pitch')) {
        this.pitch = initObj.pitch
      }
      else {
        this.pitch = 0.0;
      }
      if (initObj.hasOwnProperty('roll')) {
        this.roll = initObj.roll
      }
      else {
        this.roll = 0.0;
      }
      if (initObj.hasOwnProperty('lat')) {
        this.lat = initObj.lat
      }
      else {
        this.lat = 0.0;
      }
      if (initObj.hasOwnProperty('lon')) {
        this.lon = initObj.lon
      }
      else {
        this.lon = 0.0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('v_east')) {
        this.v_east = initObj.v_east
      }
      else {
        this.v_east = 0.0;
      }
      if (initObj.hasOwnProperty('v_north')) {
        this.v_north = initObj.v_north
      }
      else {
        this.v_north = 0.0;
      }
      if (initObj.hasOwnProperty('v_sky')) {
        this.v_sky = initObj.v_sky
      }
      else {
        this.v_sky = 0.0;
      }
      if (initObj.hasOwnProperty('baseline_len')) {
        this.baseline_len = initObj.baseline_len
      }
      else {
        this.baseline_len = 0.0;
      }
      if (initObj.hasOwnProperty('num_sat1')) {
        this.num_sat1 = initObj.num_sat1
      }
      else {
        this.num_sat1 = 0;
      }
      if (initObj.hasOwnProperty('num_sat2')) {
        this.num_sat2 = initObj.num_sat2
      }
      else {
        this.num_sat2 = 0;
      }
      if (initObj.hasOwnProperty('gnss_status')) {
        this.gnss_status = initObj.gnss_status
      }
      else {
        this.gnss_status = 0;
      }
      if (initObj.hasOwnProperty('gnss_mode')) {
        this.gnss_mode = initObj.gnss_mode
      }
      else {
        this.gnss_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GPFPD
    // Serialize message field [GPS_week]
    bufferOffset = _serializer.int32(obj.GPS_week, buffer, bufferOffset);
    // Serialize message field [GPS_time]
    bufferOffset = _serializer.float64(obj.GPS_time, buffer, bufferOffset);
    // Serialize message field [heading]
    bufferOffset = _serializer.float64(obj.heading, buffer, bufferOffset);
    // Serialize message field [pitch]
    bufferOffset = _serializer.float64(obj.pitch, buffer, bufferOffset);
    // Serialize message field [roll]
    bufferOffset = _serializer.float64(obj.roll, buffer, bufferOffset);
    // Serialize message field [lat]
    bufferOffset = _serializer.float64(obj.lat, buffer, bufferOffset);
    // Serialize message field [lon]
    bufferOffset = _serializer.float64(obj.lon, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float64(obj.alt, buffer, bufferOffset);
    // Serialize message field [v_east]
    bufferOffset = _serializer.float64(obj.v_east, buffer, bufferOffset);
    // Serialize message field [v_north]
    bufferOffset = _serializer.float64(obj.v_north, buffer, bufferOffset);
    // Serialize message field [v_sky]
    bufferOffset = _serializer.float64(obj.v_sky, buffer, bufferOffset);
    // Serialize message field [baseline_len]
    bufferOffset = _serializer.float64(obj.baseline_len, buffer, bufferOffset);
    // Serialize message field [num_sat1]
    bufferOffset = _serializer.int32(obj.num_sat1, buffer, bufferOffset);
    // Serialize message field [num_sat2]
    bufferOffset = _serializer.int32(obj.num_sat2, buffer, bufferOffset);
    // Serialize message field [gnss_status]
    bufferOffset = _serializer.int32(obj.gnss_status, buffer, bufferOffset);
    // Serialize message field [gnss_mode]
    bufferOffset = _serializer.int32(obj.gnss_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GPFPD
    let len;
    let data = new GPFPD(null);
    // Deserialize message field [GPS_week]
    data.GPS_week = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [GPS_time]
    data.GPS_time = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [heading]
    data.heading = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [pitch]
    data.pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [roll]
    data.roll = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lat]
    data.lat = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [lon]
    data.lon = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_east]
    data.v_east = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_north]
    data.v_north = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_sky]
    data.v_sky = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [baseline_len]
    data.baseline_len = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [num_sat1]
    data.num_sat1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_sat2]
    data.num_sat2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gnss_status]
    data.gnss_status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [gnss_mode]
    data.gnss_mode = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 108;
  }

  static datatype() {
    // Returns string type for a message object
    return 'gnss_msgs/GPFPD';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '595a3f473d05acf864715755cd142584';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #
    #
    #
    
    int32 GPS_week
    float64 GPS_time
    
    float64 heading
    float64 pitch
    float64 roll
    
    float64 lat
    float64 lon
    float64 alt
    
    float64 v_east
    float64 v_north
    float64 v_sky
    
    float64 baseline_len
    
    
    int32 num_sat1
    int32 num_sat2
    
    int32 gnss_status
    int32 gnss_mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GPFPD(null);
    if (msg.GPS_week !== undefined) {
      resolved.GPS_week = msg.GPS_week;
    }
    else {
      resolved.GPS_week = 0
    }

    if (msg.GPS_time !== undefined) {
      resolved.GPS_time = msg.GPS_time;
    }
    else {
      resolved.GPS_time = 0.0
    }

    if (msg.heading !== undefined) {
      resolved.heading = msg.heading;
    }
    else {
      resolved.heading = 0.0
    }

    if (msg.pitch !== undefined) {
      resolved.pitch = msg.pitch;
    }
    else {
      resolved.pitch = 0.0
    }

    if (msg.roll !== undefined) {
      resolved.roll = msg.roll;
    }
    else {
      resolved.roll = 0.0
    }

    if (msg.lat !== undefined) {
      resolved.lat = msg.lat;
    }
    else {
      resolved.lat = 0.0
    }

    if (msg.lon !== undefined) {
      resolved.lon = msg.lon;
    }
    else {
      resolved.lon = 0.0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.v_east !== undefined) {
      resolved.v_east = msg.v_east;
    }
    else {
      resolved.v_east = 0.0
    }

    if (msg.v_north !== undefined) {
      resolved.v_north = msg.v_north;
    }
    else {
      resolved.v_north = 0.0
    }

    if (msg.v_sky !== undefined) {
      resolved.v_sky = msg.v_sky;
    }
    else {
      resolved.v_sky = 0.0
    }

    if (msg.baseline_len !== undefined) {
      resolved.baseline_len = msg.baseline_len;
    }
    else {
      resolved.baseline_len = 0.0
    }

    if (msg.num_sat1 !== undefined) {
      resolved.num_sat1 = msg.num_sat1;
    }
    else {
      resolved.num_sat1 = 0
    }

    if (msg.num_sat2 !== undefined) {
      resolved.num_sat2 = msg.num_sat2;
    }
    else {
      resolved.num_sat2 = 0
    }

    if (msg.gnss_status !== undefined) {
      resolved.gnss_status = msg.gnss_status;
    }
    else {
      resolved.gnss_status = 0
    }

    if (msg.gnss_mode !== undefined) {
      resolved.gnss_mode = msg.gnss_mode;
    }
    else {
      resolved.gnss_mode = 0
    }

    return resolved;
    }
};

module.exports = GPFPD;
