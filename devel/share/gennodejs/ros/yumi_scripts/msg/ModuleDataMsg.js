// Auto-generated. Do not edit!

// (in-package yumi_scripts.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PoseConfigMsg = require('./PoseConfigMsg.js');

//-----------------------------------------------------------

class ModuleDataMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group_name = null;
      this.pose_names = null;
      this.pose_configs = null;
      this.gripper_attached = null;
      this.total_points = null;
    }
    else {
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = '';
      }
      if (initObj.hasOwnProperty('pose_names')) {
        this.pose_names = initObj.pose_names
      }
      else {
        this.pose_names = [];
      }
      if (initObj.hasOwnProperty('pose_configs')) {
        this.pose_configs = initObj.pose_configs
      }
      else {
        this.pose_configs = [];
      }
      if (initObj.hasOwnProperty('gripper_attached')) {
        this.gripper_attached = initObj.gripper_attached
      }
      else {
        this.gripper_attached = false;
      }
      if (initObj.hasOwnProperty('total_points')) {
        this.total_points = initObj.total_points
      }
      else {
        this.total_points = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ModuleDataMsg
    // Serialize message field [group_name]
    bufferOffset = _serializer.string(obj.group_name, buffer, bufferOffset);
    // Serialize message field [pose_names]
    bufferOffset = _arraySerializer.string(obj.pose_names, buffer, bufferOffset, null);
    // Serialize message field [pose_configs]
    // Serialize the length for message field [pose_configs]
    bufferOffset = _serializer.uint32(obj.pose_configs.length, buffer, bufferOffset);
    obj.pose_configs.forEach((val) => {
      bufferOffset = PoseConfigMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [gripper_attached]
    bufferOffset = _serializer.bool(obj.gripper_attached, buffer, bufferOffset);
    // Serialize message field [total_points]
    bufferOffset = _serializer.uint32(obj.total_points, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleDataMsg
    let len;
    let data = new ModuleDataMsg(null);
    // Deserialize message field [group_name]
    data.group_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose_names]
    data.pose_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [pose_configs]
    // Deserialize array length for message field [pose_configs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose_configs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose_configs[i] = PoseConfigMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [gripper_attached]
    data.gripper_attached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [total_points]
    data.total_points = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.group_name.length;
    object.pose_names.forEach((val) => {
      length += 4 + val.length;
    });
    object.pose_configs.forEach((val) => {
      length += PoseConfigMsg.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yumi_scripts/ModuleDataMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a67dafea575532d17cc4f00f410a69f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string group_name
    string[] pose_names
    PoseConfigMsg[] pose_configs
    bool gripper_attached
    uint32 total_points
    ================================================================================
    MSG: yumi_scripts/PoseConfigMsg
    string group_name
    geometry_msgs/Pose pose
    int32[] confdata
    float64 external_axis_position
    bool gripper_attached
    float64 gripper_position
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
    const resolved = new ModuleDataMsg(null);
    if (msg.group_name !== undefined) {
      resolved.group_name = msg.group_name;
    }
    else {
      resolved.group_name = ''
    }

    if (msg.pose_names !== undefined) {
      resolved.pose_names = msg.pose_names;
    }
    else {
      resolved.pose_names = []
    }

    if (msg.pose_configs !== undefined) {
      resolved.pose_configs = new Array(msg.pose_configs.length);
      for (let i = 0; i < resolved.pose_configs.length; ++i) {
        resolved.pose_configs[i] = PoseConfigMsg.Resolve(msg.pose_configs[i]);
      }
    }
    else {
      resolved.pose_configs = []
    }

    if (msg.gripper_attached !== undefined) {
      resolved.gripper_attached = msg.gripper_attached;
    }
    else {
      resolved.gripper_attached = false
    }

    if (msg.total_points !== undefined) {
      resolved.total_points = msg.total_points;
    }
    else {
      resolved.total_points = 0
    }

    return resolved;
    }
};

module.exports = ModuleDataMsg;
