// Generated by gencpp from file perception_msgs/GlobalMap.msg
// DO NOT EDIT!


#ifndef PERCEPTION_MSGS_MESSAGE_GLOBALMAP_H
#define PERCEPTION_MSGS_MESSAGE_GLOBALMAP_H

#include <ros/service_traits.h>


#include <perception_msgs/GlobalMapRequest.h>
#include <perception_msgs/GlobalMapResponse.h>


namespace perception_msgs
{

struct GlobalMap
{

typedef GlobalMapRequest Request;
typedef GlobalMapResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct GlobalMap
} // namespace perception_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::perception_msgs::GlobalMap > {
  static const char* value()
  {
    return "d26fdf98f211670f5a52fac3522681f7";
  }

  static const char* value(const ::perception_msgs::GlobalMap&) { return value(); }
};

template<>
struct DataType< ::perception_msgs::GlobalMap > {
  static const char* value()
  {
    return "perception_msgs/GlobalMap";
  }

  static const char* value(const ::perception_msgs::GlobalMap&) { return value(); }
};


// service_traits::MD5Sum< ::perception_msgs::GlobalMapRequest> should match 
// service_traits::MD5Sum< ::perception_msgs::GlobalMap > 
template<>
struct MD5Sum< ::perception_msgs::GlobalMapRequest>
{
  static const char* value()
  {
    return MD5Sum< ::perception_msgs::GlobalMap >::value();
  }
  static const char* value(const ::perception_msgs::GlobalMapRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::perception_msgs::GlobalMapRequest> should match 
// service_traits::DataType< ::perception_msgs::GlobalMap > 
template<>
struct DataType< ::perception_msgs::GlobalMapRequest>
{
  static const char* value()
  {
    return DataType< ::perception_msgs::GlobalMap >::value();
  }
  static const char* value(const ::perception_msgs::GlobalMapRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::perception_msgs::GlobalMapResponse> should match 
// service_traits::MD5Sum< ::perception_msgs::GlobalMap > 
template<>
struct MD5Sum< ::perception_msgs::GlobalMapResponse>
{
  static const char* value()
  {
    return MD5Sum< ::perception_msgs::GlobalMap >::value();
  }
  static const char* value(const ::perception_msgs::GlobalMapResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::perception_msgs::GlobalMapResponse> should match 
// service_traits::DataType< ::perception_msgs::GlobalMap > 
template<>
struct DataType< ::perception_msgs::GlobalMapResponse>
{
  static const char* value()
  {
    return DataType< ::perception_msgs::GlobalMap >::value();
  }
  static const char* value(const ::perception_msgs::GlobalMapResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PERCEPTION_MSGS_MESSAGE_GLOBALMAP_H
