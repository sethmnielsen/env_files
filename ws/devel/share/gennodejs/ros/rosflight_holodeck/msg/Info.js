// Auto-generated. Do not edit!

// (in-package rosflight_holodeck.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Info {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.collision = null;
      this.holodeck_position = null;
      this.outputs = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('collision')) {
        this.collision = initObj.collision
      }
      else {
        this.collision = false;
      }
      if (initObj.hasOwnProperty('holodeck_position')) {
        this.holodeck_position = initObj.holodeck_position
      }
      else {
        this.holodeck_position = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('outputs')) {
        this.outputs = initObj.outputs
      }
      else {
        this.outputs = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Info
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [collision]
    bufferOffset = _serializer.bool(obj.collision, buffer, bufferOffset);
    // Serialize message field [holodeck_position]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.holodeck_position, buffer, bufferOffset);
    // Check that the constant length array field [outputs] has the right length
    if (obj.outputs.length !== 4) {
      throw new Error('Unable to serialize array field outputs - length must be 4')
    }
    // Serialize message field [outputs]
    bufferOffset = _arraySerializer.float32(obj.outputs, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Info
    let len;
    let data = new Info(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [collision]
    data.collision = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [holodeck_position]
    data.holodeck_position = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [outputs]
    data.outputs = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 41;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rosflight_holodeck/Info';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '104302e93cde498ce9b78f09171e075c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # rosflight_holodeck info message
    
    Header header
    
    bool collision         
    geometry_msgs/Vector3 holodeck_position      
    float32[4] outputs 
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
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new Info(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.collision !== undefined) {
      resolved.collision = msg.collision;
    }
    else {
      resolved.collision = false
    }

    if (msg.holodeck_position !== undefined) {
      resolved.holodeck_position = geometry_msgs.msg.Vector3.Resolve(msg.holodeck_position)
    }
    else {
      resolved.holodeck_position = new geometry_msgs.msg.Vector3()
    }

    if (msg.outputs !== undefined) {
      resolved.outputs = msg.outputs;
    }
    else {
      resolved.outputs = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = Info;
