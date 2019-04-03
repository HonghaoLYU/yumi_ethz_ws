// Auto-generated. Do not edit!

// (in-package yumi_scripts.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class PoseConfigMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.group_name = null;
      this.pose = null;
      this.confdata = null;
      this.external_axis_position = null;
      this.gripper_attached = null;
      this.gripper_position = null;
    }
    else {
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = '';
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('confdata')) {
        this.confdata = initObj.confdata
      }
      else {
        this.confdata = [];
      }
      if (initObj.hasOwnProperty('external_axis_position')) {
        this.external_axis_position = initObj.external_axis_position
      }
      else {
        this.external_axis_position = 0.0;
      }
      if (initObj.hasOwnProperty('gripper_attached')) {
        this.gripper_attached = initObj.gripper_attached
      }
      else {
        this.gripper_attached = false;
      }
      if (initObj.hasOwnProperty('gripper_position')) {
        this.gripper_position = initObj.gripper_position
      }
      else {
        this.gripper_position = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PoseConfigMsg
    // Serialize message field [group_name]
    bufferOffset = _serializer.string(obj.group_name, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [confdata]
    bufferOffset = _arraySerializer.int32(obj.confdata, buffer, bufferOffset, null);
    // Serialize message field [external_axis_position]
    bufferOffset = _serializer.float64(obj.external_axis_position, buffer, bufferOffset);
    // Serialize message field [gripper_attached]
    bufferOffset = _serializer.bool(obj.gripper_attached, buffer, bufferOffset);
    // Serialize message field [gripper_position]
    bufferOffset = _serializer.float64(obj.gripper_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PoseConfigMsg
    let len;
    let data = new PoseConfigMsg(null);
    // Deserialize message field [group_name]
    data.group_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [confdata]
    data.confdata = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [external_axis_position]
    data.external_axis_position = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [gripper_attached]
    data.gripper_attached = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gripper_position]
    data.gripper_position = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.group_name.length;
    length += 4 * object.confdata.length;
    return length + 81;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yumi_scripts/PoseConfigMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45da748a00accc427392a77b8503106f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new PoseConfigMsg(null);
    if (msg.group_name !== undefined) {
      resolved.group_name = msg.group_name;
    }
    else {
      resolved.group_name = ''
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.confdata !== undefined) {
      resolved.confdata = msg.confdata;
    }
    else {
      resolved.confdata = []
    }

    if (msg.external_axis_position !== undefined) {
      resolved.external_axis_position = msg.external_axis_position;
    }
    else {
      resolved.external_axis_position = 0.0
    }

    if (msg.gripper_attached !== undefined) {
      resolved.gripper_attached = msg.gripper_attached;
    }
    else {
      resolved.gripper_attached = false
    }

    if (msg.gripper_position !== undefined) {
      resolved.gripper_position = msg.gripper_position;
    }
    else {
      resolved.gripper_position = 0.0
    }

    return resolved;
    }
};

module.exports = PoseConfigMsg;
