# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from perception_msgs/V2XUnit.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class V2XUnit(genpy.Message):
  _md5sum = "45bc168a1e84404a48fc0ed86b72e629"
  _type = "perception_msgs/V2XUnit"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """


#std_msgs/String info_id
int32  id
float32 x
float32 y
float32 yaw
float32 speed
float32 utc_time
uint32 platoon_status
##----------------------
float32 bdata0
float32 bdata1
float32 bdata2

"""
  __slots__ = ['id','x','y','yaw','speed','utc_time','platoon_status','bdata0','bdata1','bdata2']
  _slot_types = ['int32','float32','float32','float32','float32','float32','uint32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,x,y,yaw,speed,utc_time,platoon_status,bdata0,bdata1,bdata2

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(V2XUnit, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.yaw is None:
        self.yaw = 0.
      if self.speed is None:
        self.speed = 0.
      if self.utc_time is None:
        self.utc_time = 0.
      if self.platoon_status is None:
        self.platoon_status = 0
      if self.bdata0 is None:
        self.bdata0 = 0.
      if self.bdata1 is None:
        self.bdata1 = 0.
      if self.bdata2 is None:
        self.bdata2 = 0.
    else:
      self.id = 0
      self.x = 0.
      self.y = 0.
      self.yaw = 0.
      self.speed = 0.
      self.utc_time = 0.
      self.platoon_status = 0
      self.bdata0 = 0.
      self.bdata1 = 0.
      self.bdata2 = 0.

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
      buff.write(_get_struct_i5fI3f().pack(_x.id, _x.x, _x.y, _x.yaw, _x.speed, _x.utc_time, _x.platoon_status, _x.bdata0, _x.bdata1, _x.bdata2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.id, _x.x, _x.y, _x.yaw, _x.speed, _x.utc_time, _x.platoon_status, _x.bdata0, _x.bdata1, _x.bdata2,) = _get_struct_i5fI3f().unpack(str[start:end])
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
      buff.write(_get_struct_i5fI3f().pack(_x.id, _x.x, _x.y, _x.yaw, _x.speed, _x.utc_time, _x.platoon_status, _x.bdata0, _x.bdata1, _x.bdata2))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 40
      (_x.id, _x.x, _x.y, _x.yaw, _x.speed, _x.utc_time, _x.platoon_status, _x.bdata0, _x.bdata1, _x.bdata2,) = _get_struct_i5fI3f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i5fI3f = None
def _get_struct_i5fI3f():
    global _struct_i5fI3f
    if _struct_i5fI3f is None:
        _struct_i5fI3f = struct.Struct("<i5fI3f")
    return _struct_i5fI3f
