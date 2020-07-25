; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude actuator.msg.html

(cl:defclass <actuator> (roslisp-msg-protocol:ros-message)
  ((epsmethod
    :reader epsmethod
    :initarg :epsmethod
    :type cl:fixnum
    :initform 0)
   (epstorque
    :reader epstorque
    :initarg :epstorque
    :type cl:fixnum
    :initform 0)
   (epserror
    :reader epserror
    :initarg :epserror
    :type cl:fixnum
    :initform 0)
   (epsangle
    :reader epsangle
    :initarg :epsangle
    :type cl:fixnum
    :initform 0)
   (escbrakepress
    :reader escbrakepress
    :initarg :escbrakepress
    :type cl:fixnum
    :initform 0)
   (gaspedal
    :reader gaspedal
    :initarg :gaspedal
    :type cl:fixnum
    :initform 0)
   (sysstatus
    :reader sysstatus
    :initarg :sysstatus
    :type cl:fixnum
    :initform 0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (lights
    :reader lights
    :initarg :lights
    :type cl:fixnum
    :initform 0)
   (turnLight
    :reader turnLight
    :initarg :turnLight
    :type cl:fixnum
    :initform 0)
   (geer
    :reader geer
    :initarg :geer
    :type cl:fixnum
    :initform 0)
   (epb
    :reader epb
    :initarg :epb
    :type cl:fixnum
    :initform 0)
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

(cl:defclass actuator (<actuator>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <actuator>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'actuator)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<actuator> is deprecated: use common_msgs-msg:actuator instead.")))

(cl:ensure-generic-function 'epsmethod-val :lambda-list '(m))
(cl:defmethod epsmethod-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:epsmethod-val is deprecated.  Use common_msgs-msg:epsmethod instead.")
  (epsmethod m))

(cl:ensure-generic-function 'epstorque-val :lambda-list '(m))
(cl:defmethod epstorque-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:epstorque-val is deprecated.  Use common_msgs-msg:epstorque instead.")
  (epstorque m))

(cl:ensure-generic-function 'epserror-val :lambda-list '(m))
(cl:defmethod epserror-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:epserror-val is deprecated.  Use common_msgs-msg:epserror instead.")
  (epserror m))

(cl:ensure-generic-function 'epsangle-val :lambda-list '(m))
(cl:defmethod epsangle-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:epsangle-val is deprecated.  Use common_msgs-msg:epsangle instead.")
  (epsangle m))

(cl:ensure-generic-function 'escbrakepress-val :lambda-list '(m))
(cl:defmethod escbrakepress-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:escbrakepress-val is deprecated.  Use common_msgs-msg:escbrakepress instead.")
  (escbrakepress m))

(cl:ensure-generic-function 'gaspedal-val :lambda-list '(m))
(cl:defmethod gaspedal-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:gaspedal-val is deprecated.  Use common_msgs-msg:gaspedal instead.")
  (gaspedal m))

(cl:ensure-generic-function 'sysstatus-val :lambda-list '(m))
(cl:defmethod sysstatus-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:sysstatus-val is deprecated.  Use common_msgs-msg:sysstatus instead.")
  (sysstatus m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:speed-val is deprecated.  Use common_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'lights-val :lambda-list '(m))
(cl:defmethod lights-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:lights-val is deprecated.  Use common_msgs-msg:lights instead.")
  (lights m))

(cl:ensure-generic-function 'turnLight-val :lambda-list '(m))
(cl:defmethod turnLight-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:turnLight-val is deprecated.  Use common_msgs-msg:turnLight instead.")
  (turnLight m))

(cl:ensure-generic-function 'geer-val :lambda-list '(m))
(cl:defmethod geer-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:geer-val is deprecated.  Use common_msgs-msg:geer instead.")
  (geer m))

(cl:ensure-generic-function 'epb-val :lambda-list '(m))
(cl:defmethod epb-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:epb-val is deprecated.  Use common_msgs-msg:epb instead.")
  (epb m))

(cl:ensure-generic-function 'isvalid-val :lambda-list '(m))
(cl:defmethod isvalid-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:isvalid-val is deprecated.  Use common_msgs-msg:isvalid instead.")
  (isvalid m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <actuator>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp-val is deprecated.  Use common_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <actuator>) ostream)
  "Serializes a message object of type '<actuator>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epsmethod)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epstorque)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epserror)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'epsangle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'escbrakepress)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gaspedal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysstatus)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turnLight)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'geer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epb)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <actuator>) istream)
  "Deserializes a message object of type '<actuator>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epsmethod)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epstorque)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epserror)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epsangle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'escbrakepress)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gaspedal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sysstatus)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turnLight)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'geer)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epb)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<actuator>)))
  "Returns string type for a message object of type '<actuator>"
  "common_msgs/actuator")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'actuator)))
  "Returns string type for a message object of type 'actuator"
  "common_msgs/actuator")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<actuator>)))
  "Returns md5sum for a message object of type '<actuator>"
  "f5ae8b7fd4f1392f2d669cd9134bb652")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'actuator)))
  "Returns md5sum for a message object of type 'actuator"
  "f5ae8b7fd4f1392f2d669cd9134bb652")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<actuator>)))
  "Returns full string definition for message of type '<actuator>"
  (cl:format cl:nil "uint8 epsmethod          #方向盘模式位~%uint8 epstorque          #方向盘扭矩~%uint8 epserror           #方向盘故障码~%int16 epsangle           #放向盘角度~%uint8 escbrakepress      #刹车压力~%uint8 gaspedal           #油门开度~%uint8 sysstatus          #系统状态~%float32 speed              #车速~%uint8 lights             #灯光~%uint8 turnLight~%uint8 geer~%uint8 epb~%uint8 isvalid            #有效位~%int64 timestamp          #时间戳~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'actuator)))
  "Returns full string definition for message of type 'actuator"
  (cl:format cl:nil "uint8 epsmethod          #方向盘模式位~%uint8 epstorque          #方向盘扭矩~%uint8 epserror           #方向盘故障码~%int16 epsangle           #放向盘角度~%uint8 escbrakepress      #刹车压力~%uint8 gaspedal           #油门开度~%uint8 sysstatus          #系统状态~%float32 speed              #车速~%uint8 lights             #灯光~%uint8 turnLight~%uint8 geer~%uint8 epb~%uint8 isvalid            #有效位~%int64 timestamp          #时间戳~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <actuator>))
  (cl:+ 0
     1
     1
     1
     2
     1
     1
     1
     4
     1
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <actuator>))
  "Converts a ROS message object to a list"
  (cl:list 'actuator
    (cl:cons ':epsmethod (epsmethod msg))
    (cl:cons ':epstorque (epstorque msg))
    (cl:cons ':epserror (epserror msg))
    (cl:cons ':epsangle (epsangle msg))
    (cl:cons ':escbrakepress (escbrakepress msg))
    (cl:cons ':gaspedal (gaspedal msg))
    (cl:cons ':sysstatus (sysstatus msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':lights (lights msg))
    (cl:cons ':turnLight (turnLight msg))
    (cl:cons ':geer (geer msg))
    (cl:cons ':epb (epb msg))
    (cl:cons ':isvalid (isvalid msg))
    (cl:cons ':timestamp (timestamp msg))
))
