#############################
###       SunHao          ###
#############################



perception_msgs/Line[] lanes

int32 direction_mode

#############################
#int32 id
std_msgs/String uuid

#############################

std_msgs/String[] to_section_uuid
std_msgs/String[] from_section_uuid


std_msgs/String[] to_lane_uuid
std_msgs/String[] from_lane_uuid


std_msgs/String[] to_pt_uuid
std_msgs/String[] from_pt_uuid

#int32[] to_pt_id
#int32[] from_pt_id

#############################

float32 length
float32 highest_speed
float32 traffic_cost


