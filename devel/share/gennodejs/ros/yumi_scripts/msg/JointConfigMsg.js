// Auto-generated. Do not edit!

// (in-package yumi_scripts.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointMsg = require('./JointMsg.js');

//-----------------------------------------------------------

class JointConfigMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group_name = null;
      this.joints = null;
      this.total_joints = null;
    }
    else {
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = '';
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = new JointMsg();
      }
      if (initObj.hasOwnProperty('total_joints')) {
        this.total_joints = initObj.total_joints
      }
      else {
        this.total_joints = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointConfigMsg
    // Serialize message field [group_name]
    bufferOffset = _serializer.string(obj.group_name, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = JointMsg.serialize(obj.joints, buffer, bufferOffset);
    // Serialize message field [total_joints]
    bufferOffset = _serializer.uint32(obj.total_joints, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointConfigMsg
    let len;
    let data = new JointConfigMsg(null);
    // Deserialize message field [group_name]
    data.group_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = JointMsg.deserialize(buffer, bufferOffset);
    // Deserialize message field [total_joints]
    data.total_joints = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.group_name.length;
    length += JointMsg.getMessageSize(object.joints);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yumi_scripts/JointConfigMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f0f52f3d837f89f138f5c791e3fdd443';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string group_name
    JointMsg joints
    uint32 total_joints
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
    const resolved = new JointConfigMsg(null);
    if (msg.group_name !== undefined) {
      resolved.group_name = msg.group_name;
    }
    else {
      resolved.group_name = ''
    }

    if (msg.joints !== undefined) {
      resolved.joints = JointMsg.Resolve(msg.joints)
    }
    else {
      resolved.joints = new JointMsg()
    }

    if (msg.total_joints !== undefined) {
      resolved.total_joints = msg.total_joints;
    }
    else {
      resolved.total_joints = 0
    }

    return resolved;
    }
};

module.exports = JointConfigMsg;
