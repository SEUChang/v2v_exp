// Generated by gencpp from file common_msgs/actuator.msg
// DO NOT EDIT!


#ifndef COMMON_MSGS_MESSAGE_ACTUATOR_H
#define COMMON_MSGS_MESSAGE_ACTUATOR_H


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
struct actuator_
{
  typedef actuator_<ContainerAllocator> Type;

  actuator_()
    : epsmethod(0)
    , epstorque(0)
    , epserror(0)
    , epsangle(0)
    , escbrakepress(0)
    , gaspedal(0)
    , sysstatus(0)
    , speed(0.0)
    , lights(0)
    , turnLight(0)
    , geer(0)
    , epb(0)
    , isvalid(0)
    , timestamp(0)  {
    }
  actuator_(const ContainerAllocator& _alloc)
    : epsmethod(0)
    , epstorque(0)
    , epserror(0)
    , epsangle(0)
    , escbrakepress(0)
    , gaspedal(0)
    , sysstatus(0)
    , speed(0.0)
    , lights(0)
    , turnLight(0)
    , geer(0)
    , epb(0)
    , isvalid(0)
    , timestamp(0)  {
  (void)_alloc;
    }



   typedef uint8_t _epsmethod_type;
  _epsmethod_type epsmethod;

   typedef uint8_t _epstorque_type;
  _epstorque_type epstorque;

   typedef uint8_t _epserror_type;
  _epserror_type epserror;

   typedef int16_t _epsangle_type;
  _epsangle_type epsangle;

   typedef uint8_t _escbrakepress_type;
  _escbrakepress_type escbrakepress;

   typedef uint8_t _gaspedal_type;
  _gaspedal_type gaspedal;

   typedef uint8_t _sysstatus_type;
  _sysstatus_type sysstatus;

   typedef float _speed_type;
  _speed_type speed;

   typedef uint8_t _lights_type;
  _lights_type lights;

   typedef uint8_t _turnLight_type;
  _turnLight_type turnLight;

   typedef uint8_t _geer_type;
  _geer_type geer;

   typedef uint8_t _epb_type;
  _epb_type epb;

   typedef uint8_t _isvalid_type;
  _isvalid_type isvalid;

   typedef int64_t _timestamp_type;
  _timestamp_type timestamp;





  typedef boost::shared_ptr< ::common_msgs::actuator_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::common_msgs::actuator_<ContainerAllocator> const> ConstPtr;

}; // struct actuator_

typedef ::common_msgs::actuator_<std::allocator<void> > actuator;

typedef boost::shared_ptr< ::common_msgs::actuator > actuatorPtr;
typedef boost::shared_ptr< ::common_msgs::actuator const> actuatorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::common_msgs::actuator_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::common_msgs::actuator_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::common_msgs::actuator_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::actuator_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::actuator_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::actuator_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::actuator_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::actuator_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::common_msgs::actuator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f5ae8b7fd4f1392f2d669cd9134bb652";
  }

  static const char* value(const ::common_msgs::actuator_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf5ae8b7fd4f1392fULL;
  static const uint64_t static_value2 = 0x2d669cd9134bb652ULL;
};

template<class ContainerAllocator>
struct DataType< ::common_msgs::actuator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "common_msgs/actuator";
  }

  static const char* value(const ::common_msgs::actuator_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::common_msgs::actuator_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 epsmethod          #方向盘模式位\n\
uint8 epstorque          #方向盘扭矩\n\
uint8 epserror           #方向盘故障码\n\
int16 epsangle           #放向盘角度\n\
uint8 escbrakepress      #刹车压力\n\
uint8 gaspedal           #油门开度\n\
uint8 sysstatus          #系统状态\n\
float32 speed              #车速\n\
uint8 lights             #灯光\n\
uint8 turnLight\n\
uint8 geer\n\
uint8 epb\n\
uint8 isvalid            #有效位\n\
int64 timestamp          #时间戳\n\
";
  }

  static const char* value(const ::common_msgs::actuator_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::common_msgs::actuator_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.epsmethod);
      stream.next(m.epstorque);
      stream.next(m.epserror);
      stream.next(m.epsangle);
      stream.next(m.escbrakepress);
      stream.next(m.gaspedal);
      stream.next(m.sysstatus);
      stream.next(m.speed);
      stream.next(m.lights);
      stream.next(m.turnLight);
      stream.next(m.geer);
      stream.next(m.epb);
      stream.next(m.isvalid);
      stream.next(m.timestamp);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct actuator_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::common_msgs::actuator_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::common_msgs::actuator_<ContainerAllocator>& v)
  {
    s << indent << "epsmethod: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.epsmethod);
    s << indent << "epstorque: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.epstorque);
    s << indent << "epserror: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.epserror);
    s << indent << "epsangle: ";
    Printer<int16_t>::stream(s, indent + "  ", v.epsangle);
    s << indent << "escbrakepress: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.escbrakepress);
    s << indent << "gaspedal: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.gaspedal);
    s << indent << "sysstatus: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.sysstatus);
    s << indent << "speed: ";
    Printer<float>::stream(s, indent + "  ", v.speed);
    s << indent << "lights: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.lights);
    s << indent << "turnLight: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.turnLight);
    s << indent << "geer: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.geer);
    s << indent << "epb: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.epb);
    s << indent << "isvalid: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isvalid);
    s << indent << "timestamp: ";
    Printer<int64_t>::stream(s, indent + "  ", v.timestamp);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMON_MSGS_MESSAGE_ACTUATOR_H
