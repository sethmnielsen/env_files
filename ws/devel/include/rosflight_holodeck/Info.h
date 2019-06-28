// Generated by gencpp from file rosflight_holodeck/Info.msg
// DO NOT EDIT!


#ifndef ROSFLIGHT_HOLODECK_MESSAGE_INFO_H
#define ROSFLIGHT_HOLODECK_MESSAGE_INFO_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <geometry_msgs/Vector3.h>

namespace rosflight_holodeck
{
template <class ContainerAllocator>
struct Info_
{
  typedef Info_<ContainerAllocator> Type;

  Info_()
    : header()
    , collision(false)
    , holodeck_position()
    , outputs()  {
      outputs.assign(0.0);
  }
  Info_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , collision(false)
    , holodeck_position(_alloc)
    , outputs()  {
  (void)_alloc;
      outputs.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef uint8_t _collision_type;
  _collision_type collision;

   typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _holodeck_position_type;
  _holodeck_position_type holodeck_position;

   typedef boost::array<float, 4>  _outputs_type;
  _outputs_type outputs;





  typedef boost::shared_ptr< ::rosflight_holodeck::Info_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosflight_holodeck::Info_<ContainerAllocator> const> ConstPtr;

}; // struct Info_

typedef ::rosflight_holodeck::Info_<std::allocator<void> > Info;

typedef boost::shared_ptr< ::rosflight_holodeck::Info > InfoPtr;
typedef boost::shared_ptr< ::rosflight_holodeck::Info const> InfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosflight_holodeck::Info_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosflight_holodeck::Info_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosflight_holodeck

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': True}
// {'rosflight_holodeck': ['/home/seth/dev/ws/src/rosflight_holodeck/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::rosflight_holodeck::Info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosflight_holodeck::Info_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_holodeck::Info_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_holodeck::Info_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_holodeck::Info_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_holodeck::Info_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosflight_holodeck::Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "104302e93cde498ce9b78f09171e075c";
  }

  static const char* value(const ::rosflight_holodeck::Info_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x104302e93cde498cULL;
  static const uint64_t static_value2 = 0xe9b78f09171e075cULL;
};

template<class ContainerAllocator>
struct DataType< ::rosflight_holodeck::Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosflight_holodeck/Info";
  }

  static const char* value(const ::rosflight_holodeck::Info_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosflight_holodeck::Info_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# rosflight_holodeck info message\n"
"\n"
"Header header\n"
"\n"
"bool collision         \n"
"geometry_msgs/Vector3 holodeck_position      \n"
"float32[4] outputs \n"
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

  static const char* value(const ::rosflight_holodeck::Info_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosflight_holodeck::Info_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.collision);
      stream.next(m.holodeck_position);
      stream.next(m.outputs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Info_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosflight_holodeck::Info_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosflight_holodeck::Info_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "collision: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.collision);
    s << indent << "holodeck_position: ";
    s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.holodeck_position);
    s << indent << "outputs[]" << std::endl;
    for (size_t i = 0; i < v.outputs.size(); ++i)
    {
      s << indent << "  outputs[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.outputs[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSFLIGHT_HOLODECK_MESSAGE_INFO_H
