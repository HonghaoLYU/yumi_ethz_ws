#!/usr/bin/env python
# coding=UTF-8
# Author: Honghao Lv limit the worksapce for small motion step control

import sys
import copy
import rospy
import time
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi
from std_msgs.msg import String, Header
from std_msgs.msg import Float64MultiArray
from moveit_msgs.msg import JointConstraint, OrientationConstraint, PositionConstraint, JointLimits, Constraints
from datamessage.msg import bend
from moveit_commander.conversions import pose_to_list
from tf.transformations import euler_from_quaternion, quaternion_from_euler
from geometry_msgs.msg import PoseStamped
from joint_state import return_joint_state

# 全局变量定义以及赋值
Neurondata = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
Rightfinger = 0
Leftfinger = 0
RightfingerT = 0
LeftfingerT = 0
Leftarm_x = 0
Leftarm_y = 0

# 定义回调函数,订阅接受到的消息传给data
def Neuron_callback(data):
    # 对全局变量进行赋值
    global Neurondata
    global Right_Eux, Right_Euy, Right_Euz, Left_Eux, Left_Euy, Left_Euz
    global Right_Qux, Right_Quy, Right_Quz, Right_Quw, Left_Qux, Left_Quy, Left_Quz, Left_Quw
    global Leftarm_x, Leftarm_y
    Neurondata = data.data
    Right_Euy = Neurondata[0]
    Right_Eux = Neurondata[1]
    Right_Euz = Neurondata[2]
    Left_Euy = Neurondata[6]
    Left_Eux = Neurondata[7]
    Left_Euz = Neurondata[8]
    (Right_Qux, Right_Quy, Right_Quz, Right_Quw) = quaternion_from_euler(Right_Euz, -Right_Eux, Right_Euy)
    (Left_Qux, Left_Quy, Left_Quz, Left_Quw) = quaternion_from_euler(Left_Euz, -Left_Eux, Left_Euy)
    Leftarm_x = Neurondata[11]
    Leftarm_y = Neurondata[9]

# 定义回调函数,订阅接受到的消息传给data
def Glove_callback(data):
    # 对全局变量进行赋值
    global Rightfinger, Leftfinger, RightfingerT, LeftfingerT
    Rightfinger = round(data.RI,3)
    Leftfinger = round(data.LI,3)
    RightfingerT = round(data.RT,3)
    LeftfingerT = round(data.LT,3)


class MoveGroupPythonInteface(object):
    def __init__(self):
        super(MoveGroupPythonInteface, self).__init__()

        # 初始化 `moveit_commander`_ and a `rospy`_ node:
        moveit_commander.roscpp_initialize(sys.argv)
        rospy.init_node('move_group_python_interface',anonymous=True)

        # 订阅话题
        rospy.Subscriber('yumiaction', Float64MultiArray, Neuron_callback)
        rospy.Subscriber('dataglove', bend, Glove_callback)

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
        # self.eef_link = eef_link
        self.group_names = group_names


    def right_arm_go_to_pose_goal(self):
        # 设置动作对象变量,此处为arm
        right_arm = self.right_arm

        # 获取当前末端执行器位置姿态
        pose_goal = right_arm.get_current_pose().pose

        # 限制末端夹具运动
        right_joint_const = JointConstraint()
        right_joint_const.joint_name = "gripper_r_joint_r"
        if Rightfinger > -55 :
            right_joint_const.position = 0.024
        else:
            right_joint_const.position = 0
        right_joint_const.weight = 1.0

        # 限制1轴转动
        right_joint1_const = JointConstraint()
        right_joint1_const.joint_name = "yumi_joint_1_r"
        right_joint1_const.position = 0
        right_joint1_const.tolerance_above = 120
        right_joint1_const.tolerance_below = 0
        right_joint1_const.weight = 1.0

        # 限制2轴转动
        right_joint2_const = JointConstraint()
        right_joint2_const.joint_name = "yumi_joint_2_r"
        right_joint2_const.position = 0
        right_joint2_const.tolerance_above = 0
        right_joint2_const.tolerance_below = 150
        right_joint2_const.weight = 1.0

        # 限制3轴转动
        right_joint3_const = JointConstraint()
        right_joint3_const.joint_name = "yumi_joint_3_r"
        right_joint3_const.position = 0
        right_joint3_const.tolerance_above = 35
        right_joint3_const.tolerance_below = 55
        right_joint3_const.weight = 1.0

        # 限制4轴转动
        right_joint4_const = JointConstraint()
        right_joint4_const.joint_name = "yumi_joint_4_r"
        right_joint4_const.position = 0
        right_joint4_const.tolerance_above = 60
        right_joint4_const.tolerance_below = 75
        right_joint4_const.weight = 1.0

        # 限制5轴转动
        right_joint5_const = JointConstraint()
        right_joint5_const.joint_name = "yumi_joint_5_r"
        right_joint5_const.position = 40
        right_joint5_const.tolerance_above = 50
        right_joint5_const.tolerance_below = 20
        right_joint5_const.weight = 1.0

        # 限制6轴转动
        right_joint6_const = JointConstraint()
        right_joint6_const.joint_name = "yumi_joint_6_r"
        right_joint6_const.position = 0
        right_joint6_const.tolerance_above = 10
        right_joint6_const.tolerance_below = 35
        right_joint6_const.weight = 1.0

        # 限制7轴转动
        right_joint7_const = JointConstraint()
        right_joint7_const.joint_name = "yumi_joint_7_r"
        right_joint7_const.position = -10
        right_joint7_const.tolerance_above = 0
        right_joint7_const.tolerance_below = 160
        right_joint7_const.weight = 1.0

        # 限制末端位移
        right_position_const = PositionConstraint()
        right_position_const.header = Header()
        right_position_const.link_name = "gripper_r_joint_r"
        right_position_const.target_point_offset.x = 0.5
        right_position_const.target_point_offset.y = -0.5
        right_position_const.target_point_offset.z = 1.0
        right_position_const.weight = 1.0

        # 添加末端姿态约束:
        right_orientation_const = OrientationConstraint()
        right_orientation_const.header = Header()
        right_orientation_const.orientation = pose_goal.orientation
        right_orientation_const.link_name = "gripper_r_finger_r"
        right_orientation_const.absolute_x_axis_tolerance = 0.50
        right_orientation_const.absolute_y_axis_tolerance = 0.25
        right_orientation_const.absolute_z_axis_tolerance = 0.50
        right_orientation_const.weight = 100

        # 施加全约束
        consts = Constraints()
        consts.joint_constraints = [right_joint_const]
        # consts.orientation_constraints = [right_orientation_const]
        # consts.position_constraints = [right_position_const]
        right_arm.set_path_constraints(consts)

        # 设置动作对象目标位置姿态
        pose_goal.orientation.x = Right_Qux
        pose_goal.orientation.y = Right_Quy
        pose_goal.orientation.z = Right_Quz
        pose_goal.orientation.w = Right_Quw
        pose_goal.position.x = (Neurondata[5]-0.05)*1.48+0.053
        pose_goal.position.y = (Neurondata[3]+0.18)*1.48-0.12
        pose_goal.position.z = (Neurondata[4]-0.53)*1.48+0.47
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

    def left_arm_go_to_pose_goal(self):
        # 设置动作对象变量,此处为arm
        left_arm = self.left_arm

        # 获取当前末端执行器位置姿态
        pose_goal = left_arm.get_current_pose().pose

        # 限制末端夹具运动
        left_joint_const = JointConstraint()
        left_joint_const.joint_name = "gripper_l_joint_r"
        # if Leftfinger > -60 :
        #     left_joint_const.position = 0.024
        # else:
        left_joint_const.position = 0
        left_joint_const.weight = 1.0

        # 施加全约束
        consts = Constraints()
        consts.joint_constraints = [left_joint_const]
        # consts.orientation_constraints = [left_orientation_const]
        # consts.position_constraints = [left_position_const]
        left_arm.set_path_constraints(consts)

        # 设置动作对象目标位置姿态
        pose_goal.orientation.x = -0.626215011187053
        pose_goal.orientation.y = -0.4552380340595104
        pose_goal.orientation.z =  -0.48010690496799074
        pose_goal.orientation.w = 0.4124444834298159
        pose_goal.position.x = (Neurondata[11]-0.05)*1.48+0.053
        pose_goal.position.y = (Neurondata[9]-0.18)*1.48+0.12
        pose_goal.position.z = (Neurondata[10]-0.53)*1.48+0.47
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

    def both_arms_go_to_pose_goal(self):
        # 设置动作对象变量,此处为both_arms
        both_arms = self.both_arms
        # 获取当前各轴转角
        axis_angle = both_arms.get_current_joint_values()
        # print axis_angle
        # 获取当前末端执行器位置姿态
        right_pose_goal = both_arms.get_current_pose(end_effector_link="gripper_r_finger_r")
        left_pose_goal = both_arms.get_current_pose(end_effector_link="gripper_l_finger_r")
        print right_pose_goal
        # 限制末端夹具运动
        right_joint_const = JointConstraint()
        right_joint_const.joint_name = "gripper_r_joint_r"
        if Rightfinger > -55 :
            right_joint_const.position = 0.024
        else:
            right_joint_const.position = 0
        left_joint_const = JointConstraint()
        left_joint_const.joint_name = "gripper_l_joint_r"
        if Leftfinger > -32 :
            left_joint_const.position = 0.024
        else:
            left_joint_const.position = 0
        # 添加右臂末端姿态约束:
        right_orientation_const = OrientationConstraint()
        right_orientation_const.header = Header()
        right_orientation_const.orientation = right_pose_goal.pose.orientation
        right_orientation_const.link_name = "gripper_r_joint_r"
        right_orientation_const.absolute_x_axis_tolerance = 0.6
        right_orientation_const.absolute_y_axis_tolerance = 0.6
        right_orientation_const.absolute_z_axis_tolerance = 0.6
        right_orientation_const.weight = 1
        # 添加左臂末端姿态约束:
        left_orientation_const = OrientationConstraint()
        left_orientation_const.header = Header()
        left_orientation_const.orientation = left_pose_goal.pose.orientation
        left_orientation_const.link_name = "gripper_l_joint_r"
        left_orientation_const.absolute_x_axis_tolerance = 0.6
        left_orientation_const.absolute_y_axis_tolerance = 0.6
        left_orientation_const.absolute_z_axis_tolerance = 0.6
        left_orientation_const.weight = 1
        # 施加全约束 
        consts = Constraints()
        consts.joint_constraints = [right_joint_const, left_joint_const]
        # consts.orientation_constraints = [right_orientation_const, left_orientation_const]
        both_arms.set_path_constraints(consts)
        # 右臂目标位姿设置
        right_pose_goal.pose.orientation.x = Right_Qux
        right_pose_goal.pose.orientation.y = Right_Quy
        right_pose_goal.pose.orientation.z = Right_Quz 
        right_pose_goal.pose.orientation.w = Right_Quw
        right_pose_goal.pose.position.x = (Neurondata[5]-0.05)*1.48+0.053
        right_pose_goal.pose.position.y = (Neurondata[3]+0.18)*1.48-0.12
        right_pose_goal.pose.position.z = (Neurondata[4]-0.53)*1.48+0.47
        # 左臂目标位姿设置
        left_pose_goal.pose.orientation.x = Left_Qux
        left_pose_goal.pose.orientation.y = Left_Quy
        left_pose_goal.pose.orientation.z = Left_Quz
        left_pose_goal.pose.orientation.w = Left_Quw
        left_pose_goal.pose.position.x = (Neurondata[11]-0.05)*1.48+0.053
        left_pose_goal.pose.position.y = (Neurondata[9]-0.18)*1.48+0.12
        left_pose_goal.pose.position.z = (Neurondata[10]-0.53)*1.48+0.47
        # 设置动作组的两个目标点
        both_arms.set_pose_target(right_pose_goal, end_effector_link="gripper_r_finger_r")
        both_arms.set_pose_target(left_pose_goal, end_effector_link="gripper_l_finger_r")
        # 规划和输出动作
        traj = both_arms.plan()
        both_arms.execute(traj, wait=False)
        # # 清除路径约束
        both_arms.clear_path_constraints()
        # 确保输出停止
        both_arms.stop()

    def right_arm_go_to_joint_goal(self, jointnum):
        # 设置动作对象变量,此处为right_arm
        right_arm = self.right_arm
        # 获取当前末端执行器位置姿态
        right_joint_goal = right_arm.get_current_joint_values()
        print right_joint_goal
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

    def left_arm_go_to_joint_goal(self, jointnum):
        # 设置动作对象变量,此处为right_arm
        left_arm = self.left_arm
        # 获取当前末端执行器位置姿态
        left_joint_goal = left_arm.get_current_joint_values()
        # 设置末端关节目标值
        armnum = 'left_arm'
        left_joint_goal[0] = return_joint_state(armnum,jointnum)[0]
        left_joint_goal[1] = return_joint_state(armnum,jointnum)[1]
        left_joint_goal[2] = return_joint_state(armnum,jointnum)[2]
        left_joint_goal[3] = return_joint_state(armnum,jointnum)[3]
        left_joint_goal[4] = return_joint_state(armnum,jointnum)[4]
        left_joint_goal[5] = return_joint_state(armnum,jointnum)[5]
        left_joint_goal[6] = return_joint_state(armnum,jointnum)[6]
        print "End effector joint goal %s" % left_joint_goal
        # 规划并执行路径动作
        left_arm.go(left_joint_goal, wait=False)
        left_arm.stop()
    
    def left_arm_change_x_judge(self):
        global Leftarm_x_pre
        if Leftarm_x < 0.45 :
            if Leftarm_x_pre < 0.45 :
                pass
            else :
                Leftarm_x_pre = Leftarm_x
                print Leftarm_x
                print "changedx"
                self.left_arm_go_to_joint_goal(1)
        else :
            if Leftarm_x_pre >= 0.45 :
                pass
            else :
                Leftarm_x_pre = Leftarm_x
                print Leftarm_x
                print "changedx"
                self.left_arm_go_to_joint_goal(0)

    def left_arm_change_y_judge(self):
        global Leftarm_y_pre
        if Leftarm_y < 0.05 :
            if Leftarm_y_pre < 0.05 :
                pass
            else :
                Leftarm_y_pre = Leftarm_y
                print Leftarm_y
                print "changedy"
                self.left_arm_go_to_joint_goal(3)
        else :
            if Leftarm_y_pre >= 0.05 :
                pass
            else :
                Leftarm_y_pre = Leftarm_y
                print Leftarm_y
                print "changedy"
                self.left_arm_change_x_judge()

    def right_gripper_go_to_pose_goal(self):
        # 设置动作对象变量,此处为both_arms
        right_arm = self.right_arm
        # 获取当前末端执行器位置姿态
        right_joint_goal = right_arm.get_current_joint_values()
        # 设置末端关节目标值
        print Rightfinger
        if Rightfinger >= -60 :
            right_joint_goal[7] = 0.0236
        else:
            right_joint_goal[7] = 0
        # 规划并执行路径动作
        right_arm.go(right_joint_goal, wait=False)
        right_arm.stop()

    def left_gripper_go_to_pose_goal(self):
        # 设置动作对象变量,此处为both_arms
        left_arm = self.left_arm
        # 获取当前末端执行器位置姿态
        left_joint_goal = left_arm.get_current_joint_values()
        # 设置末端关节目标值
        print Leftfinger
        if Leftfinger > -60 :
            left_joint_goal[7] = 0.0236
        else:
            left_joint_goal[7] = 0
        # 规划并执行路径动作
        left_arm.go(left_joint_goal, wait=False)
        left_arm.stop()

    def right_finger_change_judge(self):
        global Rightfinger_pre
        if Rightfinger < -60:
            if Rightfinger_pre < -60:
                pass
            else :
                Rightfinger_pre = Rightfinger
                print "changed"
                self.right_gripper_go_to_pose_goal()
        else :
            if Rightfinger_pre >= -60 :
                pass
            else :
                Rightfinger_pre = Rightfinger
                print "changed"
                self.right_gripper_go_to_pose_goal()

    def left_finger_change_judge(self):
        global Leftfinger_pre
        if Leftfinger < -60 :
            if Leftfinger_pre < -60 :
                pass
            else :
                Leftfinger_pre = Leftfinger
                print "changed"
                self.left_gripper_go_to_pose_goal()
        else :
            if Leftfinger_pre >= -60 :
                pass
            else :
                Leftfinger_pre = Leftfinger
                print "changed"
                self.left_gripper_go_to_pose_goal()

    def right_fingerT_wait_judge(self):
        while 1:
            time.sleep(1)
            print "wait"
            print RightfingerT
            if RightfingerT < -10:
                print "ok"
                break

    def left_fingerT_wait_judge(self):
        while 1:
            time.sleep(1)
            print "wait"
            print LeftfingerT
            if LeftfingerT < -10:
                print "ok"
                break


def main():
    global Rightfinger_pre, Leftfinger_pre
    Rightfinger_pre = Rightfinger
    Leftfinger_pre = Leftfinger

    global Leftarm_x_pre, Leftarm_y_pre
    Leftarm_x_pre = Leftarm_x
    Leftarm_y_pre = Leftarm_y

    # 输入回车,执行初始化程序
    print "============ Press `Enter` to begin the tutorial by setting up the moveit_commander (press ctrl-d to exit) ..."
    raw_input()
    yumi = MoveGroupPythonInteface()
    # 循环等待,执行动作程序
    print "============ Press `Enter` to begin the teleoperation ..."
    raw_input()

    while 1:   
        # raw_input()   
        yumi.left_arm_change_x_judge()
        # yumi.left_arm_change_y_judge()


if __name__ == '__main__':
    main()
