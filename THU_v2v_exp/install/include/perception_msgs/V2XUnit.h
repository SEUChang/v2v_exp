// Generated by gencpp from file perception_msgs/V2XUnit.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_V2XUNIT_H
#define PERCEPTION_MSGS_MESSAGE_V2XUNIT_H


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
struct V2XUnit_
{
  typedef V2XUnit_<ContainerAllocator> Type;

  V2XUnit_()
    : id(0)
    , x(0.0)
    , y(0.0)
    , yaw(0.0)
    , speed(0.0)  {
    }
  V2XUnit_(const ContainerAllocator& _alloc)
    : id(0)
    , x(0.0)
    , y(0.0)
    , yaw(0.0)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef int32_t _id_type;
  _id_type id;

   typedef float _x_type;
  _x_type x;

   typedef float _y_type;
  _y_type y;

   typedef float _yaw_type;
  _yaw_type yaw;

   typedef float _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::perception_msgs::V2XUnit_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::perception_msgs::V2XUnit_<ContainerAllocator> const> ConstPtr;

}; // struct V2XUnit_

typedef ::perception_msgs::V2XUnit_<std::allocator<void> > V2XUnit;

typedef boost::shared_ptr< ::perception_msgs::V2XUnit > V2XUnitPtr;
typedef boost::shared_ptr< ::perception_msgs::V2XUnit const> V2XUnitConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::perception_msgs::V2XUnit_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::perception_msgs::V2XUnit_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace perception_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'perception_msgs': ['/home/sunhao/wild/src/perception_msgs/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::V2XUnit_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::perception_msgs::V2XUnit_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::V2XUnit_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::perception_msgs::V2XUnit_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::V2XUnit_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::perception_msgs::V2XUnit_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::perception_msgs::V2XUnit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a4e6390217c9463b80e0fd0d47fc692d";
  }

  static const char* value(const ::perception_msgs::V2XUnit_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa4e6390217c9463bULL;
  static const uint64_t static_value2 = 0x80e0fd0d47fc692dULL;
};

template<class ContainerAllocator>
struct DataType< ::perception_msgs::V2XUnit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "perception_msgs/V2XUnit";
  }

  static const char* value(const ::perception_msgs::V2XUnit_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::perception_msgs::V2XUnit_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
\n\
#std_msgs/String info_id\n\
int32  id\n\
float32 x\n\
float32 y\n\
float32 yaw\n\
float32 speed\n\
#float32 ax\n\
\n\
\n\
\n\
";
  }

  static const char* value(const ::perception_msgs::V2XUnit_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::perception_msgs::V2XUnit_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.id);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.yaw);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct V2XUnit_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::perception_msgs::V2XUnit_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::perception_msgs::V2XUnit_<ContainerAllocator>& v)
  {
    s << indent << "id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.id);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "yaw: ";
    Printer<float>::stream(s, indent + "  ", v.yaw);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_V2XUNIT_H
