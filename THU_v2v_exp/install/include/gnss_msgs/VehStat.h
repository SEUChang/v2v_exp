// Generated by gencpp from file gnss_msgs/VehStat.msg
// DO NOT EDIT!


#ifndef GNSS_MSGS_MESSAGE_VEHSTAT_H
#define GNSS_MSGS_MESSAGE_VEHSTAT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/PoseStamped.h>

namespace gnss_msgs
{
template <class ContainerAllocator>
struct VehStat_
{
  typedef VehStat_<ContainerAllocator> Type;

  VehStat_()
    : utm_x(0.0)
    , utm_y(0.0)
    , utm_z(0.0)
    , speed_kmh(0.0)
    , speed_ms(0.0)
    , heading_ori(0.0)
    , heading_rad(0.0)
    , heading_deg(0.0)
    , gnss_status(0)
    , pose()  {
    }
  VehStat_(const ContainerAllocator& _alloc)
    : utm_x(0.0)
    , utm_y(0.0)
    , utm_z(0.0)
    , speed_kmh(0.0)
    , speed_ms(0.0)
    , heading_ori(0.0)
    , heading_rad(0.0)
    , heading_deg(0.0)
    , gnss_status(0)
    , pose(_alloc)  {
  (void)_alloc;
    }



   typedef double _utm_x_type;
  _utm_x_type utm_x;

   typedef double _utm_y_type;
  _utm_y_type utm_y;

   typedef double _utm_z_type;
  _utm_z_type utm_z;

   typedef double _speed_kmh_type;
  _speed_kmh_type speed_kmh;

   typedef double _speed_ms_type;
  _speed_ms_type speed_ms;

   typedef double _heading_ori_type;
  _heading_ori_type heading_ori;

   typedef double _heading_rad_type;
  _heading_rad_type heading_rad;

   typedef double _heading_deg_type;
  _heading_deg_type heading_deg;

   typedef int32_t _gnss_status_type;
  _gnss_status_type gnss_status;

   typedef  ::geometry_msgs::PoseStamped_<ContainerAllocator>  _pose_type;
  _pose_type pose;





  typedef boost::shared_ptr< ::gnss_msgs::VehStat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_msgs::VehStat_<ContainerAllocator> const> ConstPtr;

}; // struct VehStat_

typedef ::gnss_msgs::VehStat_<std::allocator<void> > VehStat;

typedef boost::shared_ptr< ::gnss_msgs::VehStat > VehStatPtr;
typedef boost::shared_ptr< ::gnss_msgs::VehStat const> VehStatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_msgs::VehStat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_msgs::VehStat_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gnss_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'gnss_msgs': ['/home/sunhao/wild/src/gnss_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gnss_msgs::VehStat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_msgs::VehStat_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_msgs::VehStat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_msgs::VehStat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_msgs::VehStat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_msgs::VehStat_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_msgs::VehStat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9a7b573b6cfdb4756f9721c428469112";
  }

  static const char* value(const ::gnss_msgs::VehStat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9a7b573b6cfdb475ULL;
  static const uint64_t static_value2 = 0x6f9721c428469112ULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_msgs::VehStat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_msgs/VehStat";
  }

  static const char* value(const ::gnss_msgs::VehStat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_msgs::VehStat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#############################\n\
###       SunHao          ###\n\
#############################\n\
\n\
#  pose and speed\n\
\n\
\n\
float64 utm_x\n\
float64 utm_y\n\
float64 utm_z\n\
\n\
\n\
float64 speed_kmh\n\
float64 speed_ms\n\
float64 heading_ori\n\
float64 heading_rad\n\
float64 heading_deg\n\
\n\
int32 gnss_status\n\
\n\
\n\
geometry_msgs/PoseStamped pose\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseStamped\n\
# A Pose with reference coordinate frame and timestamp\n\
Header header\n\
Pose pose\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
";
  }

  static const char* value(const ::gnss_msgs::VehStat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_msgs::VehStat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.utm_x);
      stream.next(m.utm_y);
      stream.next(m.utm_z);
      stream.next(m.speed_kmh);
      stream.next(m.speed_ms);
      stream.next(m.heading_ori);
      stream.next(m.heading_rad);
      stream.next(m.heading_deg);
      stream.next(m.gnss_status);
      stream.next(m.pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehStat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_msgs::VehStat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_msgs::VehStat_<ContainerAllocator>& v)
  {
    s << indent << "utm_x: ";
    Printer<double>::stream(s, indent + "  ", v.utm_x);
    s << indent << "utm_y: ";
    Printer<double>::stream(s, indent + "  ", v.utm_y);
    s << indent << "utm_z: ";
    Printer<double>::stream(s, indent + "  ", v.utm_z);
    s << indent << "speed_kmh: ";
    Printer<double>::stream(s, indent + "  ", v.speed_kmh);
    s << indent << "speed_ms: ";
    Printer<double>::stream(s, indent + "  ", v.speed_ms);
    s << indent << "heading_ori: ";
    Printer<double>::stream(s, indent + "  ", v.heading_ori);
    s << indent << "heading_rad: ";
    Printer<double>::stream(s, indent + "  ", v.heading_rad);
    s << indent << "heading_deg: ";
    Printer<double>::stream(s, indent + "  ", v.heading_deg);
    s << indent << "gnss_status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gnss_status);
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::PoseStamped_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_MSGS_MESSAGE_VEHSTAT_H
