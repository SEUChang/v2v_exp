// Generated by gencpp from file common_msgs/TranslateCoordinateRequest.msg
// DO NOT EDIT!


#ifndef COMMON_MSGS_MESSAGE_TRANSLATECOORDINATEREQUEST_H
#define COMMON_MSGS_MESSAGE_TRANSLATECOORDINATEREQUEST_H


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
struct TranslateCoordinateRequest_
{
  typedef TranslateCoordinateRequest_<ContainerAllocator> Type;

  TranslateCoordinateRequest_()
    : originx()
    , originy()  {
    }
  TranslateCoordinateRequest_(const ContainerAllocator& _alloc)
    : originx(_alloc)
    , originy(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _originx_type;
  _originx_type originx;

   typedef std::vector<double, typename ContainerAllocator::template rebind<double>::other >  _originy_type;
  _originy_type originy;





  typedef boost::shared_ptr< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct TranslateCoordinateRequest_

typedef ::common_msgs::TranslateCoordinateRequest_<std::allocator<void> > TranslateCoordinateRequest;

typedef boost::shared_ptr< ::common_msgs::TranslateCoordinateRequest > TranslateCoordinateRequestPtr;
typedef boost::shared_ptr< ::common_msgs::TranslateCoordinateRequest const> TranslateCoordinateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bd4d1e6b7683eb6bb823948b46517c0e";
  }

  static const char* value(const ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbd4d1e6b7683eb6bULL;
  static const uint64_t static_value2 = 0xb823948b46517c0eULL;
};

template<class ContainerAllocator>
struct DataType< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "common_msgs/TranslateCoordinateRequest";
  }

  static const char* value(const ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[] originx\n\
float64[] originy\n\
";
  }

  static const char* value(const ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.originx);
      stream.next(m.originy);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TranslateCoordinateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::common_msgs::TranslateCoordinateRequest_<ContainerAllocator>& v)
  {
    s << indent << "originx[]" << std::endl;
    for (size_t i = 0; i < v.originx.size(); ++i)
    {
      s << indent << "  originx[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.originx[i]);
    }
    s << indent << "originy[]" << std::endl;
    for (size_t i = 0; i < v.originy.size(); ++i)
    {
      s << indent << "  originy[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.originy[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // COMMON_MSGS_MESSAGE_TRANSLATECOORDINATEREQUEST_H