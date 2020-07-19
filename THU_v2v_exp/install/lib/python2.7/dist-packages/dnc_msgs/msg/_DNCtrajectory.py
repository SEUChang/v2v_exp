# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from dnc_msgs/DNCtrajectory.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import dnc_msgs.msg
import std_msgs.msg

class DNCtrajectory(genpy.Message):
  _md5sum = "30984eee6f59e717ab9028ecc27d7d49"
  _type = "dnc_msgs/DNCtrajectory"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """#############################
###       SunHao          ###
#############################

std_msgs/Header header

int32 mode
float32 desired_ax
dnc_msgs/DNCpath path

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: dnc_msgs/DNCpath
#############################
###       SunHao          ###
#############################


dnc_msgs/DNCpoint[] pts
bool s_flag
bool h_flag
================================================================================
MSG: dnc_msgs/DNCpoint
#############################
###       SunHao          ###
#############################


float64 x
float64 y
float64 s

float64 cuv
float64 heading
float64 speed

float32 h
"""
  __slots__ = ['header','mode','desired_ax','path']
  _slot_types = ['std_msgs/Header','int32','float32','dnc_msgs/DNCpath']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,mode,desired_ax,path

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DNCtrajectory, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.mode is None:
        self.mode = 0
      if self.desired_ax is None:
        self.desired_ax = 0.
      if self.path is None:
        self.path = dnc_msgs.msg.DNCpath()
    else:
      self.header = std_msgs.msg.Header()
      self.mode = 0
      self.desired_ax = 0.
      self.path = dnc_msgs.msg.DNCpath()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_if().pack(_x.mode, _x.desired_ax))
      length = len(self.path.pts)
      buff.write(_struct_I.pack(length))
      for val1 in self.path.pts:
        _x = val1
        buff.write(_get_struct_6df().pack(_x.x, _x.y, _x.s, _x.cuv, _x.heading, _x.speed, _x.h))
      _x = self
      buff.write(_get_struct_2B().pack(_x.path.s_flag, _x.path.h_flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.path is None:
        self.path = dnc_msgs.msg.DNCpath()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.mode, _x.desired_ax,) = _get_struct_if().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.path.pts = []
      for i in range(0, length):
        val1 = dnc_msgs.msg.DNCpoint()
        _x = val1
        start = end
        end += 52
        (_x.x, _x.y, _x.s, _x.cuv, _x.heading, _x.speed, _x.h,) = _get_struct_6df().unpack(str[start:end])
        self.path.pts.append(val1)
      _x = self
      start = end
      end += 2
      (_x.path.s_flag, _x.path.h_flag,) = _get_struct_2B().unpack(str[start:end])
      self.path.s_flag = bool(self.path.s_flag)
      self.path.h_flag = bool(self.path.h_flag)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_if().pack(_x.mode, _x.desired_ax))
      length = len(self.path.pts)
      buff.write(_struct_I.pack(length))
      for val1 in self.path.pts:
        _x = val1
        buff.write(_get_struct_6df().pack(_x.x, _x.y, _x.s, _x.cuv, _x.heading, _x.speed, _x.h))
      _x = self
      buff.write(_get_struct_2B().pack(_x.path.s_flag, _x.path.h_flag))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.path is None:
        self.path = dnc_msgs.msg.DNCpath()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.mode, _x.desired_ax,) = _get_struct_if().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.path.pts = []
      for i in range(0, length):
        val1 = dnc_msgs.msg.DNCpoint()
        _x = val1
        start = end
        end += 52
        (_x.x, _x.y, _x.s, _x.cuv, _x.heading, _x.speed, _x.h,) = _get_struct_6df().unpack(str[start:end])
        self.path.pts.append(val1)
      _x = self
      start = end
      end += 2
      (_x.path.s_flag, _x.path.h_flag,) = _get_struct_2B().unpack(str[start:end])
      self.path.s_flag = bool(self.path.s_flag)
      self.path.h_flag = bool(self.path.h_flag)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_6df = None
def _get_struct_6df():
    global _struct_6df
    if _struct_6df is None:
        _struct_6df = struct.Struct("<6df")
    return _struct_6df
_struct_2B = None
def _get_struct_2B():
    global _struct_2B
    if _struct_2B is None:
        _struct_2B = struct.Struct("<2B")
    return _struct_2B
_struct_if = None
def _get_struct_if():
    global _struct_if
    if _struct_if is None:
        _struct_if = struct.Struct("<if")
    return _struct_if
