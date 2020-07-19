// Generated by gencpp from file dnc_msgs/SmoothPath.msg
// DO NOT EDIT!


#ifndef DNC_MSGS_MESSAGE_SMOOTHPATH_H
#define DNC_MSGS_MESSAGE_SMOOTHPATH_H

#include <ros/service_traits.h>


#include <dnc_msgs/SmoothPathRequest.h>
#include <dnc_msgs/SmoothPathResponse.h>


namespace dnc_msgs
{

struct SmoothPath
{

typedef SmoothPathRequest Request;
typedef SmoothPathResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct SmoothPath
} // namespace dnc_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::dnc_msgs::SmoothPath > {
  static const char* value()
  {
    return "f4c127e6fd3a1d84b001ac0a03f0e720";
  }

  static const char* value(const ::dnc_msgs::SmoothPath&) { return value(); }
};

template<>
struct DataType< ::dnc_msgs::SmoothPath > {
  static const char* value()
  {
    return "dnc_msgs/SmoothPath";
  }

  static const char* value(const ::dnc_msgs::SmoothPath&) { return value(); }
};


// service_traits::MD5Sum< ::dnc_msgs::SmoothPathRequest> should match 
// service_traits::MD5Sum< ::dnc_msgs::SmoothPath > 
template<>
struct MD5Sum< ::dnc_msgs::SmoothPathRequest>
{
  static const char* value()
  {
    return MD5Sum< ::dnc_msgs::SmoothPath >::value();
  }
  static const char* value(const ::dnc_msgs::SmoothPathRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::dnc_msgs::SmoothPathRequest> should match 
// service_traits::DataType< ::dnc_msgs::SmoothPath > 
template<>
struct DataType< ::dnc_msgs::SmoothPathRequest>
{
  static const char* value()
  {
    return DataType< ::dnc_msgs::SmoothPath >::value();
  }
  static const char* value(const ::dnc_msgs::SmoothPathRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::dnc_msgs::SmoothPathResponse> should match 
// service_traits::MD5Sum< ::dnc_msgs::SmoothPath > 
template<>
struct MD5Sum< ::dnc_msgs::SmoothPathResponse>
{
  static const char* value()
  {
    return MD5Sum< ::dnc_msgs::SmoothPath >::value();
  }
  static const char* value(const ::dnc_msgs::SmoothPathResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::dnc_msgs::SmoothPathResponse> should match 
// service_traits::DataType< ::dnc_msgs::SmoothPath > 
template<>
struct DataType< ::dnc_msgs::SmoothPathResponse>
{
  static const char* value()
  {
    return DataType< ::dnc_msgs::SmoothPath >::value();
  }
  static const char* value(const ::dnc_msgs::SmoothPathResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // DNC_MSGS_MESSAGE_SMOOTHPATH_H
