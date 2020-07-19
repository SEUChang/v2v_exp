// Generated by gencpp from file common_msgs/lonlat.msg
// DO NOT EDIT!


#ifndef COMMON_MSGS_MESSAGE_LONLAT_H
#define COMMON_MSGS_MESSAGE_LONLAT_H


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
struct lonlat_
{
  typedef lonlat_<ContainerAllocator> Type;

  lonlat_()
    : lon(0.0)
    , lat(0.0)
    , heading(0.0)  {
    }
  lonlat_(const ContainerAllocator& _alloc)
    : lon(0.0)
    , lat(0.0)
    , heading(0.0)  {
  (void)_alloc;
    }



   typedef double _lon_type;
  _lon_type lon;

   typedef double _lat_type;
  _lat_type lat;

   typedef float _heading_type;
  _heading_type heading;





  typedef boost::shared_ptr< ::common_msgs::lonlat_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::common_msgs::lonlat_<ContainerAllocator> const> ConstPtr;

}; // struct lonlat_

typedef ::common_msgs::lonlat_<std::allocator<void> > lonlat;

typedef boost::shared_ptr< ::common_msgs::lonlat > lonlatPtr;
typedef boost::shared_ptr< ::common_msgs::lonlat const> lonlatConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::common_msgs::lonlat_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::common_msgs::lonlat_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::common_msgs::lonlat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::lonlat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::lonlat_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::lonlat_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::lonlat_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::lonlat_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::common_msgs::lonlat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "be359fed66360ffb772b898ab219bc12";
  }

  static const char* value(const ::common_msgs::lonlat_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbe359fed66360ffbULL;
  static const uint64_t static_value2 = 0x772b898ab219bc12ULL;
};

template<class ContainerAllocator>
struct DataType< ::common_msgs::lonlat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "common_msgs/lonlat";
  }

  static const char* value(const ::common_msgs::lonlat_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::common_msgs::lonlat_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64 lon\n\
float64 lat\n\
float32 heading\n\
";
  }

  static const char* value(const ::common_msgs::lonlat_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::common_msgs::lonlat_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lon);
      stream.next(m.lat);
      stream.next(m.heading);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct lonlat_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::common_msgs::lonlat_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::common_msgs::lonlat_<ContainerAllocator>& v)
  {
    s << indent << "lon: ";
    Printer<double>::stream(s, indent + "  ", v.lon);
    s << indent << "lat: ";
    Printer<double>::stream(s, indent + "  ", v.lat);
    s << indent << "heading: ";
    Printer<float>::stream(s, indent + "  ", v.heading);
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMON_MSGS_MESSAGE_LONLAT_H
