// Generated by gencpp from file rosflight_msgs/RCRaw.msg
// DO NOT EDIT!


#ifndef ROSFLIGHT_MSGS_MESSAGE_RCRAW_H
#define ROSFLIGHT_MSGS_MESSAGE_RCRAW_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace rosflight_msgs
{
template <class ContainerAllocator>
struct RCRaw_
{
  typedef RCRaw_<ContainerAllocator> Type;

  RCRaw_()
    : header()
    , values()  {
      values.assign(0);
  }
  RCRaw_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , values()  {
  (void)_alloc;
      values.assign(0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<uint16_t, 8>  _values_type;
  _values_type values;





  typedef boost::shared_ptr< ::rosflight_msgs::RCRaw_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosflight_msgs::RCRaw_<ContainerAllocator> const> ConstPtr;

}; // struct RCRaw_

typedef ::rosflight_msgs::RCRaw_<std::allocator<void> > RCRaw;

typedef boost::shared_ptr< ::rosflight_msgs::RCRaw > RCRawPtr;
typedef boost::shared_ptr< ::rosflight_msgs::RCRaw const> RCRawConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosflight_msgs::RCRaw_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosflight_msgs::RCRaw_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosflight_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': True}
// {'rosflight_msgs': ['/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::rosflight_msgs::RCRaw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosflight_msgs::RCRaw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_msgs::RCRaw_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_msgs::RCRaw_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_msgs::RCRaw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_msgs::RCRaw_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosflight_msgs::RCRaw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e07e0a6c2de8828f77c94cd208f693e";
  }

  static const char* value(const ::rosflight_msgs::RCRaw_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e07e0a6c2de8828ULL;
  static const uint64_t static_value2 = 0xf77c94cd208f693eULL;
};

template<class ContainerAllocator>
struct DataType< ::rosflight_msgs::RCRaw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosflight_msgs/RCRaw";
  }

  static const char* value(const ::rosflight_msgs::RCRaw_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosflight_msgs::RCRaw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# raw servo outputs\n"
"\n"
"Header header\n"
"uint16[8] values\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
;
  }

  static const char* value(const ::rosflight_msgs::RCRaw_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosflight_msgs::RCRaw_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RCRaw_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosflight_msgs::RCRaw_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosflight_msgs::RCRaw_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "values[]" << std::endl;
    for (size_t i = 0; i < v.values.size(); ++i)
    {
      s << indent << "  values[" << i << "]: ";
      Printer<uint16_t>::stream(s, indent + "  ", v.values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSFLIGHT_MSGS_MESSAGE_RCRAW_H
