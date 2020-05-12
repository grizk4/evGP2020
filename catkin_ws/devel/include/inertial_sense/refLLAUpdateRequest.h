// Generated by gencpp from file inertial_sense/refLLAUpdateRequest.msg
// DO NOT EDIT!


#ifndef INERTIAL_SENSE_MESSAGE_REFLLAUPDATEREQUEST_H
#define INERTIAL_SENSE_MESSAGE_REFLLAUPDATEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace inertial_sense
{
template <class ContainerAllocator>
struct refLLAUpdateRequest_
{
  typedef refLLAUpdateRequest_<ContainerAllocator> Type;

  refLLAUpdateRequest_()
    : lla()  {
      lla.assign(0.0);
  }
  refLLAUpdateRequest_(const ContainerAllocator& _alloc)
    : lla()  {
  (void)_alloc;
      lla.assign(0.0);
  }



   typedef boost::array<double, 3>  _lla_type;
  _lla_type lla;





  typedef boost::shared_ptr< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> const> ConstPtr;

}; // struct refLLAUpdateRequest_

typedef ::inertial_sense::refLLAUpdateRequest_<std::allocator<void> > refLLAUpdateRequest;

typedef boost::shared_ptr< ::inertial_sense::refLLAUpdateRequest > refLLAUpdateRequestPtr;
typedef boost::shared_ptr< ::inertial_sense::refLLAUpdateRequest const> refLLAUpdateRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace inertial_sense

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg'], 'inertial_sense': ['/home/nvidia/catkin_ws/src/inertial_sense_ros/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bcedbfd23400dfab69127aa7e23f992b";
  }

  static const char* value(const ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbcedbfd23400dfabULL;
  static const uint64_t static_value2 = 0x69127aa7e23f992bULL;
};

template<class ContainerAllocator>
struct DataType< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "inertial_sense/refLLAUpdateRequest";
  }

  static const char* value(const ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[3] lla\n\
";
  }

  static const char* value(const ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.lla);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct refLLAUpdateRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::inertial_sense::refLLAUpdateRequest_<ContainerAllocator>& v)
  {
    s << indent << "lla[]" << std::endl;
    for (size_t i = 0; i < v.lla.size(); ++i)
    {
      s << indent << "  lla[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.lla[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // INERTIAL_SENSE_MESSAGE_REFLLAUPDATEREQUEST_H
