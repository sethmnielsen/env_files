// Generated by gencpp from file rosflight_msgs/Attitude.msg
// DO NOT EDIT!


#ifndef ROSFLIGHT_MSGS_MESSAGE_ATTITUDE_H
#define ROSFLIGHT_MSGS_MESSAGE_ATTITUDE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Quaternion.h>
#include <geometry_msgs/Vector3.h>

namespace rosflight_msgs
{
template <class ContainerAllocator>
struct Attitude_
{
  typedef Attitude_<ContainerAllocator> Type;

  Attitude_()
    : header()
    , attitude()
    , angular_velocity()  {
    }
  Attitude_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , attitude(_alloc)
    , angular_velocity(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::geometry_msgs::Quaternion_<ContainerAllocator>  _attitude_type;
  _attitude_type attitude;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _angular_velocity_type;
  _angular_velocity_type angular_velocity;





  typedef boost::shared_ptr< ::rosflight_msgs::Attitude_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosflight_msgs::Attitude_<ContainerAllocator> const> ConstPtr;

}; // struct Attitude_

typedef ::rosflight_msgs::Attitude_<std::allocator<void> > Attitude;

typedef boost::shared_ptr< ::rosflight_msgs::Attitude > AttitudePtr;
typedef boost::shared_ptr< ::rosflight_msgs::Attitude const> AttitudeConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosflight_msgs::Attitude_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosflight_msgs::Attitude_<ContainerAllocator> >::stream(s, "", v);
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
struct IsMessage< ::rosflight_msgs::Attitude_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosflight_msgs::Attitude_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_msgs::Attitude_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_msgs::Attitude_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_msgs::Attitude_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_msgs::Attitude_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosflight_msgs::Attitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cedefaed10c2df6e4f13817850ee8bc6";
  }

  static const char* value(const ::rosflight_msgs::Attitude_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcedefaed10c2df6eULL;
  static const uint64_t static_value2 = 0x4f13817850ee8bc6ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosflight_msgs::Attitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosflight_msgs/Attitude";
  }

  static const char* value(const ::rosflight_msgs::Attitude_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosflight_msgs::Attitude_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Defines an Euler-Angle Based Attitude Message\n"
"\n"
"Header header\n"
"geometry_msgs/Quaternion attitude\n"
"geometry_msgs/Vector3 angular_velocity\n"
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
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::rosflight_msgs::Attitude_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosflight_msgs::Attitude_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.attitude);
      stream.next(m.angular_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Attitude_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosflight_msgs::Attitude_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosflight_msgs::Attitude_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "attitude: ";
    s << std::endl;
    Printer< ::geometry_msgs::Quaternion_<ContainerAllocator> >::stream(s, indent + "  ", v.attitude);
    s << indent << "angular_velocity: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.angular_velocity);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSFLIGHT_MSGS_MESSAGE_ATTITUDE_H
