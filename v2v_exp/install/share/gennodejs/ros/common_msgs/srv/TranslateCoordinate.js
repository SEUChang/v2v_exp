// Auto-generated. Do not edit!

// (in-package common_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class TranslateCoordinateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.originx = null;
      this.originy = null;
    }
    else {
      if (initObj.hasOwnProperty('originx')) {
        this.originx = initObj.originx
      }
      else {
        this.originx = [];
      }
      if (initObj.hasOwnProperty('originy')) {
        this.originy = initObj.originy
      }
      else {
        this.originy = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TranslateCoordinateRequest
    // Serialize message field [originx]
    bufferOffset = _arraySerializer.float64(obj.originx, buffer, bufferOffset, null);
    // Serialize message field [originy]
    bufferOffset = _arraySerializer.float64(obj.originy, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TranslateCoordinateRequest
    let len;
    let data = new TranslateCoordinateRequest(null);
    // Deserialize message field [originx]
    data.originx = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [originy]
    data.originy = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.originx.length;
    length += 8 * object.originy.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'common_msgs/TranslateCoordinateRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bd4d1e6b7683eb6bb823948b46517c0e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] originx
    float64[] originy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TranslateCoordinateRequest(null);
    if (msg.originx !== undefined) {
      resolved.originx = msg.originx;
    }
    else {
      resolved.originx = []
    }

    if (msg.originy !== undefined) {
      resolved.originy = msg.originy;
    }
    else {
      resolved.originy = []
    }

    return resolved;
    }
};

class TranslateCoordinateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.resultx = null;
      this.resulty = null;
    }
    else {
      if (initObj.hasOwnProperty('resultx')) {
        this.resultx = initObj.resultx
      }
      else {
        this.resultx = [];
      }
      if (initObj.hasOwnProperty('resulty')) {
        this.resulty = initObj.resulty
      }
      else {
        this.resulty = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TranslateCoordinateResponse
    // Serialize message field [resultx]
    bufferOffset = _arraySerializer.float64(obj.resultx, buffer, bufferOffset, null);
    // Serialize message field [resulty]
    bufferOffset = _arraySerializer.float64(obj.resulty, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TranslateCoordinateResponse
    let len;
    let data = new TranslateCoordinateResponse(null);
    // Deserialize message field [resultx]
    data.resultx = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [resulty]
    data.resulty = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.resultx.length;
    length += 8 * object.resulty.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'common_msgs/TranslateCoordinateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcea5cb2de69cf95c17cad3497c532c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] resultx
    float64[] resulty
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TranslateCoordinateResponse(null);
    if (msg.resultx !== undefined) {
      resolved.resultx = msg.resultx;
    }
    else {
      resolved.resultx = []
    }

    if (msg.resulty !== undefined) {
      resolved.resulty = msg.resulty;
    }
    else {
      resolved.resulty = []
    }

    return resolved;
    }
};

module.exports = {
  Request: TranslateCoordinateRequest,
  Response: TranslateCoordinateResponse,
  md5sum() { return '2c886e6e452bf022836f0a1ebec240f3'; },
  datatype() { return 'common_msgs/TranslateCoordinate'; }
};
