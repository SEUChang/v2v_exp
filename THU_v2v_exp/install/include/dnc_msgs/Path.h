// Generated by gencpp from file dnc_msgs/Path.msg
// DO NOT EDIT!


#ifndef DNC_MSGS_MESSAGE_PATH_H
#define DNC_MSGS_MESSAGE_PATH_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <dnc_msgs/Pt.h>

namespace dnc_msgs
{
template <class ContainerAllocator>
struct Path_
{
  typedef Path_<ContainerAllocator> Type;

  Path_()
    : pts()
    , s_flag(false)
    , h_flag(false)  {
    }
  Path_(const ContainerAllocator& _alloc)
    : pts(_alloc)
    , s_flag(false)
    , h_flag(false)  {
  (void)_alloc;
    }



   typedef std::vector< ::dnc_msgs::Pt_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::dnc_msgs::Pt_<ContainerAllocator> >::other >  _pts_type;
  _pts_type pts;

   typedef uint8_t _s_flag_type;
  _s_flag_type s_flag;

   typedef uint8_t _h_flag_type;
  _h_flag_type h_flag;





  typedef boost::shared_ptr< ::dnc_msgs::Path_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dnc_msgs::Path_<ContainerAllocator> const> ConstPtr;

}; // struct Path_

typedef ::dnc_msgs::Path_<std::allocator<void> > Path;

typedef boost::shared_ptr< ::dnc_msgs::Path > PathPtr;
typedef boost::shared_ptr< ::dnc_msgs::Path const> PathConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dnc_msgs::Path_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dnc_msgs::Path_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dnc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dnc_msgs': ['/home/sunhao/wild/src/dnc_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::Path_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::Path_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::Path_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::Path_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::Path_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::Path_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dnc_msgs::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "33f23220b687c9f758ff12cb63f9522c";
  }

  static const char* value(const ::dnc_msgs::Path_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x33f23220b687c9f7ULL;
  static const uint64_t static_value2 = 0x58ff12cb63f9522cULL;
};

template<class ContainerAllocator>
struct DataType< ::dnc_msgs::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnc_msgs/Path";
  }

  static const char* value(const ::dnc_msgs::Path_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dnc_msgs::Path_<ContainerAllocator> >
{
  static const char* value()
  {
    return "################\n\
#\n\
################\n\
\n\
dnc_msgs/Pt[] pts\n\
bool s_flag\n\
bool h_flag\n\
================================================================================\n\
MSG: dnc_msgs/Pt\n\
################\n\
#\n\
################\n\
\n\
\n\
float32 x\n\
float32 y\n\
float32 s\n\
float32 h\n\
";
  }

  static const char* value(const ::dnc_msgs::Path_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dnc_msgs::Path_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pts);
      stream.next(m.s_flag);
      stream.next(m.h_flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Path_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dnc_msgs::Path_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dnc_msgs::Path_<ContainerAllocator>& v)
  {
    s << indent << "pts[]" << std::endl;
    for (size_t i = 0; i < v.pts.size(); ++i)
    {
      s << indent << "  pts[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::dnc_msgs::Pt_<ContainerAllocator> >::stream(s, indent + "    ", v.pts[i]);
    }
    s << indent << "s_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.s_flag);
    s << indent << "h_flag: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.h_flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNC_MSGS_MESSAGE_PATH_H
