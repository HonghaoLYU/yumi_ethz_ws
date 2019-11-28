#!/usr/bin/env python
# -*- coding: utf-8 -*-
import cv2
import numpy as np



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
        img_trim = cv_image[200:440, 250:570]

        ## 滤波&转换色彩空间
        img_blur1 = cv2.bilateralFilter(img_trim,9,75,75)
        img_blur2 = cv2.blur(img_blur1, (5,5))
        img_hsv = cv2.cvtColor(img_blur2, cv2.COLOR_BGR2HSV)
        #定义窗口名称
        winName='Colors of the rainbow'
        winNamebar='hsv'
        #定义滑动条回调函数，此处pass用作占位语句保持程序结构的完整性
        def nothing(x):
            pass

        #新建窗口
        cv2.namedWindow(winNamebar)
        img = np.zeros((40,400,3), np.uint8)#为了能显示trackbar
        #新建6个滑动条，表示颜色范围的上下边界，这里滑动条的初始化位置即为黄色的颜色范围
        cv2.createTrackbar('LowerbH',winNamebar,0,180,nothing)
        cv2.createTrackbar('UpperbH',winNamebar,0,180,nothing)
        cv2.createTrackbar('LowerbS',winNamebar,0,255,nothing)
        cv2.createTrackbar('UpperbS',winNamebar,0,255,nothing)
        cv2.createTrackbar('LowerbV',winNamebar,0,255,nothing)
        cv2.createTrackbar('UpperbV',winNamebar,0,255,nothing)
        while(1):
            #函数cv2.getTrackbarPos()范围当前滑块对应的值
            lowerbH=cv2.getTrackbarPos('LowerbH',winNamebar)
            upperbH=cv2.getTrackbarPos('UpperbH',winNamebar)
            lowerbS=cv2.getTrackbarPos('LowerbS',winNamebar)
            upperbS=cv2.getTrackbarPos('UpperbS',winNamebar)
            lowerbV=cv2.getTrackbarPos('LowerbV',winNamebar)
            upperbV=cv2.getTrackbarPos('UpperbV',winNamebar)
            lower_obj = np.array([lowerbH,lowerbS,lowerbV])
            upper_obj = np.array([upperbH,upperbS,upperbV])
            #得到目标颜色的二值图像，用作cv2.bitwise_and()的掩模
            img_target=cv2.inRange(img_hsv,lower_obj,upper_obj)
            #img_target=cv2.bitwise_not(img_target)
            #输入图像与输入图像在掩模条件下按位与，得到掩模范围内的原图像
            img_specifiedColor=cv2.bitwise_and(img_blur2,img_blur2,mask=img_target)
            #cv2.imshow(winName,img_specifiedColor)
            cv2.imshow(winNamebar,img)#trackbar和被调整的图片显示在不同窗口
            cv2.imshow('mask',img_target)
            cv2.imshow(winName,img_specifiedColor)
            if cv2.waitKey(1)==ord('q'):
                break
        cv2.destroyAllWindows()

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