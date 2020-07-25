// Generated by gencpp from file perception_msgs/Pt.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_PT_H
#define PERCEPTION_MSGS_MESSAGE_PT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace perception_msgs
{
template <class ContainerAllocator>
struct Pt_
{
  typedef Pt_<ContainerAllocator> Type;

  Pt_()
    : x(0.0)
    , y(0.0)  {
    }
  Pt_(const ContainerAllocator& _alloc)
    : x(0.0)
    , y(0.0)  {
  (void)_alloc;
    }



   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;





  typedef boost::shared_ptr< ::perception_msgs::Pt_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::Pt_<ContainerAllocator> const> ConstPtr;

}; // struct Pt_

typedef ::perception_msgs::Pt_<std::allocator<void> > Pt;

typedef boost::shared_ptr< ::perception_msgs::Pt > PtPtr;
typedef boost::shared_ptr< ::perception_msgs::Pt const> PtConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::Pt_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::Pt_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'perception_msgs': ['/home/sunhao/prog/wild/src/perception_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Pt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::Pt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Pt_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::Pt_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Pt_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::Pt_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::Pt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ff8d7d66dd3e4b731ef14a45d38888b6";
  }

  static const char* value(const ::perception_msgs::Pt_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xff8d7d66dd3e4b73ULL;
  static const uint64_t static_value2 = 0x1ef14a45d38888b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::Pt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/Pt";
  }

  static const char* value(const ::perception_msgs::Pt_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::Pt_<ContainerAllocator> >
{
  static const char* value()
  {
    return "####\n\
###\n\
\n\
\n\
float32 x\n\
float32 y\n\
";
  }

  static const char* value(const ::perception_msgs::Pt_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::Pt_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x);
      stream.next(m.y);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Pt_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::Pt_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::Pt_<ContainerAllocator>& v)
  {
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_PT_H