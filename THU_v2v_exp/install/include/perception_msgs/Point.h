// Generated by gencpp from file perception_msgs/Point.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_POINT_H
#define PERCEPTION_MSGS_MESSAGE_POINT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>

namespace perception_msgs
{
template <class ContainerAllocator>
struct Point_
{
  typedef Point_<ContainerAllocator> Type;

  Point_()
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , s(0.0)
    , cuv(0.0)
    , heading(0.0)
    , speed(0.0)
    , speedkmh(0.0)
    , rtk_mode(0)
    , driving_mode(0)
    , special_mode(0)
    , obs_search_strategy(0)
    , speed_mode(0)
    , obs_strategy(0)
    , follow_strategy(0)
    , cross_option(0)
    , reserved_option(0)
    , uuid()
    , lane_uuid()
    , section_uuid()  {
    }
  Point_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)
    , z(0.0)
    , s(0.0)
    , cuv(0.0)
    , heading(0.0)
    , speed(0.0)
    , speedkmh(0.0)
    , rtk_mode(0)
    , driving_mode(0)
    , special_mode(0)
    , obs_search_strategy(0)
    , speed_mode(0)
    , obs_strategy(0)
    , follow_strategy(0)
    , cross_option(0)
    , reserved_option(0)
    , uuid(_alloc)
    , lane_uuid(_alloc)
    , section_uuid(_alloc)  {
  (void)_alloc;
    }



   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _s_type;
  _s_type s;

   typedef double _cuv_type;
  _cuv_type cuv;

   typedef double _heading_type;
  _heading_type heading;

   typedef double _speed_type;
  _speed_type speed;

   typedef double _speedkmh_type;
  _speedkmh_type speedkmh;

   typedef int32_t _rtk_mode_type;
  _rtk_mode_type rtk_mode;

   typedef int32_t _driving_mode_type;
  _driving_mode_type driving_mode;

   typedef int32_t _special_mode_type;
  _special_mode_type special_mode;

   typedef int32_t _obs_search_strategy_type;
  _obs_search_strategy_type obs_search_strategy;

   typedef int32_t _speed_mode_type;
  _speed_mode_type speed_mode;

   typedef int32_t _obs_strategy_type;
  _obs_strategy_type obs_strategy;

   typedef int32_t _follow_strategy_type;
  _follow_strategy_type follow_strategy;

   typedef int32_t _cross_option_type;
  _cross_option_type cross_option;

   typedef int32_t _reserved_option_type;
  _reserved_option_type reserved_option;

   typedef  ::std_msgs::String_<ContainerAllocator>  _uuid_type;
  _uuid_type uuid;

   typedef  ::std_msgs::String_<ContainerAllocator>  _lane_uuid_type;
  _lane_uuid_type lane_uuid;

   typedef  ::std_msgs::String_<ContainerAllocator>  _section_uuid_type;
  _section_uuid_type section_uuid;





  typedef boost::shared_ptr< ::perception_msgs::Point_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::Point_<ContainerAllocator> const> ConstPtr;

}; // struct Point_

typedef ::perception_msgs::Point_<std::allocator<void> > Point;

typedef boost::shared_ptr< ::perception_msgs::Point > PointPtr;
typedef boost::shared_ptr< ::perception_msgs::Point const> PointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::Point_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::Point_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'perception_msgs': ['/home/sunhao/wild/src/perception_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Point_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Point_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Point_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Point_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Point_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Point_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::Point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bccfec239a88b4161680fb692e3d84e6";
  }

  static const char* value(const ::perception_msgs::Point_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbccfec239a88b416ULL;
  static const uint64_t static_value2 = 0x1680fb692e3d84e6ULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::Point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/Point";
  }

  static const char* value(const ::perception_msgs::Point_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::Point_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#############################\n\
###       SunHao          ###\n\
#############################\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 s\n\
float64 cuv\n\
float64 heading\n\
float64 speed\n\
float64 speedkmh\n\
\n\
############################\n\
\n\
\n\
int32 rtk_mode # 0: 无影响 1： Not rtk stop\n\
int32 driving_mode # acc or collision avoidance\n\
int32 special_mode  #\n\
\n\
####################################33\n\
int32 obs_search_strategy  # 0: donot search obs\n\
int32 speed_mode  #\n\
int32 obs_strategy  #\n\
int32 follow_strategy  #\n\
int32 cross_option  #\n\
int32 reserved_option  #\n\
\n\
\n\
\n\
############################\n\
\n\
#int32 id\n\
std_msgs/String uuid\n\
\n\
#############################\n\
\n\
#int32 line_id\n\
std_msgs/String lane_uuid\n\
\n\
#############################\n\
\n\
#int32 section_id\n\
std_msgs/String section_uuid\n\
\n\
\n\
\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
";
  }

  static const char* value(const ::perception_msgs::Point_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::Point_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.s);
      stream.next(m.cuv);
      stream.next(m.heading);
      stream.next(m.speed);
      stream.next(m.speedkmh);
      stream.next(m.rtk_mode);
      stream.next(m.driving_mode);
      stream.next(m.special_mode);
      stream.next(m.obs_search_strategy);
      stream.next(m.speed_mode);
      stream.next(m.obs_strategy);
      stream.next(m.follow_strategy);
      stream.next(m.cross_option);
      stream.next(m.reserved_option);
      stream.next(m.uuid);
      stream.next(m.lane_uuid);
      stream.next(m.section_uuid);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Point_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::Point_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::Point_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "s: ";
    Printer<double>::stream(s, indent + "  ", v.s);
    s << indent << "cuv: ";
    Printer<double>::stream(s, indent + "  ", v.cuv);
    s << indent << "heading: ";
    Printer<double>::stream(s, indent + "  ", v.heading);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
    s << indent << "speedkmh: ";
    Printer<double>::stream(s, indent + "  ", v.speedkmh);
    s << indent << "rtk_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.rtk_mode);
    s << indent << "driving_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.driving_mode);
    s << indent << "special_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.special_mode);
    s << indent << "obs_search_strategy: ";
    Printer<int32_t>::stream(s, indent + "  ", v.obs_search_strategy);
    s << indent << "speed_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.speed_mode);
    s << indent << "obs_strategy: ";
    Printer<int32_t>::stream(s, indent + "  ", v.obs_strategy);
    s << indent << "follow_strategy: ";
    Printer<int32_t>::stream(s, indent + "  ", v.follow_strategy);
    s << indent << "cross_option: ";
    Printer<int32_t>::stream(s, indent + "  ", v.cross_option);
    s << indent << "reserved_option: ";
    Printer<int32_t>::stream(s, indent + "  ", v.reserved_option);
    s << indent << "uuid: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.uuid);
    s << indent << "lane_uuid: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.lane_uuid);
    s << indent << "section_uuid: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.section_uuid);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_POINT_H