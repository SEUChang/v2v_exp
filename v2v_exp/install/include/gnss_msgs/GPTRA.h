// Generated by gencpp from file gnss_msgs/GPTRA.msg
// DO NOT EDIT!


#ifndef GNSS_MSGS_MESSAGE_GPTRA_H
#define GNSS_MSGS_MESSAGE_GPTRA_H


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
struct GPTRA_
{
  typedef GPTRA_<ContainerAllocator> Type;

  GPTRA_()
    : utc_time(0.0)
    , yaw(0.0)
    , pitch(0.0)
    , roll(0.0)
    , QF(0)
    , sta_num(0)
    , delay(0.0)
    , stn_id(0)  {
    }
  GPTRA_(const ContainerAllocator& _alloc)
    : utc_time(0.0)
    , yaw(0.0)
    , pitch(0.0)
    , roll(0.0)
    , QF(0)
    , sta_num(0)
    , delay(0.0)
    , stn_id(0)  {
  (void)_alloc;
    }



   typedef double _utc_time_type;
  _utc_time_type utc_time;

   typedef double _yaw_type;
  _yaw_type yaw;

   typedef double _pitch_type;
  _pitch_type pitch;

   typedef double _roll_type;
  _roll_type roll;

   typedef int8_t _QF_type;
  _QF_type QF;

   typedef int8_t _sta_num_type;
  _sta_num_type sta_num;

   typedef double _delay_type;
  _delay_type delay;

   typedef int8_t _stn_id_type;
  _stn_id_type stn_id;





  typedef boost::shared_ptr< ::gnss_msgs::GPTRA_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::gnss_msgs::GPTRA_<ContainerAllocator> const> ConstPtr;

}; // struct GPTRA_

typedef ::gnss_msgs::GPTRA_<std::allocator<void> > GPTRA;

typedef boost::shared_ptr< ::gnss_msgs::GPTRA > GPTRAPtr;
typedef boost::shared_ptr< ::gnss_msgs::GPTRA const> GPTRAConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::gnss_msgs::GPTRA_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::gnss_msgs::GPTRA_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace gnss_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'gnss_msgs': ['/home/sunhao/prog/wild/src/gnss_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::gnss_msgs::GPTRA_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::gnss_msgs::GPTRA_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_msgs::GPTRA_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::gnss_msgs::GPTRA_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_msgs::GPTRA_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::gnss_msgs::GPTRA_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::gnss_msgs::GPTRA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e282e90be2db4683bb90f41f45ec3f97";
  }

  static const char* value(const ::gnss_msgs::GPTRA_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe282e90be2db4683ULL;
  static const uint64_t static_value2 = 0xbb90f41f45ec3f97ULL;
};

template<class ContainerAllocator>
struct DataType< ::gnss_msgs::GPTRA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "gnss_msgs/GPTRA";
  }

  static const char* value(const ::gnss_msgs::GPTRA_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::gnss_msgs::GPTRA_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
\n\
float64 utc_time\n\
float64 yaw\n\
float64 pitch\n\
float64 roll\n\
int8 QF\n\
int8 sta_num\n\
float64 delay\n\
int8 stn_id\n\
";
  }

  static const char* value(const ::gnss_msgs::GPTRA_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::gnss_msgs::GPTRA_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.utc_time);
      stream.next(m.yaw);
      stream.next(m.pitch);
      stream.next(m.roll);
      stream.next(m.QF);
      stream.next(m.sta_num);
      stream.next(m.delay);
      stream.next(m.stn_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GPTRA_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::gnss_msgs::GPTRA_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::gnss_msgs::GPTRA_<ContainerAllocator>& v)
  {
    s << indent << "utc_time: ";
    Printer<double>::stream(s, indent + "  ", v.utc_time);
    s << indent << "yaw: ";
    Printer<double>::stream(s, indent + "  ", v.yaw);
    s << indent << "pitch: ";
    Printer<double>::stream(s, indent + "  ", v.pitch);
    s << indent << "roll: ";
    Printer<double>::stream(s, indent + "  ", v.roll);
    s << indent << "QF: ";
    Printer<int8_t>::stream(s, indent + "  ", v.QF);
    s << indent << "sta_num: ";
    Printer<int8_t>::stream(s, indent + "  ", v.sta_num);
    s << indent << "delay: ";
    Printer<double>::stream(s, indent + "  ", v.delay);
    s << indent << "stn_id: ";
    Printer<int8_t>::stream(s, indent + "  ", v.stn_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // GNSS_MSGS_MESSAGE_GPTRA_H
