; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude controllat.msg.html

(cl:defclass <controllat> (roslisp-msg-protocol:ros-message)
  ((epsmethod
    :reader epsmethod
    :initarg :epsmethod
    :type cl:fixnum
    :initform 0)
   (epsangle
    :reader epsangle
    :initarg :epsangle
    :type cl:fixnum
    :initform 0)
   (limitspeed
    :reader limitspeed
    :initarg :limitspeed
    :type cl:float
    :initform 0.0)
   (epstorque
    :reader epstorque
    :initarg :epstorque
    :type cl:float
    :initform 0.0)
   (lights
    :reader lights
    :initarg :lights
    :type cl:fixnum
    :initform 0)
   (isvalid
    :reader isvalid
    :initarg :isvalid
    :type cl:fixnum
    :initform 0)
   (deviation
    :reader deviation
    :initarg :deviation
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0))
)

(cl:defclass controllat (<controllat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controllat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controllat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<controllat> is deprecated: use common_msgs-msg:controllat instead.")))

(cl:ensure-generic-function 'epsmethod-val :lambda-list '(m))
(cl:defmethod epsmethod-val ((m <controllat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:epsmethod-val is deprecated.  Use common_msgs-msg:epsmethod instead.")
  (epsmethod m))

(cl:ensure-generic-function 'epsangle-val :lambda-list '(m))
(cl:defmethod epsangle-val ((m <controllat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:epsangle-val is deprecated.  Use common_msgs-msg:epsangle instead.")
  (epsangle m))

(cl:ensure-generic-function 'limitspeed-val :lambda-list '(m))
(cl:defmethod limitspeed-val ((m <controllat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:limitspeed-val is deprecated.  Use common_msgs-msg:limitspeed instead.")
  (limitspeed m))

(cl:ensure-generic-function 'epstorque-val :lambda-list '(m))
(cl:defmethod epstorque-val ((m <controllat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:epstorque-val is deprecated.  Use common_msgs-msg:epstorque instead.")
  (epstorque m))

(cl:ensure-generic-function 'lights-val :lambda-list '(m))
(cl:defmethod lights-val ((m <controllat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:lights-val is deprecated.  Use common_msgs-msg:lights instead.")
  (lights m))

(cl:ensure-generic-function 'isvalid-val :lambda-list '(m))
(cl:defmethod isvalid-val ((m <controllat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:isvalid-val is deprecated.  Use common_msgs-msg:isvalid instead.")
  (isvalid m))

(cl:ensure-generic-function 'deviation-val :lambda-list '(m))
(cl:defmethod deviation-val ((m <controllat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:deviation-val is deprecated.  Use common_msgs-msg:deviation instead.")
  (deviation m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <controllat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp-val is deprecated.  Use common_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controllat>) ostream)
  "Serializes a message object of type '<controllat>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epsmethod)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'epsangle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'limitspeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'epstorque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'deviation)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controllat>) istream)
  "Deserializes a message object of type '<controllat>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'epsmethod)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'epsangle) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limitspeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'epstorque) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lights)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deviation) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controllat>)))
  "Returns string type for a message object of type '<controllat>"
  "common_msgs/controllat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controllat)))
  "Returns string type for a message object of type 'controllat"
  "common_msgs/controllat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controllat>)))
  "Returns md5sum for a message object of type '<controllat>"
  "0c1639e4c92c3d89dd4c0c14d08ef839")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controllat)))
  "Returns md5sum for a message object of type 'controllat"
  "0c1639e4c92c3d89dd4c0c14d08ef839")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controllat>)))
  "Returns full string definition for message of type '<controllat>"
  (cl:format cl:nil "uint8    epsmethod   #使能位~%int16    epsangle    #目标角度~%float32  limitspeed  #限速~%float32  epstorque   #扭矩~%uint8    lights      #目标灯光~%uint8    isvalid     #有效位~%int16    deviation   #deviation~%int64    timestamp   #时间戳~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controllat)))
  "Returns full string definition for message of type 'controllat"
  (cl:format cl:nil "uint8    epsmethod   #使能位~%int16    epsangle    #目标角度~%float32  limitspeed  #限速~%float32  epstorque   #扭矩~%uint8    lights      #目标灯光~%uint8    isvalid     #有效位~%int16    deviation   #deviation~%int64    timestamp   #时间戳~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controllat>))
  (cl:+ 0
     1
     2
     4
     4
     1
     1
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controllat>))
  "Converts a ROS message object to a list"
  (cl:list 'controllat
    (cl:cons ':epsmethod (epsmethod msg))
    (cl:cons ':epsangle (epsangle msg))
    (cl:cons ':limitspeed (limitspeed msg))
    (cl:cons ':epstorque (epstorque msg))
    (cl:cons ':lights (lights msg))
    (cl:cons ':isvalid (isvalid msg))
    (cl:cons ':deviation (deviation msg))
    (cl:cons ':timestamp (timestamp msg))
))
