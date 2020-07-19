// Generated by gencpp from file common_msgs/trajectorypoints.msg
// DO NOT EDIT!


#ifndef COMMON_MSGS_MESSAGE_TRAJECTORYPOINTS_H
#define COMMON_MSGS_MESSAGE_TRAJECTORYPOINTS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <common_msgs/roadpoint.h>

namespace common_msgs
{
template <class ContainerAllocator>
struct trajectorypoints_
{
  typedef trajectorypoints_<ContainerAllocator> Type;

  trajectorypoints_()
    : points()
    , source(0)
    , isvalid(0)
    , timestamp(0)  {
    }
  trajectorypoints_(const ContainerAllocator& _alloc)
    : points(_alloc)
    , source(0)
    , isvalid(0)
    , timestamp(0)  {
  (void)_alloc;
    }



   typedef std::vector< ::common_msgs::roadpoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::common_msgs::roadpoint_<ContainerAllocator> >::other >  _points_type;
  _points_type points;

   typedef uint8_t _source_type;
  _source_type source;

   typedef uint8_t _isvalid_type;
  _isvalid_type isvalid;

   typedef int64_t _timestamp_type;
  _timestamp_type timestamp;





  typedef boost::shared_ptr< ::common_msgs::trajectorypoints_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::common_msgs::trajectorypoints_<ContainerAllocator> const> ConstPtr;

}; // struct trajectorypoints_

typedef ::common_msgs::trajectorypoints_<std::allocator<void> > trajectorypoints;

typedef boost::shared_ptr< ::common_msgs::trajectorypoints > trajectorypointsPtr;
typedef boost::shared_ptr< ::common_msgs::trajectorypoints const> trajectorypointsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::common_msgs::trajectorypoints_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::common_msgs::trajectorypoints_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'common_msgs': ['/home/sunhao/wild/src/common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::trajectorypoints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::trajectorypoints_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::trajectorypoints_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::trajectorypoints_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::trajectorypoints_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::trajectorypoints_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::common_msgs::trajectorypoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cfaabbf8c8417d8085a59ee8759b9a8c";
  }

  static const char* value(const ::common_msgs::trajectorypoints_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcfaabbf8c8417d80ULL;
  static const uint64_t static_value2 = 0x85a59ee8759b9a8cULL;
};

template<class ContainerAllocator>
struct DataType< ::common_msgs::trajectorypoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "common_msgs/trajectorypoints";
  }

  static const char* value(const ::common_msgs::trajectorypoints_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::common_msgs::trajectorypoints_<ContainerAllocator> >
{
  static const char* value()
  {
    return "roadpoint[] points  #轨迹点\n\
uint8 source        #source from where                                       \n\
uint8 isvalid       #有效位\n\
int64 timestamp     #时间戳\n\
================================================================================\n\
MSG: common_msgs/roadpoint\n\
int16 x                  #局部横坐标   cm\n\
int16 y                  #局部纵坐标   cm\n\
int32 gx                 #全局横坐标   cm\n\
int32 gy                 #全局纵坐标   cm\n\
uint8 roadtype           #道路属性\n\
uint8 lanetype           #当前车道|总车道(4|4)\n\
float32 heading          #heading\n\
float32 curvature\n\
";
  }

  static const char* value(const ::common_msgs::trajectorypoints_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::common_msgs::trajectorypoints_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.points);
      stream.next(m.source);
      stream.next(m.isvalid);
      stream.next(m.timestamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct trajectorypoints_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::common_msgs::trajectorypoints_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::common_msgs::trajectorypoints_<ContainerAllocator>& v)
  {
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::common_msgs::roadpoint_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
    s << indent << "source: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.source);
    s << indent << "isvalid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isvalid);
    s << indent << "timestamp: ";
    Printer<int64_t>::stream(s, indent + "  ", v.timestamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMON_MSGS_MESSAGE_TRAJECTORYPOINTS_H
