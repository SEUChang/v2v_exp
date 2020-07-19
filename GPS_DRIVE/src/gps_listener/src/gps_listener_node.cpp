
#include <ros/ros.h>
#include "nav_msgs/Odometry.h"


void gpsCallback(const nav_msgs::Odometry::ConstPtr& msg)
{  
    nav_msgs::Odometry ll2utm_msg;
    ll2utm_msg = *msg;
    ROS_INFO("UTC: .2f%",ll2utm_msg.twist.twist.linear.y);
    ROS_INFO("utm x : .2f%",ll2utm_msg.pose.pose.position.x);
    ROS_INFO("utm y : .2f%",ll2utm_msg.pose.pose.position.y);
    ROS_INFO("longitude : .2f%",ll2utm_msg.pose.covariance[0]);
    ROS_INFO("latitude : .2f%",ll2utm_msg.pose.covariance[1]);
    ROS_INFO("yaw (rad) : .2f",ll2utm_msg.pose.covariance[2]);
    ROS_INFO("speed vx (m/s): .2f%",ll2utm_msg.twist.twist.linear.x); 
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "gps_listener_node");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("/ll2utm_odom", 1, gpsCallback);
  ros::spin(); 
  return 0;
}
