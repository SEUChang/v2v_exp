// Generated by gencpp from file perception_msgs/PtLocalizationRequest.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_PTLOCALIZATIONREQUEST_H
#define PERCEPTION_MSGS_MESSAGE_PTLOCALIZATIONREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <perception_msgs/Point.h>

namespace perception_msgs
{
template <class ContainerAllocator>
struct PtLocalizationRequest_
{
  typedef PtLocalizationRequest_<ContainerAllocator> Type;

  PtLocalizationRequest_()
    : pt()  {
    }
  PtLocalizationRequest_(const ContainerAllocator& _alloc)
    : pt(_alloc)  {
  (void)_alloc;
    }



   typedef  ::perception_msgs::Point_<ContainerAllocator>  _pt_type;
  _pt_type pt;





  typedef boost::shared_ptr< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> const> ConstPtr;

}; // struct PtLocalizationRequest_

typedef ::perception_msgs::PtLocalizationRequest_<std::allocator<void> > PtLocalizationRequest;

typedef boost::shared_ptr< ::perception_msgs::PtLocalizationRequest > PtLocalizationRequestPtr;
typedef boost::shared_ptr< ::perception_msgs::PtLocalizationRequest const> PtLocalizationRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "160a51e9f1b26585fb6898083120feae";
  }

  static const char* value(const ::perception_msgs::PtLocalizationRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x160a51e9f1b26585ULL;
  static const uint64_t static_value2 = 0xfb6898083120feaeULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/PtLocalizationRequest";
  }

  static const char* value(const ::perception_msgs::PtLocalizationRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/Point pt\n\
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

  static const char* value(const ::perception_msgs::PtLocalizationRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pt);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PtLocalizationRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::PtLocalizationRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::PtLocalizationRequest_<ContainerAllocator>& v)
  {
    s << indent << "pt: ";
    s << std::endl;
    Printer< ::perception_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.pt);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_PTLOCALIZATIONREQUEST_H
