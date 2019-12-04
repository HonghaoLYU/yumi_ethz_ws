#!/usr/bin/env python
# -*- coding: utf-8 -*-

import rospy
import cv2
import numpy as np
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
from geometry_msgs.msg import Pose2D
import math

class image_converter:
    def __init__(self):    
        # 创建cv_bridge，声明图像的发布者和订阅者
        self.image_pub = rospy.Publisher("cv_bridge_image", Image, queue_size=1)
        self.coordinate_pub = rospy.Publisher("object_coordinate", Pose2D, queue_size=1)
        self.bridge = CvBridge()
        self.image_sub = rospy.Subscriber("/kinect2/qhd/image_color_rect", Image, self.callback)

    def callback(self,data):
        # 使用cv_bridge将ROS的图像数据转换成OpenCV的图像格式
        try:
            cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
        except CvBridgeError as e:
            print e
        
        ## 裁剪原始图片
        h, w, ch = cv_image.shape
        img_trim = cv_image[240:400, 300:520]
        cv2.imshow('img_trim',img_trim)
        cv2.waitKey(2)

        ## 滤波&转换色彩空间
        img_blur1 = cv2.bilateralFilter(img_trim,9,75,75)
        img_blur2 = cv2.blur(img_blur1, (5,5))
        img_hsv = cv2.cvtColor(img_blur2, cv2.COLOR_BGR2HSV)


        ## 设定object的HSV色彩空间阈值范围
        lower_obj = np.array([59, 0, 89])
        higher_obj = np.array([131, 96, 255])

        ## 根据HSV色彩空间范围区分object和后景
        img_mask = cv2.inRange(img_hsv, lower_obj, higher_obj)
        #mask show
        cv2.imshow('mask',img_mask)
        cv2.waitKey(2)

        ## 寻找轮廓
        contours,hierarchy = cv2.findContours(img_mask, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)
        cnt = contours[0]
        #print('len',len(cnt))
        #print('cnt:',cnt)
        bg_contours = np.zeros(img_trim.shape, dtype = np.uint8)
        contours_result = cv2.drawContours(bg_contours, [cnt], 0, (0,255,0), 2)
        cv2.imshow('cnt',contours_result)
        cv2.waitKey(2)
        #cv2.destroyAllWindows()
# '''
#         ## 轮廓逼近拟合
#         epsilon = 0.01 * cv2.arcLength(cnt, True)
#         approx = cv2.approxPolyDP(cnt, epsilon, True)

#         # # ## 分析几何形状
#         # # corners =len(approx)

#         ## 绘制拟合轮廓
#         bg_approx = np.zeros(img_trim.shape, dtype=np.uint8)
#         approx_result = cv2.drawContours(bg_approx, [approx], -1, (255,0,0), 3)
# '''
        #整合tri cnt的信息
        contours_rect_info=[]
        minarearect_rect=cv2.minAreaRect(cnt)
        box = cv2.boxPoints(minarearect_rect)
        box = np.int0(box)#最小外接矩形的box
        center=(int(minarearect_rect[0][0]),int(minarearect_rect[0][1]))#外接最小矩形中心坐标(x,y)
        width_height=(int(minarearect_rect[1][0]),int(minarearect_rect[1][1]))#外接最小矩形宽、高(width,height)
        #box中的4个数据一定是y最大的为第一个，然后顺时针排列，这样导致按矩形长边角度当作矩形角度会有bug。下面修正bug
        if ((pow((box[1][1]-box[0][1]),2)+pow((box[1][0]-box[0][0]),2))>(pow((box[2][1]-box[1][1]),2)+pow((box[2][0]-box[1][0]),2))):#判断是否为2型矩形
            rotation=90+int(minarearect_rect[2])
        else:
            rotation=int(minarearect_rect[2])#外接最小矩形，图像坐标系左手系下，绕z轴顺时针的旋转角度(<90度)
        contours_rect_info.append([cnt,box,center,width_height,rotation])
        
        print('rotation:',rotation)

# '''
#         ## 求解中心位置
#         # 设定初始值
#         cx = 0
#         cy = 0
#         mm = cv2.moments(approx)
#         if mm['m00'] != 0:
#             cx = int(mm['m10']/mm['m00'])
#             cy = int(mm['m01']/mm['m00'])
#             result = cv2.circle(approx_result, (cx, cy), 3, (0,0,255), -1)
#         else:
#             pass
# '''
        # print "中心位置坐标", cx, cy 

        # img_result = approx_result
        # print cv_image.shape

        # 显示Opencv格式的图像
        # cv2.imshow("Image window", cv_image)
        # cv2.waitKey(3)
        object_pose = Pose2D()
        print('center:',contours_rect_info[0][2])
        object_pose.x = contours_rect_info[0][2][0]
        object_pose.y = contours_rect_info[0][2][1]
        object_pose.theta = contours_rect_info[0][4]

        # 再将opencv格式额数据转换成ros image格式的数据发布
        try:
            self.image_pub.publish(self.bridge.cv2_to_imgmsg(img_trim, "bgr8"))
            self.coordinate_pub.publish(object_pose)
        except CvBridgeError as e:
            print e

if __name__ == '__main__':
    try:
        # 初始化ros节点
        rospy.init_node("cv_bridge_test")
        rospy.loginfo("Starting cv_bridge_test node")

        image_converter()
        rospy.spin()
    except KeyboardInterrupt:
        print "Shutting down cv_bridge_test node."
        cv2.destroyAllWindows()