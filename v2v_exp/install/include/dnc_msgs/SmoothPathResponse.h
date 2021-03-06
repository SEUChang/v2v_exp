// Generated by gencpp from file dnc_msgs/SmoothPathResponse.msg
// DO NOT EDIT!


#ifndef DNC_MSGS_MESSAGE_SMOOTHPATHRESPONSE_H
#define DNC_MSGS_MESSAGE_SMOOTHPATHRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dnc_msgs/DNCpath.h>

namespace dnc_msgs
{
template <class ContainerAllocator>
struct SmoothPathResponse_
{
  typedef SmoothPathResponse_<ContainerAllocator> Type;

  SmoothPathResponse_()
    : res_path()  {
    }
  SmoothPathResponse_(const ContainerAllocator& _alloc)
    : res_path(_alloc)  {
  (void)_alloc;
    }



   typedef  ::dnc_msgs::DNCpath_<ContainerAllocator>  _res_path_type;
  _res_path_type res_path;





  typedef boost::shared_ptr< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SmoothPathResponse_

typedef ::dnc_msgs::SmoothPathResponse_<std::allocator<void> > SmoothPathResponse;

typedef boost::shared_ptr< ::dnc_msgs::SmoothPathResponse > SmoothPathResponsePtr;
typedef boost::shared_ptr< ::dnc_msgs::SmoothPathResponse const> SmoothPathResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dnc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dnc_msgs': ['/home/sunhao/prog/wild/src/dnc_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "99200e4c6d865f8a9edb8b7a03edba5e";
  }

  static const char* value(const ::dnc_msgs::SmoothPathResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x99200e4c6d865f8aULL;
  static const uint64_t static_value2 = 0x9edb8b7a03edba5eULL;
};

template<class ContainerAllocator>
struct DataType< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnc_msgs/SmoothPathResponse";
  }

  static const char* value(const ::dnc_msgs::SmoothPathResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnc_msgs/DNCpath res_path\n\
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

  static const char* value(const ::dnc_msgs::SmoothPathResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.res_path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SmoothPathResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dnc_msgs::SmoothPathResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dnc_msgs::SmoothPathResponse_<ContainerAllocator>& v)
  {
    s << indent << "res_path: ";
    s << std::endl;
    Printer< ::dnc_msgs::DNCpath_<ContainerAllocator> >::stream(s, indent + "  ", v.res_path);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNC_MSGS_MESSAGE_SMOOTHPATHRESPONSE_H
