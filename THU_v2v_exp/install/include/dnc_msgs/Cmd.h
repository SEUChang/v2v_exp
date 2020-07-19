// Generated by gencpp from file dnc_msgs/Cmd.msg
// DO NOT EDIT!


#ifndef DNC_MSGS_MESSAGE_CMD_H
#define DNC_MSGS_MESSAGE_CMD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace dnc_msgs
{
template <class ContainerAllocator>
struct Cmd_
{
  typedef Cmd_<ContainerAllocator> Type;

  Cmd_()
    : speical(0)
    , enable_steering(false)
    , enable_braking(false)
    , enable_driving(false)
    , enable_Estop(false)
    , enable_gear(false)
    , sw_deg(0.0)
    , sw_rad(0.0)
    , speed_ms(0.0)
    , speed_kms(0.0)
    , ax_ms2(0.0)
    , omega_rad(0.0)
    , gear_mode(0)
    , steering(0.0)
    , speed(0.0)
    , remote_flag(0)  {
    }
  Cmd_(const ContainerAllocator& _alloc)
    : speical(0)
    , enable_steering(false)
    , enable_braking(false)
    , enable_driving(false)
    , enable_Estop(false)
    , enable_gear(false)
    , sw_deg(0.0)
    , sw_rad(0.0)
    , speed_ms(0.0)
    , speed_kms(0.0)
    , ax_ms2(0.0)
    , omega_rad(0.0)
    , gear_mode(0)
    , steering(0.0)
    , speed(0.0)
    , remote_flag(0)  {
  (void)_alloc;
    }



   typedef int32_t _speical_type;
  _speical_type speical;

   typedef uint8_t _enable_steering_type;
  _enable_steering_type enable_steering;

   typedef uint8_t _enable_braking_type;
  _enable_braking_type enable_braking;

   typedef uint8_t _enable_driving_type;
  _enable_driving_type enable_driving;

   typedef uint8_t _enable_Estop_type;
  _enable_Estop_type enable_Estop;

   typedef uint8_t _enable_gear_type;
  _enable_gear_type enable_gear;

   typedef float _sw_deg_type;
  _sw_deg_type sw_deg;

   typedef float _sw_rad_type;
  _sw_rad_type sw_rad;

   typedef float _speed_ms_type;
  _speed_ms_type speed_ms;

   typedef float _speed_kms_type;
  _speed_kms_type speed_kms;

   typedef float _ax_ms2_type;
  _ax_ms2_type ax_ms2;

   typedef float _omega_rad_type;
  _omega_rad_type omega_rad;

   typedef int32_t _gear_mode_type;
  _gear_mode_type gear_mode;

   typedef float _steering_type;
  _steering_type steering;

   typedef double _speed_type;
  _speed_type speed;

   typedef int32_t _remote_flag_type;
  _remote_flag_type remote_flag;





  typedef boost::shared_ptr< ::dnc_msgs::Cmd_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dnc_msgs::Cmd_<ContainerAllocator> const> ConstPtr;

}; // struct Cmd_

typedef ::dnc_msgs::Cmd_<std::allocator<void> > Cmd;

typedef boost::shared_ptr< ::dnc_msgs::Cmd > CmdPtr;
typedef boost::shared_ptr< ::dnc_msgs::Cmd const> CmdConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dnc_msgs::Cmd_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dnc_msgs::Cmd_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dnc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dnc_msgs': ['/home/sunhao/wild/src/dnc_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::Cmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::Cmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::Cmd_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::Cmd_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::Cmd_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::Cmd_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dnc_msgs::Cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "425817e067da8891ec14079a988b5202";
  }

  static const char* value(const ::dnc_msgs::Cmd_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x425817e067da8891ULL;
  static const uint64_t static_value2 = 0xec14079a988b5202ULL;
};

template<class ContainerAllocator>
struct DataType< ::dnc_msgs::Cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnc_msgs/Cmd";
  }

  static const char* value(const ::dnc_msgs::Cmd_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dnc_msgs::Cmd_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#\n\
#  general control cmd\n\
#\n\
\n\
#########################\n\
\n\
int32 speical ## for speical used\n\
bool enable_steering\n\
bool enable_braking\n\
bool enable_driving\n\
bool enable_Estop\n\
bool enable_gear\n\
#########################\n\
\n\
float32 sw_deg  # steering wheel angle\n\
float32 sw_rad\n\
float32 speed_ms\n\
float32 speed_kms\n\
float32 ax_ms2\n\
float32 omega_rad\n\
int32 gear_mode  # 0: N, // 1: forward , // 2 backward, // 3: stop\n\
\n\
#########################\n\
float32 steering\n\
float64 speed\n\
#########################\n\
int32 remote_flag\n\
";
  }

  static const char* value(const ::dnc_msgs::Cmd_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dnc_msgs::Cmd_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.speical);
      stream.next(m.enable_steering);
      stream.next(m.enable_braking);
      stream.next(m.enable_driving);
      stream.next(m.enable_Estop);
      stream.next(m.enable_gear);
      stream.next(m.sw_deg);
      stream.next(m.sw_rad);
      stream.next(m.speed_ms);
      stream.next(m.speed_kms);
      stream.next(m.ax_ms2);
      stream.next(m.omega_rad);
      stream.next(m.gear_mode);
      stream.next(m.steering);
      stream.next(m.speed);
      stream.next(m.remote_flag);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Cmd_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dnc_msgs::Cmd_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dnc_msgs::Cmd_<ContainerAllocator>& v)
  {
    s << indent << "speical: ";
    Printer<int32_t>::stream(s, indent + "  ", v.speical);
    s << indent << "enable_steering: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_steering);
    s << indent << "enable_braking: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_braking);
    s << indent << "enable_driving: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_driving);
    s << indent << "enable_Estop: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_Estop);
    s << indent << "enable_gear: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.enable_gear);
    s << indent << "sw_deg: ";
    Printer<float>::stream(s, indent + "  ", v.sw_deg);
    s << indent << "sw_rad: ";
    Printer<float>::stream(s, indent + "  ", v.sw_rad);
    s << indent << "speed_ms: ";
    Printer<float>::stream(s, indent + "  ", v.speed_ms);
    s << indent << "speed_kms: ";
    Printer<float>::stream(s, indent + "  ", v.speed_kms);
    s << indent << "ax_ms2: ";
    Printer<float>::stream(s, indent + "  ", v.ax_ms2);
    s << indent << "omega_rad: ";
    Printer<float>::stream(s, indent + "  ", v.omega_rad);
    s << indent << "gear_mode: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gear_mode);
    s << indent << "steering: ";
    Printer<float>::stream(s, indent + "  ", v.steering);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
    s << indent << "remote_flag: ";
    Printer<int32_t>::stream(s, indent + "  ", v.remote_flag);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNC_MSGS_MESSAGE_CMD_H
