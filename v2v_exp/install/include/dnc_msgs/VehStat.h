// Generated by gencpp from file dnc_msgs/VehStat.msg
// DO NOT EDIT!


#ifndef DNC_MSGS_MESSAGE_VEHSTAT_H
#define DNC_MSGS_MESSAGE_VEHSTAT_H


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
struct VehStat_
{
  typedef VehStat_<ContainerAllocator> Type;

  VehStat_()
    : vx(0.0)
    , v_kmh(0.0)
    , sw_deg(0.0)
    , sw_rad(0.0)
    , gear_status(0)  {
    }
  VehStat_(const ContainerAllocator& _alloc)
    : vx(0.0)
    , v_kmh(0.0)
    , sw_deg(0.0)
    , sw_rad(0.0)
    , gear_status(0)  {
  (void)_alloc;
    }



   typedef float _vx_type;
  _vx_type vx;

   typedef float _v_kmh_type;
  _v_kmh_type v_kmh;

   typedef float _sw_deg_type;
  _sw_deg_type sw_deg;

   typedef float _sw_rad_type;
  _sw_rad_type sw_rad;

   typedef int32_t _gear_status_type;
  _gear_status_type gear_status;





  typedef boost::shared_ptr< ::dnc_msgs::VehStat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::dnc_msgs::VehStat_<ContainerAllocator> const> ConstPtr;

}; // struct VehStat_

typedef ::dnc_msgs::VehStat_<std::allocator<void> > VehStat;

typedef boost::shared_ptr< ::dnc_msgs::VehStat > VehStatPtr;
typedef boost::shared_ptr< ::dnc_msgs::VehStat const> VehStatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::dnc_msgs::VehStat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::dnc_msgs::VehStat_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace dnc_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'dnc_msgs': ['/home/sunhao/prog/wild/src/dnc_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::VehStat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::dnc_msgs::VehStat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::VehStat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::dnc_msgs::VehStat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::VehStat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::dnc_msgs::VehStat_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::dnc_msgs::VehStat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e80772b9bb70a4ec8d045b4f390e4eb8";
  }

  static const char* value(const ::dnc_msgs::VehStat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe80772b9bb70a4ecULL;
  static const uint64_t static_value2 = 0x8d045b4f390e4eb8ULL;
};

template<class ContainerAllocator>
struct DataType< ::dnc_msgs::VehStat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dnc_msgs/VehStat";
  }

  static const char* value(const ::dnc_msgs::VehStat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::dnc_msgs::VehStat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
float32 vx\n\
float32 v_kmh\n\
float32 sw_deg\n\
float32 sw_rad\n\
\n\
int32 gear_status\n\
";
  }

  static const char* value(const ::dnc_msgs::VehStat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::dnc_msgs::VehStat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.vx);
      stream.next(m.v_kmh);
      stream.next(m.sw_deg);
      stream.next(m.sw_rad);
      stream.next(m.gear_status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VehStat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::dnc_msgs::VehStat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::dnc_msgs::VehStat_<ContainerAllocator>& v)
  {
    s << indent << "vx: ";
    Printer<float>::stream(s, indent + "  ", v.vx);
    s << indent << "v_kmh: ";
    Printer<float>::stream(s, indent + "  ", v.v_kmh);
    s << indent << "sw_deg: ";
    Printer<float>::stream(s, indent + "  ", v.sw_deg);
    s << indent << "sw_rad: ";
    Printer<float>::stream(s, indent + "  ", v.sw_rad);
    s << indent << "gear_status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.gear_status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // DNC_MSGS_MESSAGE_VEHSTAT_H