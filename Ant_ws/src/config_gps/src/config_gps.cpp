#include<ros/ros.h>
#include<assert.h>
#include<serial/serial.h>
#include <iostream>
#include<sstream>
#include<string>
 bool openSerial(serial::Serial* & port_ptr, std::string port_name,int baud_rate)
{
	try
	{
		port_ptr = new serial::Serial(port_name,baud_rate,serial::Timeout::simpleTimeout(10)); 

		if (!port_ptr->isOpen())
		{
			std::stringstream output;
			output << "Serial port: " << port_name << " failed to open." << std::endl;
			delete port_ptr;
			port_ptr = NULL;
			return false;
		} 
		else 
		{
	        std::stringstream output;
	        output << "Serial port: " << port_name << " opened successfully." << std::endl;
	        std::cout << output.str() <<std::endl;
		}

		port_ptr->flush();
	} 
	catch (std::exception &e) 
	{
	    std::stringstream output;
	    output << "Error  " << port_name << ": " << e.what();
	    std::cout << output.str() <<std::endl;
	    return false;
	}
	
	return true;
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "config_gps_node");
	serial::Serial * gps_serial_port_;
	if(openSerial( gps_serial_port_,  "/dev/ttyS1", 115200))
		std::cout<<"open ttyS1 OK"<<std::endl;
	else 
		return 0;
	std::string log_cmd = "log com1 gprmc ontime 0.05";
	gps_serial_port_->write(log_cmd + "\r\n");
	std::cout<<"log successfully : "<<log_cmd << std::endl;
	gps_serial_port_->flush();
	return 0 ;
}
