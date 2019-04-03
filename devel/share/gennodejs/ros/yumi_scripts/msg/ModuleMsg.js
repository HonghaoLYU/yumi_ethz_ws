// Auto-generated. Do not edit!

// (in-package yumi_scripts.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ModuleDataMsg = require('./ModuleDataMsg.js');
let JointMsg = require('./JointMsg.js');

//-----------------------------------------------------------

class ModuleMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group_name = null;
      this.module_left = null;
      this.module_right = null;
      this.joint_trajectory = null;
      this.total_joints = null;
      this.total_points = null;
    }
    else {
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = '';
      }
      if (initObj.hasOwnProperty('module_left')) {
        this.module_left = initObj.module_left
      }
      else {
        this.module_left = new ModuleDataMsg();
      }
      if (initObj.hasOwnProperty('module_right')) {
        this.module_right = initObj.module_right
      }
      else {
        this.module_right = new ModuleDataMsg();
      }
      if (initObj.hasOwnProperty('joint_trajectory')) {
        this.joint_trajectory = initObj.joint_trajectory
      }
      else {
        this.joint_trajectory = [];
      }
      if (initObj.hasOwnProperty('total_joints')) {
        this.total_joints = initObj.total_joints
      }
      else {
        this.total_joints = 0;
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
    // Serializes a message object of type ModuleMsg
    // Serialize message field [group_name]
    bufferOffset = _serializer.string(obj.group_name, buffer, bufferOffset);
    // Serialize message field [module_left]
    bufferOffset = ModuleDataMsg.serialize(obj.module_left, buffer, bufferOffset);
    // Serialize message field [module_right]
    bufferOffset = ModuleDataMsg.serialize(obj.module_right, buffer, bufferOffset);
    // Serialize message field [joint_trajectory]
    // Serialize the length for message field [joint_trajectory]
    bufferOffset = _serializer.uint32(obj.joint_trajectory.length, buffer, bufferOffset);
    obj.joint_trajectory.forEach((val) => {
      bufferOffset = JointMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [total_joints]
    bufferOffset = _serializer.uint32(obj.total_joints, buffer, bufferOffset);
    // Serialize message field [total_points]
    bufferOffset = _serializer.uint32(obj.total_points, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ModuleMsg
    let len;
    let data = new ModuleMsg(null);
    // Deserialize message field [group_name]
    data.group_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [module_left]
    data.module_left = ModuleDataMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [module_right]
    data.module_right = ModuleDataMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_trajectory]
    // Deserialize array length for message field [joint_trajectory]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_trajectory = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_trajectory[i] = JointMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [total_joints]
    data.total_joints = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [total_points]
    data.total_points = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.group_name.length;
    length += ModuleDataMsg.getMessageSize(object.module_left);
    length += ModuleDataMsg.getMessageSize(object.module_right);
    object.joint_trajectory.forEach((val) => {
      length += JointMsg.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yumi_scripts/ModuleMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25aac853187c477df279a09006782e49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string group_name
    ModuleDataMsg module_left
    ModuleDataMsg module_right
    JointMsg[] joint_trajectory
    uint32 total_joints
    uint32 total_points
    ================================================================================
    MSG: yumi_scripts/ModuleDataMsg
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
    
    ================================================================================
    MSG: yumi_scripts/JointMsg
    float64[] joint_values
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ModuleMsg(null);
    if (msg.group_name !== undefined) {
      resolved.group_name = msg.group_name;
    }
    else {
      resolved.group_name = ''
    }

    if (msg.module_left !== undefined) {
      resolved.module_left = ModuleDataMsg.Resolve(msg.module_left)
    }
    else {
      resolved.module_left = new ModuleDataMsg()
    }

    if (msg.module_right !== undefined) {
      resolved.module_right = ModuleDataMsg.Resolve(msg.module_right)
    }
    else {
      resolved.module_right = new ModuleDataMsg()
    }

    if (msg.joint_trajectory !== undefined) {
      resolved.joint_trajectory = new Array(msg.joint_trajectory.length);
      for (let i = 0; i < resolved.joint_trajectory.length; ++i) {
        resolved.joint_trajectory[i] = JointMsg.Resolve(msg.joint_trajectory[i]);
      }
    }
    else {
      resolved.joint_trajectory = []
    }

    if (msg.total_joints !== undefined) {
      resolved.total_joints = msg.total_joints;
    }
    else {
      resolved.total_joints = 0
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

module.exports = ModuleMsg;
