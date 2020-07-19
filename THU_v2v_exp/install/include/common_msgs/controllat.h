// Generated by gencpp from file common_msgs/controllat.msg
// DO NOT EDIT!


#ifndef COMMON_MSGS_MESSAGE_CONTROLLAT_H
#define COMMON_MSGS_MESSAGE_CONTROLLAT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace common_msgs
{
template <class ContainerAllocator>
struct controllat_
{
  typedef controllat_<ContainerAllocator> Type;

  controllat_()
    : epsmethod(0)
    , epsangle(0)
    , limitspeed(0.0)
    , epstorque(0.0)
    , lights(0)
    , isvalid(0)
    , deviation(0)
    , timestamp(0)  {
    }
  controllat_(const ContainerAllocator& _alloc)
    : epsmethod(0)
    , epsangle(0)
    , limitspeed(0.0)
    , epstorque(0.0)
    , lights(0)
    , isvalid(0)
    , deviation(0)
    , timestamp(0)  {
  (void)_alloc;
    }



   typedef uint8_t _epsmethod_type;
  _epsmethod_type epsmethod;

   typedef int16_t _epsangle_type;
  _epsangle_type epsangle;

   typedef float _limitspeed_type;
  _limitspeed_type limitspeed;

   typedef float _epstorque_type;
  _epstorque_type epstorque;

   typedef uint8_t _lights_type;
  _lights_type lights;

   typedef uint8_t _isvalid_type;
  _isvalid_type isvalid;

   typedef int16_t _deviation_type;
  _deviation_type deviation;

   typedef int64_t _timestamp_type;
  _timestamp_type timestamp;





  typedef boost::shared_ptr< ::common_msgs::controllat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::common_msgs::controllat_<ContainerAllocator> const> ConstPtr;

}; // struct controllat_

typedef ::common_msgs::controllat_<std::allocator<void> > controllat;

typedef boost::shared_ptr< ::common_msgs::controllat > controllatPtr;
typedef boost::shared_ptr< ::common_msgs::controllat const> controllatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::common_msgs::controllat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::common_msgs::controllat_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace common_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'common_msgs': ['/home/sunhao/wild/src/common_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::controllat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::controllat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::controllat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::controllat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::controllat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::controllat_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::common_msgs::controllat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0c1639e4c92c3d89dd4c0c14d08ef839";
  }

  static const char* value(const ::common_msgs::controllat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0c1639e4c92c3d89ULL;
  static const uint64_t static_value2 = 0xdd4c0c14d08ef839ULL;
};

template<class ContainerAllocator>
struct DataType< ::common_msgs::controllat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "common_msgs/controllat";
  }

  static const char* value(const ::common_msgs::controllat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::common_msgs::controllat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8    epsmethod   #使能位\n\
int16    epsangle    #目标角度\n\
float32  limitspeed  #限速\n\
float32  epstorque   #扭矩\n\
uint8    lights      #目标灯光\n\
uint8    isvalid     #有效位\n\
int16    deviation   #deviation\n\
int64    timestamp   #时间戳\n\
";
  }

  static const char* value(const ::common_msgs::controllat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::common_msgs::controllat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.epsmethod);
      stream.next(m.epsangle);
      stream.next(m.limitspeed);
      stream.next(m.epstorque);
      stream.next(m.lights);
      stream.next(m.isvalid);
      stream.next(m.deviation);
      stream.next(m.timestamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct controllat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::common_msgs::controllat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::common_msgs::controllat_<ContainerAllocator>& v)
  {
    s << indent << "epsmethod: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.epsmethod);
    s << indent << "epsangle: ";
    Printer<int16_t>::stream(s, indent + "  ", v.epsangle);
    s << indent << "limitspeed: ";
    Printer<float>::stream(s, indent + "  ", v.limitspeed);
    s << indent << "epstorque: ";
    Printer<float>::stream(s, indent + "  ", v.epstorque);
    s << indent << "lights: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lights);
    s << indent << "isvalid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isvalid);
    s << indent << "deviation: ";
    Printer<int16_t>::stream(s, indent + "  ", v.deviation);
    s << indent << "timestamp: ";
    Printer<int64_t>::stream(s, indent + "  ", v.timestamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMON_MSGS_MESSAGE_CONTROLLAT_H
