; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude sensorobjects.msg.html

(cl:defclass <sensorobjects> (roslisp-msg-protocol:ros-message)
  ((obs
    :reader obs
    :initarg :obs
    :type (cl:vector common_msgs-msg:sensorobject)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:sensorobject :initial-element (cl:make-instance 'common_msgs-msg:sensorobject)))
   (isvalid
    :reader isvalid
    :initarg :isvalid
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0))
)

(cl:defclass sensorobjects (<sensorobjects>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensorobjects>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensorobjects)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<sensorobjects> is deprecated: use common_msgs-msg:sensorobjects instead.")))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <sensorobjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:obs-val is deprecated.  Use common_msgs-msg:obs instead.")
  (obs m))

(cl:ensure-generic-function 'isvalid-val :lambda-list '(m))
(cl:defmethod isvalid-val ((m <sensorobjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:isvalid-val is deprecated.  Use common_msgs-msg:isvalid instead.")
  (isvalid m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <sensorobjects>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp-val is deprecated.  Use common_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensorobjects>) ostream)
  "Serializes a message object of type '<sensorobjects>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obs))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensorobjects>) istream)
  "Deserializes a message object of type '<sensorobjects>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensorobjects>)))
  "Returns string type for a message object of type '<sensorobjects>"
  "common_msgs/sensorobjects")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensorobjects)))
  "Returns string type for a message object of type 'sensorobjects"
  "common_msgs/sensorobjects")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensorobjects>)))
  "Returns md5sum for a message object of type '<sensorobjects>"
  "d4e6052190baa67cdc532443b5d99ec9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensorobjects)))
  "Returns md5sum for a message object of type 'sensorobjects"
  "d4e6052190baa67cdc532443b5d99ec9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensorobjects>)))
  "Returns full string definition for message of type '<sensorobjects>"
  (cl:format cl:nil "sensorobject[] obs~%uint8 isvalid~%int64 timestamp~%================================================================================~%MSG: common_msgs/sensorobject~%uint8   id                     #跟踪的ID~%float32 x                      #横坐标~%float32 y                      #纵坐标~%float32 relspeedy              #纵轴相对速度~%float32 relspeedx              #横轴相对速度~%float32 azimuth                #航向~%float32 width                  #宽度~%float32 length                 #长度~%float32 height                 #高度~%uint8   classification         #类别~%uint8   value                  #置信度~%point3d[] points #轮廓点数据 ~%================================================================================~%MSG: common_msgs/point3d~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensorobjects)))
  "Returns full string definition for message of type 'sensorobjects"
  (cl:format cl:nil "sensorobject[] obs~%uint8 isvalid~%int64 timestamp~%================================================================================~%MSG: common_msgs/sensorobject~%uint8   id                     #跟踪的ID~%float32 x                      #横坐标~%float32 y                      #纵坐标~%float32 relspeedy              #纵轴相对速度~%float32 relspeedx              #横轴相对速度~%float32 azimuth                #航向~%float32 width                  #宽度~%float32 length                 #长度~%float32 height                 #高度~%uint8   classification         #类别~%uint8   value                  #置信度~%point3d[] points #轮廓点数据 ~%================================================================================~%MSG: common_msgs/point3d~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensorobjects>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensorobjects>))
  "Converts a ROS message object to a list"
  (cl:list 'sensorobjects
    (cl:cons ':obs (obs msg))
    (cl:cons ':isvalid (isvalid msg))
    (cl:cons ':timestamp (timestamp msg))
))
