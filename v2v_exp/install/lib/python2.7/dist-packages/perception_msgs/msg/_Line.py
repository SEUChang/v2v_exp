# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from perception_msgs/Line.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import perception_msgs.msg
import std_msgs.msg

class Line(genpy.Message):
  _md5sum = "d68493cc93c1caae986c853169b539f3"
  _type = "perception_msgs/Line"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """#############################
###       SunHao          ###
#############################

perception_msgs/Point[] pts

#############################
int8 is_main # Is the lane center lane of this section
float64 offset
float64 width

#############################

#int32 id
std_msgs/String uuid

#############################

std_msgs/String main_uuid

#int32 left_id
std_msgs/String left_uuid

#int32 right_id
std_msgs/String right_uuid


#############################

#int32 section_id
std_msgs/String section_uuid

#############################


================================================================================
MSG: perception_msgs/Point
#############################
###       SunHao          ###
#############################

float64 x
float64 y
float64 z
float64 s
float64 cuv
float64 heading
float64 speed
float64 speedkmh

############################


int32 rtk_mode # 0: 无影响 1： Not rtk stop
int32 driving_mode # acc or collision avoidance
int32 special_mode  #

####################################33
int32 obs_search_strategy  # 0: donot search obs
int32 speed_mode  #
int32 obs_strategy  #
int32 follow_strategy  #
int32 cross_option  #
int32 reserved_option  #



############################

#int32 id
std_msgs/String uuid

#############################

#int32 line_id
std_msgs/String lane_uuid

#############################

#int32 section_id
std_msgs/String section_uuid



================================================================================
MSG: std_msgs/String
string data
"""
  __slots__ = ['pts','is_main','offset','width','uuid','main_uuid','left_uuid','right_uuid','section_uuid']
  _slot_types = ['perception_msgs/Point[]','int8','float64','float64','std_msgs/String','std_msgs/String','std_msgs/String','std_msgs/String','std_msgs/String']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pts,is_main,offset,width,uuid,main_uuid,left_uuid,right_uuid,section_uuid

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Line, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pts is None:
        self.pts = []
      if self.is_main is None:
        self.is_main = 0
      if self.offset is None:
        self.offset = 0.
      if self.width is None:
        self.width = 0.
      if self.uuid is None:
        self.uuid = std_msgs.msg.String()
      if self.main_uuid is None:
        self.main_uuid = std_msgs.msg.String()
      if self.left_uuid is None:
        self.left_uuid = std_msgs.msg.String()
      if self.right_uuid is None:
        self.right_uuid = std_msgs.msg.String()
      if self.section_uuid is None:
        self.section_uuid = std_msgs.msg.String()
    else:
      self.pts = []
      self.is_main = 0
      self.offset = 0.
      self.width = 0.
      self.uuid = std_msgs.msg.String()
      self.main_uuid = std_msgs.msg.String()
      self.left_uuid = std_msgs.msg.String()
      self.right_uuid = std_msgs.msg.String()
      self.section_uuid = std_msgs.msg.String()

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
      length = len(self.pts)
      buff.write(_struct_I.pack(length))
      for val1 in self.pts:
        _x = val1
        buff.write(_get_struct_8d9i().pack(_x.x, _x.y, _x.z, _x.s, _x.cuv, _x.heading, _x.speed, _x.speedkmh, _x.rtk_mode, _x.driving_mode, _x.special_mode, _x.obs_search_strategy, _x.speed_mode, _x.obs_strategy, _x.follow_strategy, _x.cross_option, _x.reserved_option))
        _v1 = val1.uuid
        _x = _v1.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v2 = val1.lane_uuid
        _x = _v2.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v3 = val1.section_uuid
        _x = _v3.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_b2d().pack(_x.is_main, _x.offset, _x.width))
      _x = self.uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.main_uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.left_uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.right_uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.section_uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pts is None:
        self.pts = None
      if self.uuid is None:
        self.uuid = std_msgs.msg.String()
      if self.main_uuid is None:
        self.main_uuid = std_msgs.msg.String()
      if self.left_uuid is None:
        self.left_uuid = std_msgs.msg.String()
      if self.right_uuid is None:
        self.right_uuid = std_msgs.msg.String()
      if self.section_uuid is None:
        self.section_uuid = std_msgs.msg.String()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pts = []
      for i in range(0, length):
        val1 = perception_msgs.msg.Point()
        _x = val1
        start = end
        end += 100
        (_x.x, _x.y, _x.z, _x.s, _x.cuv, _x.heading, _x.speed, _x.speedkmh, _x.rtk_mode, _x.driving_mode, _x.special_mode, _x.obs_search_strategy, _x.speed_mode, _x.obs_strategy, _x.follow_strategy, _x.cross_option, _x.reserved_option,) = _get_struct_8d9i().unpack(str[start:end])
        _v4 = val1.uuid
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v4.data = str[start:end].decode('utf-8')
        else:
          _v4.data = str[start:end]
        _v5 = val1.lane_uuid
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v5.data = str[start:end].decode('utf-8')
        else:
          _v5.data = str[start:end]
        _v6 = val1.section_uuid
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v6.data = str[start:end].decode('utf-8')
        else:
          _v6.data = str[start:end]
        self.pts.append(val1)
      _x = self
      start = end
      end += 17
      (_x.is_main, _x.offset, _x.width,) = _get_struct_b2d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.uuid.data = str[start:end].decode('utf-8')
      else:
        self.uuid.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.main_uuid.data = str[start:end].decode('utf-8')
      else:
        self.main_uuid.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.left_uuid.data = str[start:end].decode('utf-8')
      else:
        self.left_uuid.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.right_uuid.data = str[start:end].decode('utf-8')
      else:
        self.right_uuid.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.section_uuid.data = str[start:end].decode('utf-8')
      else:
        self.section_uuid.data = str[start:end]
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
      length = len(self.pts)
      buff.write(_struct_I.pack(length))
      for val1 in self.pts:
        _x = val1
        buff.write(_get_struct_8d9i().pack(_x.x, _x.y, _x.z, _x.s, _x.cuv, _x.heading, _x.speed, _x.speedkmh, _x.rtk_mode, _x.driving_mode, _x.special_mode, _x.obs_search_strategy, _x.speed_mode, _x.obs_strategy, _x.follow_strategy, _x.cross_option, _x.reserved_option))
        _v7 = val1.uuid
        _x = _v7.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v8 = val1.lane_uuid
        _x = _v8.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v9 = val1.section_uuid
        _x = _v9.data
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_b2d().pack(_x.is_main, _x.offset, _x.width))
      _x = self.uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.main_uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.left_uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.right_uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.section_uuid.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pts is None:
        self.pts = None
      if self.uuid is None:
        self.uuid = std_msgs.msg.String()
      if self.main_uuid is None:
        self.main_uuid = std_msgs.msg.String()
      if self.left_uuid is None:
        self.left_uuid = std_msgs.msg.String()
      if self.right_uuid is None:
        self.right_uuid = std_msgs.msg.String()
      if self.section_uuid is None:
        self.section_uuid = std_msgs.msg.String()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.pts = []
      for i in range(0, length):
        val1 = perception_msgs.msg.Point()
        _x = val1
        start = end
        end += 100
        (_x.x, _x.y, _x.z, _x.s, _x.cuv, _x.heading, _x.speed, _x.speedkmh, _x.rtk_mode, _x.driving_mode, _x.special_mode, _x.obs_search_strategy, _x.speed_mode, _x.obs_strategy, _x.follow_strategy, _x.cross_option, _x.reserved_option,) = _get_struct_8d9i().unpack(str[start:end])
        _v10 = val1.uuid
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v10.data = str[start:end].decode('utf-8')
        else:
          _v10.data = str[start:end]
        _v11 = val1.lane_uuid
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v11.data = str[start:end].decode('utf-8')
        else:
          _v11.data = str[start:end]
        _v12 = val1.section_uuid
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          _v12.data = str[start:end].decode('utf-8')
        else:
          _v12.data = str[start:end]
        self.pts.append(val1)
      _x = self
      start = end
      end += 17
      (_x.is_main, _x.offset, _x.width,) = _get_struct_b2d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.uuid.data = str[start:end].decode('utf-8')
      else:
        self.uuid.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.main_uuid.data = str[start:end].decode('utf-8')
      else:
        self.main_uuid.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.left_uuid.data = str[start:end].decode('utf-8')
      else:
        self.left_uuid.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.right_uuid.data = str[start:end].decode('utf-8')
      else:
        self.right_uuid.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.section_uuid.data = str[start:end].decode('utf-8')
      else:
        self.section_uuid.data = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8d9i = None
def _get_struct_8d9i():
    global _struct_8d9i
    if _struct_8d9i is None:
        _struct_8d9i = struct.Struct("<8d9i")
    return _struct_8d9i
_struct_b2d = None
def _get_struct_b2d():
    global _struct_b2d
    if _struct_b2d is None:
        _struct_b2d = struct.Struct("<b2d")
    return _struct_b2d
