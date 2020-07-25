// Generated by gencpp from file perception_msgs/GlobalPathRequest.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_GLOBALPATHREQUEST_H
#define PERCEPTION_MSGS_MESSAGE_GLOBALPATHREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <perception_msgs/Point.h>
#include <perception_msgs/Point.h>

namespace perception_msgs
{
template <class ContainerAllocator>
struct GlobalPathRequest_
{
  typedef GlobalPathRequest_<ContainerAllocator> Type;

  GlobalPathRequest_()
    : start_pt()
    , goal_pt()
    , type(0)  {
    }
  GlobalPathRequest_(const ContainerAllocator& _alloc)
    : start_pt(_alloc)
    , goal_pt(_alloc)
    , type(0)  {
  (void)_alloc;
    }



   typedef  ::perception_msgs::Point_<ContainerAllocator>  _start_pt_type;
  _start_pt_type start_pt;

   typedef  ::perception_msgs::Point_<ContainerAllocator>  _goal_pt_type;
  _goal_pt_type goal_pt;

   typedef int32_t _type_type;
  _type_type type;





  typedef boost::shared_ptr< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> const> ConstPtr;

}; // struct GlobalPathRequest_

typedef ::perception_msgs::GlobalPathRequest_<std::allocator<void> > GlobalPathRequest;

typedef boost::shared_ptr< ::perception_msgs::GlobalPathRequest > GlobalPathRequestPtr;
typedef boost::shared_ptr< ::perception_msgs::GlobalPathRequest const> GlobalPathRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::GlobalPathRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'perception_msgs': ['/home/sunhao/prog/wild/src/perception_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "69b470637d34f1ed45f4ad2eba99d1e1";
  }

  static const char* value(const ::perception_msgs::GlobalPathRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x69b470637d34f1edULL;
  static const uint64_t static_value2 = 0x45f4ad2eba99d1e1ULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/GlobalPathRequest";
  }

  static const char* value(const ::perception_msgs::GlobalPathRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/Point start_pt\n\
perception_msgs/Point goal_pt\n\
int32 type\n\
\n\
================================================================================\n\
MSG: perception_msgs/Point\n\
#############################\n\
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

  static const char* value(const ::perception_msgs::GlobalPathRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.start_pt);
      stream.next(m.goal_pt);
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GlobalPathRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::GlobalPathRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::GlobalPathRequest_<ContainerAllocator>& v)
  {
    s << indent << "start_pt: ";
    s << std::endl;
    Printer< ::perception_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.start_pt);
    s << indent << "goal_pt: ";
    s << std::endl;
    Printer< ::perception_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_pt);
    s << indent << "type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_GLOBALPATHREQUEST_H