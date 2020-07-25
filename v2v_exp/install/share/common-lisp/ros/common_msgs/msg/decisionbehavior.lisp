; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude decisionbehavior.msg.html

(cl:defclass <decisionbehavior> (roslisp-msg-protocol:ros-message)
  ((drivebehavior
    :reader drivebehavior
    :initarg :drivebehavior
    :type cl:fixnum
    :initform 0)
   (obs
    :reader obs
    :initarg :obs
    :type (cl:vector common_msgs-msg:sensorobject)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:sensorobject :initial-element (cl:make-instance 'common_msgs-msg:sensorobject)))
   (isvalid
    :reader isvalid
    :initarg :isvalid
    :type cl:fixnum
    :initform 0)
   (turnlights
    :reader turnlights
    :initarg :turnlights
    :type cl:fixnum
    :initform 0)
   (laneblock
    :reader laneblock
    :initarg :laneblock
    :type cl:fixnum
    :initform 0)
   (adjustspeed
    :reader adjustspeed
    :initarg :adjustspeed
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0))
)

(cl:defclass decisionbehavior (<decisionbehavior>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <decisionbehavior>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'decisionbehavior)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<decisionbehavior> is deprecated: use common_msgs-msg:decisionbehavior instead.")))

(cl:ensure-generic-function 'drivebehavior-val :lambda-list '(m))
(cl:defmethod drivebehavior-val ((m <decisionbehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:drivebehavior-val is deprecated.  Use common_msgs-msg:drivebehavior instead.")
  (drivebehavior m))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <decisionbehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:obs-val is deprecated.  Use common_msgs-msg:obs instead.")
  (obs m))

(cl:ensure-generic-function 'isvalid-val :lambda-list '(m))
(cl:defmethod isvalid-val ((m <decisionbehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:isvalid-val is deprecated.  Use common_msgs-msg:isvalid instead.")
  (isvalid m))

(cl:ensure-generic-function 'turnlights-val :lambda-list '(m))
(cl:defmethod turnlights-val ((m <decisionbehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:turnlights-val is deprecated.  Use common_msgs-msg:turnlights instead.")
  (turnlights m))

(cl:ensure-generic-function 'laneblock-val :lambda-list '(m))
(cl:defmethod laneblock-val ((m <decisionbehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:laneblock-val is deprecated.  Use common_msgs-msg:laneblock instead.")
  (laneblock m))

(cl:ensure-generic-function 'adjustspeed-val :lambda-list '(m))
(cl:defmethod adjustspeed-val ((m <decisionbehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:adjustspeed-val is deprecated.  Use common_msgs-msg:adjustspeed instead.")
  (adjustspeed m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <decisionbehavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp-val is deprecated.  Use common_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <decisionbehavior>) ostream)
  "Serializes a message object of type '<decisionbehavior>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drivebehavior)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obs))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turnlights)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'laneblock)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adjustspeed)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'timestamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <decisionbehavior>) istream)
  "Deserializes a message object of type '<decisionbehavior>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'drivebehavior)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:sensorobject))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turnlights)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'laneblock)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'adjustspeed)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<decisionbehavior>)))
  "Returns string type for a message object of type '<decisionbehavior>"
  "common_msgs/decisionbehavior")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'decisionbehavior)))
  "Returns string type for a message object of type 'decisionbehavior"
  "common_msgs/decisionbehavior")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<decisionbehavior>)))
  "Returns md5sum for a message object of type '<decisionbehavior>"
  "39bd5187cf8d5459e943d2531dd4d87e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'decisionbehavior)))
  "Returns md5sum for a message object of type 'decisionbehavior"
  "39bd5187cf8d5459e943d2531dd4d87e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<decisionbehavior>)))
  "Returns full string definition for message of type '<decisionbehavior>"
  (cl:format cl:nil "uint8 drivebehavior   #驾驶行为~%sensorobject[] obs    #障碍物~%uint8 isvalid         #有效位~%uint8 turnlights      #转向灯~%uint8 laneblock~%uint8 adjustspeed     #调整速度　１　调整　０　不变~%int64 timestamp       #时间戳~%================================================================================~%MSG: common_msgs/sensorobject~%uint8   id                     #跟踪的ID~%float32 x                      #横坐标~%float32 y                      #纵坐标~%float32 relspeedy              #纵轴相对速度~%float32 relspeedx              #横轴相对速度~%float32 azimuth                #航向~%float32 width                  #宽度~%float32 length                 #长度~%float32 height                 #高度~%uint8   classification         #类别~%uint8   value                  #置信度~%point3d[] points #轮廓点数据 ~%================================================================================~%MSG: common_msgs/point3d~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'decisionbehavior)))
  "Returns full string definition for message of type 'decisionbehavior"
  (cl:format cl:nil "uint8 drivebehavior   #驾驶行为~%sensorobject[] obs    #障碍物~%uint8 isvalid         #有效位~%uint8 turnlights      #转向灯~%uint8 laneblock~%uint8 adjustspeed     #调整速度　１　调整　０　不变~%int64 timestamp       #时间戳~%================================================================================~%MSG: common_msgs/sensorobject~%uint8   id                     #跟踪的ID~%float32 x                      #横坐标~%float32 y                      #纵坐标~%float32 relspeedy              #纵轴相对速度~%float32 relspeedx              #横轴相对速度~%float32 azimuth                #航向~%float32 width                  #宽度~%float32 length                 #长度~%float32 height                 #高度~%uint8   classification         #类别~%uint8   value                  #置信度~%point3d[] points #轮廓点数据 ~%================================================================================~%MSG: common_msgs/point3d~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <decisionbehavior>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <decisionbehavior>))
  "Converts a ROS message object to a list"
  (cl:list 'decisionbehavior
    (cl:cons ':drivebehavior (drivebehavior msg))
    (cl:cons ':obs (obs msg))
    (cl:cons ':isvalid (isvalid msg))
    (cl:cons ':turnlights (turnlights msg))
    (cl:cons ':laneblock (laneblock msg))
    (cl:cons ':adjustspeed (adjustspeed msg))
    (cl:cons ':timestamp (timestamp msg))
))
