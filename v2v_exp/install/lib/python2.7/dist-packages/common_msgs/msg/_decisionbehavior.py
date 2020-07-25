# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from common_msgs/decisionbehavior.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import common_msgs.msg

class decisionbehavior(genpy.Message):
  _md5sum = "39bd5187cf8d5459e943d2531dd4d87e"
  _type = "common_msgs/decisionbehavior"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """uint8 drivebehavior   #驾驶行为
sensorobject[] obs    #障碍物
uint8 isvalid         #有效位
uint8 turnlights      #转向灯
uint8 laneblock
uint8 adjustspeed     #调整速度　１　调整　０　不变
int64 timestamp       #时间戳
================================================================================
MSG: common_msgs/sensorobject
uint8   id                     #跟踪的ID
float32 x                      #横坐标
float32 y                      #纵坐标
float32 relspeedy              #纵轴相对速度
float32 relspeedx              #横轴相对速度
float32 azimuth                #航向
float32 width                  #宽度
float32 length                 #长度
float32 height                 #高度
uint8   classification         #类别
uint8   value                  #置信度
point3d[] points #轮廓点数据 
================================================================================
MSG: common_msgs/point3d
float32 x
float32 y
float32 z"""
  __slots__ = ['drivebehavior','obs','isvalid','turnlights','laneblock','adjustspeed','timestamp']
  _slot_types = ['uint8','common_msgs/sensorobject[]','uint8','uint8','uint8','uint8','int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       drivebehavior,obs,isvalid,turnlights,laneblock,adjustspeed,timestamp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(decisionbehavior, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.drivebehavior is None:
        self.drivebehavior = 0
      if self.obs is None:
        self.obs = []
      if self.isvalid is None:
        self.isvalid = 0
      if self.turnlights is None:
        self.turnlights = 0
      if self.laneblock is None:
        self.laneblock = 0
      if self.adjustspeed is None:
        self.adjustspeed = 0
      if self.timestamp is None:
        self.timestamp = 0
    else:
      self.drivebehavior = 0
      self.obs = []
      self.isvalid = 0
      self.turnlights = 0
      self.laneblock = 0
      self.adjustspeed = 0
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
      buff.write(_get_struct_B().pack(self.drivebehavior))
      length = len(self.obs)
      buff.write(_struct_I.pack(length))
      for val1 in self.obs:
        _x = val1
        buff.write(_get_struct_B8f2B().pack(_x.id, _x.x, _x.y, _x.relspeedy, _x.relspeedx, _x.azimuth, _x.width, _x.length, _x.height, _x.classification, _x.value))
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_4Bq().pack(_x.isvalid, _x.turnlights, _x.laneblock, _x.adjustspeed, _x.timestamp))
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
      end += 1
      (self.drivebehavior,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obs = []
      for i in range(0, length):
        val1 = common_msgs.msg.sensorobject()
        _x = val1
        start = end
        end += 35
        (_x.id, _x.x, _x.y, _x.relspeedy, _x.relspeedx, _x.azimuth, _x.width, _x.length, _x.height, _x.classification, _x.value,) = _get_struct_B8f2B().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = common_msgs.msg.point3d()
          _x = val2
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          val1.points.append(val2)
        self.obs.append(val1)
      _x = self
      start = end
      end += 12
      (_x.isvalid, _x.turnlights, _x.laneblock, _x.adjustspeed, _x.timestamp,) = _get_struct_4Bq().unpack(str[start:end])
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
      buff.write(_get_struct_B().pack(self.drivebehavior))
      length = len(self.obs)
      buff.write(_struct_I.pack(length))
      for val1 in self.obs:
        _x = val1
        buff.write(_get_struct_B8f2B().pack(_x.id, _x.x, _x.y, _x.relspeedy, _x.relspeedx, _x.azimuth, _x.width, _x.length, _x.height, _x.classification, _x.value))
        length = len(val1.points)
        buff.write(_struct_I.pack(length))
        for val2 in val1.points:
          _x = val2
          buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
      _x = self
      buff.write(_get_struct_4Bq().pack(_x.isvalid, _x.turnlights, _x.laneblock, _x.adjustspeed, _x.timestamp))
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
      end += 1
      (self.drivebehavior,) = _get_struct_B().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obs = []
      for i in range(0, length):
        val1 = common_msgs.msg.sensorobject()
        _x = val1
        start = end
        end += 35
        (_x.id, _x.x, _x.y, _x.relspeedy, _x.relspeedx, _x.azimuth, _x.width, _x.length, _x.height, _x.classification, _x.value,) = _get_struct_B8f2B().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.points = []
        for i in range(0, length):
          val2 = common_msgs.msg.point3d()
          _x = val2
          start = end
          end += 12
          (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
          val1.points.append(val2)
        self.obs.append(val1)
      _x = self
      start = end
      end += 12
      (_x.isvalid, _x.turnlights, _x.laneblock, _x.adjustspeed, _x.timestamp,) = _get_struct_4Bq().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_4Bq = None
def _get_struct_4Bq():
    global _struct_4Bq
    if _struct_4Bq is None:
        _struct_4Bq = struct.Struct("<4Bq")
    return _struct_4Bq
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_B8f2B = None
def _get_struct_B8f2B():
    global _struct_B8f2B
    if _struct_B8f2B is None:
        _struct_B8f2B = struct.Struct("<B8f2B")
    return _struct_B8f2B
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f