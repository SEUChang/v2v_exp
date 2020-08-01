#ifndef ACC_ESR_H_ 
#define ACC_ESR_H_ 
#include<ros/ros.h>
#include<std_msgs/Bool.h>
#include<sensor_msgs/Range.h>
#include<boost/bind.hpp>
#include<boost/thread.hpp>
#include <esr_radar/Object.h>
#include <esr_radar/ObjectArray.h>
#include<std_msgs/Bool.h>
//#include<ant_math/ant_math.h>
#include<std_msgs/UInt8.h>

class Acc_esr
{
public:
	Acc_esr(ros::NodeHandle nh,ros::NodeHandle nh_private);
	~Acc_esr(){};
	
	//void vehicleSpeed_callback(const little_ant_msgs::State2::ConstPtr& msg);
	void object_callback(const esr_radar::ObjectArray::ConstPtr& objects);
	//void is_acc_callback(const std_msgs::Bool::ConstPtr& state);
	void updateTargetStatus_callback(const ros::TimerEvent&);
	//void carFollowRequest_callback(const esr_radar_msgs::Objects::ConstPtr& msg);
	//void carFollowThread();
	
	bool init();
	void run();

private:
	//void publishCarFollowingStats(bool status);
	void setTrackTargetLost();
	//bool cmp (esr_radar_msgs::Object obj1, esr_radar_msgs::Object obj2);
	
private:
	ros::NodeHandle nh_;
	ros::NodeHandle nh_private_;
	
	ros::Subscriber sub_esrObjects_;
	//ros::Subscriber sub_vehicleSpeed_;
	//ros::Subscriber sub_start_acc_;
	//ros::Subscriber sub_carFollow_request_;
	
	ros::Publisher mPub_FrontCarInfo;
	
	//ros::Publisher pub_car_follow_response_;
	//ros::Publisher pub_cmd_;
	ros::Timer updateTargetStatus_timer_;
	
	//little_ant_msgs::ControlCmd cmd_;
	
	float vehicleSpeed_;
	float keeping_distance_;
	bool is_acc_;
	uint8_t acc_targetId_;
	uint8_t acc_targetIndex_;
	esr_radar::Object trackTargetMsg_;
	//esr_radar_msgs::Object mPotentialObjects[64];
	uint8_t potentialTarget_index_[64];
	uint8_t potentialTarget_num_;
	
	float trackTargetAngle_range_;
	
	double lastTime_of_seekTarget_;
	
	//float max_following_speed_;
	
	float max_target_search_distance_;


	
};



#endif






