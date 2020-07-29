/* author :lc   date: 07/28 */
#include <ros/ros.h>
#include <little_ant_msgs/ControlCmd1.h>
#include <little_ant_msgs/ControlCmd2.h>
#include <std_msgs/Float32MultiArray.h>
#include <std_msgs/Float32.h>

#define MS2KMH 3.6
#define ROADWHEEL_RAD_INDEX 0
#define SPEED_MS_INDEX 1

class contrl_convert
{
	public:
		void run( ros::NodeHandle nh );
		void cmdCallback( const std_msgs::Float32MultiArray::ConstPtr& msg);
	private:
		float mSpped_kmh;
		float mRoadAngle_rd;
		//std_msgs::Float32MultiArray upperCmdMsg;
		little_ant_msgs::ControlCmd1 cmd1;
		little_ant_msgs::ControlCmd2 cmd2;
		ros::Subscriber sub;//sub
		ros::Publisher cmd1_pub;//pub
		ros::Publisher cmd2_pub;
		ros::Timer sendCmd1Timer_20ms_;//timeEvent
		ros::Timer sendCmd2Timer_10ms_;
		void sendCmd1_callback(const ros::TimerEvent&);
		void sendCmd2_callback(const ros::TimerEvent&);
};//class contrl_convert end


void contrl_convert::run(ros::NodeHandle nh)
{
	//subscribe
	sub = nh.subscribe("/cmd/all", 10, &contrl_convert::cmdCallback, this);
	//publisher
	cmd1_pub = nh.advertise<little_ant_msgs::ControlCmd1>("controlCmd1",10);
	cmd2_pub = nh.advertise<little_ant_msgs::ControlCmd2>("controlCmd2",10);
	//timeEvent
	sendCmd1Timer_20ms_ = nh.createTimer(ros::Duration(0.02), &contrl_convert::sendCmd1_callback,this);//cmd1 50Hz 20ms
	sendCmd2Timer_10ms_ = nh.createTimer(ros::Duration(0.01), &contrl_convert::sendCmd2_callback,this);//cmd2 100Hz 10ms
}



void contrl_convert::cmdCallback( const std_msgs::Float32MultiArray::ConstPtr& recvCmdMsg)
{
	mSpped_kmh = (recvCmdMsg->data)[SPEED_MS_INDEX] * MS2KMH;
	mRoadAngle_rd = -1 * (recvCmdMsg->data)[ROADWHEEL_RAD_INDEX];
	//upperCmdMsg = * (recvCmdMsg.get() );
}
void contrl_convert::sendCmd1_callback(const ros::TimerEvent& )
{
	cmd1.set_driverlessMode = true;
	cmd1.set_remoteStart = false;
	cmd1.set_handBrake = false;
	cmd1.set_turnLight_R = false;
	cmd1.set_turnLight_L = false;
	cmd1.set_lowBeam = false;
	cmd1.set_reverseLight = false;
	cmd1.set_brakeLight = false;
	cmd1.set_horn = false;
	cmd1_pub.publish( cmd1 );
}
void contrl_convert::sendCmd2_callback(const ros::TimerEvent& )
{
	cmd2.set_gear = little_ant_msgs::ControlCmd2::GEAR_DRIVE;
	cmd2.set_emergencyBrake = false;
	
	cmd2.set_roadWheelAngle  = mRoadAngle_rd;  //roadWheel_rad:CCW(+),roadWheelAngle:CCW(-)
	cmd2.set_speed = mSpped_kmh;
	//cmd2.set_roadWheelAngle = (upperCmdMsg.data)[SPEED_MS_INDEX] * MS2KMH;
	//cmd2.set_speed = -1 * (upperCmdMsg.data)[ROADWHEEL_RAD_INDEX];
	
	if( cmd2.set_speed == 0 )
		cmd2.set_brake = 40 ;
	else 
		cmd2.set_brake = 0;
	cmd2_pub.publish( cmd2 );

}
int main(int argc, char** argv)
{
	ros::init(argc, argv, "contrl_convert_node");
	contrl_convert contrl_convert_;
	ros::NodeHandle nh;
	contrl_convert_.run(nh);
	ros::spin();
	return 0;
}

