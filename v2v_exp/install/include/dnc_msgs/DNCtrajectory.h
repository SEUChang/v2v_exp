// Generated by gencpp from file dnc_msgs/DNCtrajectory.msg
// DO NOT EDIT!


#ifndef DNC_MSGS_MESSAGE_DNCTRAJECTORY_H
#define DNC_MSGS_MESSAGE_DNCTRAJECTORY_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <dnc_msgs/DNCpath.h>

namespace dnc_msgs
{
template <class ContainerAllocator>
struct DNCtrajectory_
{
  typedef DNCtrajectory_<ContainerAllocator> Type;

  DNCtrajectory_()
    : header()
    , mode(0)
    , desired_ax(0.0)
    , path()  {
    }
  DNCtrajectory_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , mode(0)
    , desired_ax(0.0)
    , path(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef int32_t _mode_type;
  _mode_type mode;

   typedef float _desired_ax_type;
  _desired_ax_type desired_ax;

   typedef  ::dnc_msgs::DNCpath_<ContainerAllocator>  _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> const> ConstPtr;

}; // struct DNCtrajectory_

typedef ::dnc_msgs::DNCtrajectory_<std::allocator<void> > DNCtrajectory;

typedef boost::shared_ptr< ::dnc_msgs::DNCtrajectory > DNCtrajectoryPtr;
typedef boost::shared_ptr< ::dnc_msgs::DNCtrajectory const> DNCtrajectoryConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dnc_msgs::DNCtrajectory_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dnc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dnc_msgs': ['/home/sunhao/prog/wild/src/dnc_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "30984eee6f59e717ab9028ecc27d7d49";
  }

  static const char* value(const ::dnc_msgs::DNCtrajectory_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x30984eee6f59e717ULL;
  static const uint64_t static_value2 = 0xab9028ecc27d7d49ULL;
};

template<class ContainerAllocator>
struct DataType< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnc_msgs/DNCtrajectory";
  }

  static const char* value(const ::dnc_msgs::DNCtrajectory_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#############################\n\
###       SunHao          ###\n\
#############################\n\
\n\
std_msgs/Header header\n\
\n\
int32 mode\n\
float32 desired_ax\n\
dnc_msgs/DNCpath path\n\
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
MSG: dnc_msgs/DNCpath\n\
#############################\n\
###       SunHao          ###\n\
#############################\n\
\n\
\n\
dnc_msgs/DNCpoint[] pts\n\
bool s_flag\n\
bool h_flag\n\
================================================================================\n\
MSG: dnc_msgs/DNCpoint\n\
#############################\n\
###       SunHao          ###\n\
#############################\n\
\n\
\n\
float64 x\n\
float64 y\n\
float64 s\n\
\n\
float64 cuv\n\
float64 heading\n\
float64 speed\n\
\n\
float32 h\n\
";
  }

  static const char* value(const ::dnc_msgs::DNCtrajectory_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.mode);
      stream.next(m.desired_ax);
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DNCtrajectory_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dnc_msgs::DNCtrajectory_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dnc_msgs::DNCtrajectory_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.mode);
    s << indent << "desired_ax: ";
    Printer<float>::stream(s, indent + "  ", v.desired_ax);
    s << indent << "path: ";
    s << std::endl;
    Printer< ::dnc_msgs::DNCpath_<ContainerAllocator> >::stream(s, indent + "  ", v.path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNC_MSGS_MESSAGE_DNCTRAJECTORY_H
