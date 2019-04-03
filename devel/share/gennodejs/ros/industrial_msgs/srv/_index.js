
"use strict";

let SetRemoteLoggerLevel = require('./SetRemoteLoggerLevel.js')
let GetRobotInfo = require('./GetRobotInfo.js')
let CmdJointTrajectory = require('./CmdJointTrajectory.js')
let StartMotion = require('./StartMotion.js')
let StopMotion = require('./StopMotion.js')
let SetDrivePower = require('./SetDrivePower.js')

module.exports = {
  SetRemoteLoggerLevel: SetRemoteLoggerLevel,
  GetRobotInfo: GetRobotInfo,
  CmdJointTrajectory: CmdJointTrajectory,
  StartMotion: StartMotion,
  StopMotion: StopMotion,
  SetDrivePower: SetDrivePower,
};
