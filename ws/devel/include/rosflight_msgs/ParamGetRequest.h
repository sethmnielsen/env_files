// Generated by gencpp from file rosflight_msgs/ParamGetRequest.msg
// DO NOT EDIT!


#ifndef ROSFLIGHT_MSGS_MESSAGE_PARAMGETREQUEST_H
#define ROSFLIGHT_MSGS_MESSAGE_PARAMGETREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosflight_msgs
{
template <class ContainerAllocator>
struct ParamGetRequest_
{
  typedef ParamGetRequest_<ContainerAllocator> Type;

  ParamGetRequest_()
    : name()  {
    }
  ParamGetRequest_(const ContainerAllocator& _alloc)
    : name(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;





  typedef boost::shared_ptr< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ParamGetRequest_

typedef ::rosflight_msgs::ParamGetRequest_<std::allocator<void> > ParamGetRequest;

typedef boost::shared_ptr< ::rosflight_msgs::ParamGetRequest > ParamGetRequestPtr;
typedef boost::shared_ptr< ::rosflight_msgs::ParamGetRequest const> ParamGetRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosflight_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsMessage': True, 'IsFixedSize': False, 'HasHeader': False}
// {'rosflight_msgs': ['/home/seth/dev/ws/src/rosflight/rosflight_msgs/msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__le__', '__lt__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsMessage< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "c1f3d28f1b044c871e6eff2e9fc3c667";
  }

  static const char* value(const ::rosflight_msgs::ParamGetRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xc1f3d28f1b044c87ULL;
  static const uint64_t static_value2 = 0x1e6eff2e9fc3c667ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosflight_msgs/ParamGetRequest";
  }

  static const char* value(const ::rosflight_msgs::ParamGetRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n"
"\n"
"string name\n"
;
  }

  static const char* value(const ::rosflight_msgs::ParamGetRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParamGetRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosflight_msgs::ParamGetRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosflight_msgs::ParamGetRequest_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSFLIGHT_MSGS_MESSAGE_PARAMGETREQUEST_H
