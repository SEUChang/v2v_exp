// Generated by gencpp from file gnss_msgs/GPVTG.msg
// DO NOT EDIT!


#ifndef GNSS_MSGS_MESSAGE_GPVTG_H
#define GNSS_MSGS_MESSAGE_GPVTG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace gnss_msgs
{
template <class ContainerAllocator>
struct GPVTG_
{
  typedef GPVTG_<ContainerAllocator> Type;

  GPVTG_()
    : real_north(0.0)
    , magn_north(0.0)
    , speed_nav(0.0)
    , speed(0.0)  {
    }
  GPVTG_(const ContainerAllocator& _alloc)
    : real_north(0.0)
    , magn_north(0.0)
    , speed_nav(0.0)
    , speed(0.0)  {
  (void)_alloc;
    }



   typedef double _real_north_type;
  _real_north_type real_north;

   typedef double _magn_north_type;
  _magn_north_type magn_north;

   typedef double _speed_nav_type;
  _speed_nav_type speed_nav;

   typedef double _speed_type;
  _speed_type speed;





  typedef boost::shared_ptr< ::gnss_msgs::GPVTG_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_msgs::GPVTG_<ContainerAllocator> const> ConstPtr;

}; // struct GPVTG_

typedef ::gnss_msgs::GPVTG_<std::allocator<void> > GPVTG;

typedef boost::shared_ptr< ::gnss_msgs::GPVTG > GPVTGPtr;
typedef boost::shared_ptr< ::gnss_msgs::GPVTG const> GPVTGConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_msgs::GPVTG_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_msgs::GPVTG_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gnss_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'gnss_msgs': ['/home/sunhao/wild/src/gnss_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gnss_msgs::GPVTG_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_msgs::GPVTG_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_msgs::GPVTG_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_msgs::GPVTG_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_msgs::GPVTG_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_msgs::GPVTG_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_msgs::GPVTG_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55bf248c8109ca74aca673f0009467b8";
  }

  static const char* value(const ::gnss_msgs::GPVTG_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55bf248c8109ca74ULL;
  static const uint64_t static_value2 = 0xaca673f0009467b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_msgs::GPVTG_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_msgs/GPVTG";
  }

  static const char* value(const ::gnss_msgs::GPVTG_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_msgs::GPVTG_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Message from GPVTG NMEA String\n\
\n\
\n\
float64 real_north\n\
float64 magn_north\n\
float64 speed_nav\n\
float64 speed\n\
";
  }

  static const char* value(const ::gnss_msgs::GPVTG_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_msgs::GPVTG_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.real_north);
      stream.next(m.magn_north);
      stream.next(m.speed_nav);
      stream.next(m.speed);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GPVTG_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_msgs::GPVTG_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_msgs::GPVTG_<ContainerAllocator>& v)
  {
    s << indent << "real_north: ";
    Printer<double>::stream(s, indent + "  ", v.real_north);
    s << indent << "magn_north: ";
    Printer<double>::stream(s, indent + "  ", v.magn_north);
    s << indent << "speed_nav: ";
    Printer<double>::stream(s, indent + "  ", v.speed_nav);
    s << indent << "speed: ";
    Printer<double>::stream(s, indent + "  ", v.speed);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_MSGS_MESSAGE_GPVTG_H
