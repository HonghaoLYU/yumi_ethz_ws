#!/usr/bin/env python
# coding=UTF-8
# Author: Honghao Lv limit the worksapce for small motion step control

import sys
import rospy
import time
import copy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String, Header
from std_msgs.msg import Float64MultiArray
from moveit_msgs.msg import JointConstraint, OrientationConstraint, PositionConstraint, JointLimits, Constraints
from moveit_commander.conversions import pose_to_list
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from geometry_msgs.msg import PoseStamped, Pose2D
from joint_state import return_joint_state

# 全局变量定义以及赋值
obj_x = 0
obj_y = 0
obj_theta = 0

# 定义回调函数,订阅接受到的消息传给data
def Objpose_callback(data):
    global obj_x, obj_y, obj_theta
    obj_x = data.x
    obj_y = data.y
    obj_theta = data.theta

class MoveGroupPythonInteface(object):
    def __init__(self):
        super(MoveGroupPythonInteface, self).__init__()

        # 初始化 `moveit_commander`_ and a `rospy`_ node:
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('move_group_python_interface',anonymous=True)

        # 订阅话题
        rospy.Subscriber('object_coordinate', Pose2D, Objpose_callback)

        # 实例化 a `RobotCommander`_ 对象.
        robot = moveit_commander.RobotCommander()

        # 实例化 a `PlanningSceneInterface`_ 对象.
        scene = moveit_commander.PlanningSceneInterface()

        # 实例化 a `MoveGroupCommander`_ 对象.
        right_arm = moveit_commander.MoveGroupCommander("right_arm")
        left_arm = moveit_commander.MoveGroupCommander("left_arm")
        both_arms = moveit_commander.MoveGroupCommander("both_arms")

        # 创建 `DisplayTrajectory`_ publisher,稍后用于发布RViz可视化的轨迹
        display_trajectory_publisher = rospy.Publisher('/move_group/display_planned_path',moveit_msgs.msg.DisplayTrajectory,queue_size=20)

        # 获取机器人的参考坐标系并输出
        planning_frame = both_arms.get_planning_frame()
        print "============ Reference frame: %s" % planning_frame

        # 获取机器人中所有groups的名称并打印:
        group_names = robot.get_group_names()
        print "============ Robot Groups:", robot.get_group_names()

        # 输出当前机器人的全部状态便于调试:
        print "============ Printing robot state"
        print robot.get_current_state()
        print ""

        # 各种变量
        self.box_name = ''
        self.robot = robot
        self.scene = scene
        self.right_arm = right_arm
        self.left_arm = left_arm
        self.both_arms = both_arms
        self.display_trajectory_publisher = display_trajectory_publisher
        self.planning_frame = planning_frame
        self.group_names = group_names

    def set_scene(self):
        # 设置规划场景对象
        scene = self.scene
        planning_frame = self.planning_frame
        # 设置场景物体的名称
        top_id = 'top'
        top1_id = 'top1'
        box1_id = 'box1'
        box2_id = 'box2'
        box3_id = 'box3'
        box_side1_id = 'box_side1'
        box_side2_id = 'box_side2'
        box_side3_id = 'box_side3'
        box_side4_id = 'box_side4'
        desk_id = 'desk'
        cover1_id = 'cover1'
        cover2_id = 'cover2'
        cover3_id = 'cover3'
        # 设置约束形状的三维尺寸
        top_size = [0.05, 1.01, 0.05]
        top1_size = [0.05, 0.8, 0.05]
        box1_size = [0.05, 0.05, 0.7]
        box2_size = [0.05, 0.05, 0.7]
        box3_size = [0.05, 0.05, 0.7]
        box_side1_size = [0.01, 0.3, 0.1]
        box_side2_size = [0.3, 0.01, 0.1]
        box_side3_size = [0.01, 0.3, 0.1]
        box_side4_size = [0.3, 0.01, 0.1]
        desk_size = [1.5, 0.8, 0.01]
        cover1_size = [0.001, 0.8, 0.1]
        cover2_size = [0.3, 0.8, 0.001]
        cover3_size = [0.2, 0.55, 0.001]
        # 添加桌面和基座包覆到规划场景当中
        cover1_pose = PoseStamped()
        cover1_pose.header.frame_id = planning_frame
        cover1_pose.pose.position.x = 0.142
        cover1_pose.pose.position.y = 0
        cover1_pose.pose.position.z = -0.05
        cover1_pose.pose.orientation.w = 1.0   
        scene.add_box(cover1_id, cover1_pose, cover1_size)
        cover2_pose = PoseStamped()
        cover2_pose.header.frame_id = planning_frame
        cover2_pose.pose.position.x = 0.292
        cover2_pose.pose.position.y = 0
        cover2_pose.pose.position.z = -0.101
        cover2_pose.pose.orientation.w = 1.0   
        scene.add_box(cover2_id, cover2_pose, cover2_size)
        cover3_pose = PoseStamped()
        cover3_pose.header.frame_id = planning_frame
        cover3_pose.pose.position.x = 0.55
        cover3_pose.pose.position.y = 0
        cover3_pose.pose.position.z = -0.063
        cover3_pose.pose.orientation.w = 1.0   
        scene.add_box(cover3_id, cover3_pose, cover3_size)
        # 将桌面约束加入场景当中
        desk_pose = PoseStamped()
        desk_pose.header.frame_id = planning_frame
        desk_pose.pose.position.x = 0
        desk_pose.pose.position.y = 0
        desk_pose.pose.position.z = -0.08
        desk_pose.pose.orientation.w = 1.0
        scene.add_box(desk_id, desk_pose, desk_size)

    def right_arm_go_to_pose_goal(self):
        # 设置动作对象变量,此处为arm
        right_arm = self.right_arm

        # 获取当前末端执行器位置姿态
        pose_goal = right_arm.get_current_pose().pose

        # 限制末端夹具运动
        right_joint_const = JointConstraint()
        right_joint_const.joint_name = "gripper_r_joint_r"
        # if Rightfinger > -55 :
        #     right_joint_const.position = 0.024
        # else:
        right_joint_const.position = 0
        right_joint_const.weight = 1.0
        # 施加全约束
        consts = Constraints()
        consts.joint_constraints = [right_joint_const]
        right_arm.set_path_constraints(consts)

        # 计算夹取姿态
        if obj_theta <= 0 :
            (Qux, Quy, Quz, Quw) = quaternion_from_euler(90.01/180*pi, 0, (-180 - obj_theta)/180*pi)
        else:
            (Qux, Quy, Quz, Quw) = quaternion_from_euler(90.01/180*pi, 0, (180 - obj_theta)/180*pi)

        # (Qux, Quy, Quz, Quw) = quaternion_from_euler(90/180*pi, 0, -180/180*pi)

        # 设置动作对象目标位置姿态
        pose_goal.orientation.x = Qux
        pose_goal.orientation.y = Quy
        pose_goal.orientation.z = Quz
        pose_goal.orientation.w = Quw
        # pose_goal.position.y = 0.0244387395252 + (-0.595877665686-0.0244387395252)*obj_x/320
        # pose_goal.position.x = 0.625989932306 + (0.197518221397-0.625989932306)*obj_y/240
        pose_goal.position.x = 0.1819576873 + (160-obj_y)*(0.494596343128-0.1819576873)/160
        pose_goal.position.y = obj_x*(-0.455644324437+0.0238434066464)/220 -0.0238434066464
        pose_goal.position.z = 0.0942404372508
        right_arm.set_pose_target(pose_goal)
        print "End effector pose %s" % pose_goal

        # 规划和输出动作
        traj = right_arm.plan()
        right_arm.execute(traj, wait=False)
        # 动作完成后清除目标信息
        right_arm.clear_pose_targets()
        # 清除路径约束
        right_arm.clear_path_constraints()
        # 确保没有剩余未完成动作在执行
        right_arm.stop()

    def right_arm_go_to_stay_goal(self, jointnum):
        # 设置动作对象变量,此处为right_arm
        right_arm = self.right_arm
        # 获取当前末端执行器位置姿态
        right_joint_goal = right_arm.get_current_joint_values()
        # 设置末端关节目标值
        armnum = 'right_arm'
        right_joint_goal[0] = return_joint_state(armnum,jointnum)[0]
        right_joint_goal[1] = return_joint_state(armnum,jointnum)[1]
        right_joint_goal[2] = return_joint_state(armnum,jointnum)[2]
        right_joint_goal[3] = return_joint_state(armnum,jointnum)[3]
        right_joint_goal[4] = return_joint_state(armnum,jointnum)[4]
        right_joint_goal[5] = return_joint_state(armnum,jointnum)[5]
        right_joint_goal[6] = return_joint_state(armnum,jointnum)[6]
        print "End effector joint goal %s" % right_joint_goal
        # 规划并执行路径动作
        right_arm.go(right_joint_goal, wait=False)
        right_arm.stop()

    def right_arm_go_down_goal(self):
        # 设置动作对象变量,此处为arm
        right_arm = self.right_arm

        waypoints = []

        # 获取当前末端执行器位置姿态
        pose_goal = right_arm.get_current_pose().pose

        # 添加路径起始点
        waypoints.append(copy.deepcopy(pose_goal))

        # 限制末端夹具运动
        right_joint_const = JointConstraint()
        right_joint_const.joint_name = "gripper_r_joint_r"
        # if Rightfinger > -55 :
        #     right_joint_const.position = 0.024
        # else:
        right_joint_const.position = 0.0239
        right_joint_const.weight = 1.0
        # 施加全约束
        consts = Constraints()
        consts.joint_constraints = [right_joint_const]
        right_arm.set_path_constraints(consts)

        # 设置动作对象目标位置姿态
        pose_goal.position.z = pose_goal.position.z - 0.045
        # pose_goal.position.y = pose_goal.position.y - 0.1

        # 添加路径末端点
        waypoints.append(copy.deepcopy(pose_goal))

        # 路径规划
        (plan, fraction) = right_arm.compute_cartesian_path(
            waypoints,  # waypoints to follow
            0.01,  # eef_step
            0.0)  # jump_threshold

        print "End effector pose %s" % waypoints

        # robot = self.robot
        # display_trajectory_publisher = self.display_trajectory_publisher

        # display_trajectory = moveit_msgs.msg.DisplayTrajectory()
        # display_trajectory.trajectory_start = robot.get_current_state()
        # display_trajectory.trajectory.append(plan)
        # display_trajectory_publisher.publish(display_trajectory)

        # 规划和输出动作
        right_arm.execute(plan, wait=False)
        # 清除路径约束
        # right_arm.clear_path_constraints()
        # 确保没有剩余未完成动作在执行
        # right_arm.stop()

    def left_arm_go_to_pose_goal(self):
        # 设置动作对象变量,此处为arm
        left_arm = self.left_arm

        # 获取当前末端执行器位置姿态
        pose_goal = left_arm.get_current_pose().pose

        # 设置动作对象目标位置姿态
        pose_goal.orientation.x = Left_Qux
        pose_goal.orientation.y = Left_Quy
        pose_goal.orientation.z = Left_Quz
        pose_goal.orientation.w = Left_Quw
        pose_goal.position.y = -(-0.595877665686-0.0244387395252)*obj_x/320
        pose_goal.position.x = -(0.197518221397-0.625989932306)*obj_y/240
        pose_goal.position.z = 0
        left_arm.set_pose_target(pose_goal)
        print "End effector pose %s" % pose_goal

        # 规划和输出动作
        traj = left_arm.plan()
        left_arm.execute(traj, wait=False)
        # 动作完成后清除目标信息
        left_arm.clear_pose_targets()     
        # 清除路径约束
        left_arm.clear_path_constraints()
        # 确保没有剩余未完成动作在执行
        left_arm.stop()

    def right_gripper_go_to_close_goal(self):
        # 设置动作对象变量,此处为right_arm
        right_arm = self.right_arm
        # 获取当前末端执行器位置姿态
        right_joint_goal = right_arm.get_current_joint_values()
        # right_arm.set_goal_joint_tolerance(0.015)
        # 设置末端关节目标值
        right_joint_goal[7] = 0
        # 规划并执行路径动作
        # traj = right_arm.plan(right_joint_goal)
        # right_arm.execute(traj, wait=False)
        right_arm.go(right_joint_goal, wait=False)
        right_arm.clear_pose_targets()
        right_arm.stop()
        # right_arm.set_goal_joint_tolerance(0.0001)

    def right_gripper_go_to_open_goal(self):
        # 设置动作对象变量,此处为right_arm
        right_arm = self.right_arm
        # 获取当前末端执行器位置姿态
        right_joint_goal = right_arm.get_current_joint_values()
        # 设置末端关节目标值
        right_joint_goal[7] = 0.024
        # 规划并执行路径动作
        # traj = right_arm.plan(right_joint_goal)
        # right_arm.execute(traj, wait=False)
        right_arm.go(right_joint_goal, wait=False)
        right_arm.clear_pose_targets()
        right_arm.stop()

    def left_gripper_go_to_close_goal(self):
        # 设置动作对象变量,此处为left_arm
        left_arm = self.left_arm
        # 获取当前末端执行器位置姿态
        left_joint_goal = left_arm.get_current_joint_values()
        # 设置末端关节目标值
        left_joint_goal[7] = 0
        # 规划并执行路径动作
        left_arm.go(left_joint_goal, wait=False)
        left_arm.clear_pose_targets()
        left_arm.stop()

    def left_gripper_go_to_open_goal(self):
        # 设置动作对象变量,此处为left_arm
        left_arm = self.left_arm
        # 获取当前末端执行器位置姿态
        left_joint_goal = left_arm.get_current_joint_values()
        # 设置末端关节目标值
        left_joint_goal[7] = 0.024
        # 规划并执行路径动作
        left_arm.go(left_joint_goal, wait=False)
        left_arm.clear_pose_targets()
        left_arm.stop()

    def right_arm_get_current_joint_state(self):
        # 设置动作对象变量,此处为right_arm
        right_arm = self.right_arm
        # 获取当前末端执行器位置姿态
        right_joint_goal = right_arm.get_current_joint_values()
        return right_joint_goal

    def left_arm_get_current_joint_state(self):
        # 设置动作对象变量,此处为left_arm
        left_arm = self.left_arm
        # 获取当前末端执行器位置姿态
        left_joint_goal = left_arm.get_current_joint_values()
        return left_joint_goal


def main():
    # 输入回车,执行初始化程序
    print "============ Press `Enter` to begin the tutorial by setting up the moveit_commander (press ctrl-d to exit) ..."
    raw_input()
    yumi = MoveGroupPythonInteface()
    yumi.set_scene()
    # 循环等待,执行动作程序
    print "============ Press `Enter` to begin the teleoperation ..."
    raw_input()

    while 1:
        raw_input()
        yumi.right_arm_go_to_stay_goal(0)
        raw_input()
        yumi.right_arm_go_to_pose_goal()
        raw_input()
        yumi.right_gripper_go_to_open_goal()
        # raw_input()
        # yumi.right_arm_go_down_goal()
        raw_input()
        yumi.right_gripper_go_to_close_goal()




            

if __name__ == '__main__':
    main()
