#include "acc/acc_esr.h"

Acc_esr::Acc_esr(ros::NodeHandle nh,ros::NodeHandle nh_private) :
	nh_(nh),
	nh_private_(nh_private),
	max_target_search_distance_(30.0)
{	
	vehicleSpeed_ = 0.0;
	acc_targetId_ = 0xff; 
	lastTime_of_seekTarget_ = 0.0;
}

/*bool cmp (esr_radar_msgs::Object obj1, esr_radar_msgs::Object obj2)
{
	return obj1.distance < obj2.distance;
}*/

bool Acc_esr::init()
{
	sub_esrObjects_ = nh_.subscribe("/esr_objects",2,&Acc_esr::object_callback,this);
	mPub_FrontCarInfo = nh_.advertise<sensor_msgs::Range>("/frontCarInfo_tpk",2);
	nh_private_.param<float>("target_search_angle_range",trackTargetAngle_range_,1.0);
	nh_private_.param<float>("max_target_search_distance", max_target_search_distance_,15);
	updateTargetStatus_timer_ = nh_.createTimer(ros::Duration(0.05),&Acc_esr::updateTargetStatus_callback,this);
}

void Acc_esr::run()
{
	ros::spin();
}

void Acc_esr::object_callback(const esr_radar::ObjectArray::ConstPtr& objects)
{
	if(acc_targetId_==0xff) //no track target
	{
		float min_distance=500.0; //a big num	
		potentialTarget_num_=0; 
		
		for(size_t i=0;i< objects->size;i++)
		{
			//ROS_INFO("angle:%f  anglerange:%f",objects->objects[i].azimuth,trackTargetAngle_range_);
			if((objects->objects[i].azimuth <trackTargetAngle_range_) &&
				(objects->objects[i].azimuth >-trackTargetAngle_range_)&&
				objects->objects[i].distance <= max_target_search_distance_  ) //&& objects->objects[i].speed + vehicleSpeed_ > 0.5
			{
				potentialTarget_index_[potentialTarget_num_++] = i; 
				//mPotentialObjects[potentialTarget_num_++] = objects->objects[i];
			}
		}
		//ROS_INFO("objects->size:%d \tpotentialTarget_num_:%d",objects->size,potentialTarget_num_);
		/*lc begin
		if(potentialTarget_num_ ) 
		{
			sort(mPotentialObjects, mPotentialObjects + potentialTarget, cmp);
			min_distance = mPotentialObjects[0].distance;
			acc_targetId_ = mPotentialObjects[0].id;
		}
		by lc end*/

		for(size_t i=0;i<potentialTarget_num_;i++)
		{
			ROS_INFO("potential target: [distance:%f  azimuth:%f]",
				objects->objects[potentialTarget_index_[i]].distance,
				objects->objects[potentialTarget_index_[i]].azimuth);
				
			if(objects->objects[potentialTarget_index_[i]].distance < min_distance)
			{
				min_distance = objects->objects[potentialTarget_index_[i]].distance;
				acc_targetId_ = objects->objects[potentialTarget_index_[i]].id;
			}
		}
	}
	else
	{
		for(size_t i=0;i<objects->size;i++)
		{
			if(objects->objects[i].id == acc_targetId_ && objects->objects[i].status != 1)  //!=newTarget
			{
				trackTargetMsg_ = objects->objects[i];
				ROS_INFO("target Id:%x  angle:%f  distance:%f speed:%f",
							trackTargetMsg_.id,trackTargetMsg_.azimuth,trackTargetMsg_.distance,trackTargetMsg_.speed);
				
				lastTime_of_seekTarget_ = ros::Time::now().toSec();
				//by lc
				sensor_msgs::Range FrontCarInfo;
				FrontCarInfo.min_range = trackTargetMsg_.azimuth;
				FrontCarInfo.max_range = trackTargetMsg_.distance;
				mPub_FrontCarInfo.publish(FrontCarInfo);
				//by lc
				break;
			}
			else if(objects->objects[i].id == acc_targetId_ && objects->objects[i].status == 1)
			{
				this->setTrackTargetLost();
				break;
			}
		}
	}
}

void Acc_esr::updateTargetStatus_callback(const ros::TimerEvent&)
{
	if(/*is_acc_ &&*/ (acc_targetId_!=0xff) && 
		(ros::Time::now().toSec()-lastTime_of_seekTarget_)>0.2 && 
		lastTime_of_seekTarget_ >10.0) //overtime
	{
		this->setTrackTargetLost();
	}
}

inline void Acc_esr::setTrackTargetLost()
{
	acc_targetId_ = 0xff;
	ROS_ERROR("acc target lost!!!");
	lastTime_of_seekTarget_ = 0.0;
}

int main(int argc,char ** argv)
{
	ros::init(argc,argv,"acc_node");
	ros::NodeHandle nh;
	ros::NodeHandle nh_private("~");
	
	Acc_esr acc(nh,nh_private);
	if(acc.init())
		acc.run();
	
	return 0;
}