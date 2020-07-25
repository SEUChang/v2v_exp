# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from perception_msgs/GridObs.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import perception_msgs.msg

class GridObs(genpy.Message):
  _md5sum = "4acf58cf22a7c584ee4f8f50c03fe7d2"
  _type = "perception_msgs/GridObs"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
###

perception_msgs/Object[] obs
float32 grid_size
###
================================================================================
MSG: perception_msgs/Object
#
#


perception_msgs/Pt[] Pts

int8 id
int8 type

float64  relative_dir
float64  relative_speed


###  add gridcells info  ###



================================================================================
MSG: perception_msgs/Pt
####
###


float32 x
float32 y
"""
  __slots__ = ['obs','grid_size']
  _slot_types = ['perception_msgs/Object[]','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       obs,grid_size

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GridObs, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.obs is None:
        self.obs = []
      if self.grid_size is None:
        self.grid_size = 0.
    else:
      self.obs = []
      self.grid_size = 0.

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
      length = len(self.obs)
      buff.write(_struct_I.pack(length))
      for val1 in self.obs:
        length = len(val1.Pts)
        buff.write(_struct_I.pack(length))
        for val2 in val1.Pts:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _x = val1
        buff.write(_get_struct_2b2d().pack(_x.id, _x.type, _x.relative_dir, _x.relative_speed))
      buff.write(_get_struct_f().pack(self.grid_size))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.obs is None:
        self.obs = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obs = []
      for i in range(0, length):
        val1 = perception_msgs.msg.Object()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.Pts = []
        for i in range(0, length):
          val2 = perception_msgs.msg.Pt()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.Pts.append(val2)
        _x = val1
        start = end
        end += 18
        (_x.id, _x.type, _x.relative_dir, _x.relative_speed,) = _get_struct_2b2d().unpack(str[start:end])
        self.obs.append(val1)
      start = end
      end += 4
      (self.grid_size,) = _get_struct_f().unpack(str[start:end])
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
      length = len(self.obs)
      buff.write(_struct_I.pack(length))
      for val1 in self.obs:
        length = len(val1.Pts)
        buff.write(_struct_I.pack(length))
        for val2 in val1.Pts:
          _x = val2
          buff.write(_get_struct_2f().pack(_x.x, _x.y))
        _x = val1
        buff.write(_get_struct_2b2d().pack(_x.id, _x.type, _x.relative_dir, _x.relative_speed))
      buff.write(_get_struct_f().pack(self.grid_size))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.obs is None:
        self.obs = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obs = []
      for i in range(0, length):
        val1 = perception_msgs.msg.Object()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.Pts = []
        for i in range(0, length):
          val2 = perception_msgs.msg.Pt()
          _x = val2
          start = end
          end += 8
          (_x.x, _x.y,) = _get_struct_2f().unpack(str[start:end])
          val1.Pts.append(val2)
        _x = val1
        start = end
        end += 18
        (_x.id, _x.type, _x.relative_dir, _x.relative_speed,) = _get_struct_2b2d().unpack(str[start:end])
        self.obs.append(val1)
      start = end
      end += 4
      (self.grid_size,) = _get_struct_f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2f = None
def _get_struct_2f():
    global _struct_2f
    if _struct_2f is None:
        _struct_2f = struct.Struct("<2f")
    return _struct_2f
_struct_2b2d = None
def _get_struct_2b2d():
    global _struct_2b2d
    if _struct_2b2d is None:
        _struct_2b2d = struct.Struct("<2b2d")
    return _struct_2b2d
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f