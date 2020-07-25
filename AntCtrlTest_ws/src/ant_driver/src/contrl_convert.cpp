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
		void run(int argc, char** argv);
		void cmdCallback(const std_msgs::Float32MultiArray::ConstPtr msg);
	private:
		little_ant_msgs::ControlCmd1 cmd1;
		little_ant_msgs::ControlCmd2 cmd2;
		ros::NodeHandle nh;
		ros::Subscriber sub;
		ros::Publisher cmd1_pub;
		ros::Publisher cmd2_pub;
};//class contrl_convert end


void contrl_convert::run(int argc, char** argv)
{
	ros::init(argc, argv, "contrl_convert_node");
	ros::Subscriber sub = nh.subscribe("/cmd/all", 10, &contrl_convert::cmdCallback, this);
	ros::Publisher  cmd1_pub = nh.advertise<little_ant_msgs::ControlCmd1>("controlCmd1",10);
	ros::Publisher  cmd2_pub = nh.advertise<little_ant_msgs::ControlCmd1>("controlCmd2",10);
	ros::spin();
}



void contrl_convert::cmdCallback(const std_msgs::Float32MultiArray::ConstPtr recvCmdMsg)
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
	
	cmd2.set_gear = little_ant_msgs::ControlCmd2::GEAR_DRIVE;
	cmd2.set_emergencyBrake = false;
	
	cmd2.set_roadWheelAngle  = -1 * (recvCmdMsg->data)[ROADWHEEL_RAD_INDEX];  //roadWheel_rad:CCW(+),roadWheelAngle:CCW(-)
	cmd2.set_speed = (recvCmdMsg->data)[SPEED_MS_INDEX] * MS2KMH;
	if( cmd2.set_speed == 0 )
		cmd2.set_brake = 40 ;
	else 
		cmd2.set_brake = 0;
	
	cmd1_pub.publish( cmd1 );
	cmd2_pub.publish( cmd2 );
}


int main(int argc, char** argv)
{
	contrl_convert contrl_convert_;
	contrl_convert_.run( argc, argv );
	return 0;
}

