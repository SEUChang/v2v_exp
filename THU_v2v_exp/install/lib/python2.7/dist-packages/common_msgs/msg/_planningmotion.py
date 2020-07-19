# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from common_msgs/planningmotion.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import common_msgs.msg

class planningmotion(genpy.Message):
  _md5sum = "60c4de7218f80a33e433e83c3d8c4fcb"
  _type = "common_msgs/planningmotion"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """roadpoint[] points   #轨迹点
float32 guidespeed   #指导速度 m/s
float32 guideangle
float32 changelanedis
uint8  isvalid
int64 timestamp
================================================================================
MSG: common_msgs/roadpoint
int16 x                  #局部横坐标   cm
int16 y                  #局部纵坐标   cm
int32 gx                 #全局横坐标   cm
int32 gy                 #全局纵坐标   cm
uint8 roadtype           #道路属性
uint8 lanetype           #当前车道|总车道(4|4)
float32 heading          #heading
float32 curvature"""
  __slots__ = ['points','guidespeed','guideangle','changelanedis','isvalid','timestamp']
  _slot_types = ['common_msgs/roadpoint[]','float32','float32','float32','uint8','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       points,guidespeed,guideangle,changelanedis,isvalid,timestamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(planningmotion, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.points is None:
        self.points = []
      if self.guidespeed is None:
        self.guidespeed = 0.
      if self.guideangle is None:
        self.guideangle = 0.
      if self.changelanedis is None:
        self.changelanedis = 0.
      if self.isvalid is None:
        self.isvalid = 0
      if self.timestamp is None:
        self.timestamp = 0
    else:
      self.points = []
      self.guidespeed = 0.
      self.guideangle = 0.
      self.changelanedis = 0.
      self.isvalid = 0
      self.timestamp = 0

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
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_2h2i2B2f().pack(_x.x, _x.y, _x.gx, _x.gy, _x.roadtype, _x.lanetype, _x.heading, _x.curvature))
      _x = self
      buff.write(_get_struct_3fBq().pack(_x.guidespeed, _x.guideangle, _x.changelanedis, _x.isvalid, _x.timestamp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.points is None:
        self.points = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = common_msgs.msg.roadpoint()
        _x = val1
        start = end
        end += 22
        (_x.x, _x.y, _x.gx, _x.gy, _x.roadtype, _x.lanetype, _x.heading, _x.curvature,) = _get_struct_2h2i2B2f().unpack(str[start:end])
        self.points.append(val1)
      _x = self
      start = end
      end += 21
      (_x.guidespeed, _x.guideangle, _x.changelanedis, _x.isvalid, _x.timestamp,) = _get_struct_3fBq().unpack(str[start:end])
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
      length = len(self.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.points:
        _x = val1
        buff.write(_get_struct_2h2i2B2f().pack(_x.x, _x.y, _x.gx, _x.gy, _x.roadtype, _x.lanetype, _x.heading, _x.curvature))
      _x = self
      buff.write(_get_struct_3fBq().pack(_x.guidespeed, _x.guideangle, _x.changelanedis, _x.isvalid, _x.timestamp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.points is None:
        self.points = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.points = []
      for i in range(0, length):
        val1 = common_msgs.msg.roadpoint()
        _x = val1
        start = end
        end += 22
        (_x.x, _x.y, _x.gx, _x.gy, _x.roadtype, _x.lanetype, _x.heading, _x.curvature,) = _get_struct_2h2i2B2f().unpack(str[start:end])
        self.points.append(val1)
      _x = self
      start = end
      end += 21
      (_x.guidespeed, _x.guideangle, _x.changelanedis, _x.isvalid, _x.timestamp,) = _get_struct_3fBq().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3fBq = None
def _get_struct_3fBq():
    global _struct_3fBq
    if _struct_3fBq is None:
        _struct_3fBq = struct.Struct("<3fBq")
    return _struct_3fBq
_struct_2h2i2B2f = None
def _get_struct_2h2i2B2f():
    global _struct_2h2i2B2f
    if _struct_2h2i2B2f is None:
        _struct_2h2i2B2f = struct.Struct("<2h2i2B2f")
    return _struct_2h2i2B2f
