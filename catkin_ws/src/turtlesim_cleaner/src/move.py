#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from geometry_msgs.msg import Vector3

def move():
    # Starts a new node
    rospy.init_node('turtle_move')
    velocity_publisher = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    vel_msg = Twist()
    
    #Receiveing the user's input
    print("Let's move your robot")
    isForward = input("Foward?: ")
    
    #Checking if the movement is forward or backwards
    if(isForward):
        vel_msg.linear.x = 5.5
        vel_msg.angular.z = 2
    else:
        vel_msg.linear.x = 0
        vel_msg.angular.z = 0
    #Since we are moving just in x-axis
    vel_msg.linear.y = 0
    vel_msg.linear.z = 0
    vel_msg.angular.x = 0
    vel_msg.angular.y = 0
    
    while not rospy.is_shutdown():
        velocity_publisher.publish(vel_msg)

if __name__ == '__main__':
    try:
        #Testing our function
        move()
    except rospy.ROSInterruptException: pass
