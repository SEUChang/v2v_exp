; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude controllon.msg.html

(cl:defclass <controllon> (roslisp-msg-protocol:ros-message)
  ((method
    :reader method
    :initarg :method
    :type cl:fixnum
    :initform 0)
   (pedal
    :reader pedal
    :initarg :pedal
    :type cl:fixnum
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (objdis
    :reader objdis
    :initarg :objdis
    :type cl:float
    :initform 0.0)
   (objrel
    :reader objrel
    :initarg :objrel
    :type cl:float
    :initform 0.0)
   (parkdis
    :reader parkdis
    :initarg :parkdis
    :type cl:float
    :initform 0.0)
   (isvalid
    :reader isvalid
    :initarg :isvalid
    :type cl:fixnum
    :initform 0)
   (geer
    :reader geer
    :initarg :geer
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (gasPedal
    :reader gasPedal
    :initarg :gasPedal
    :type cl:fixnum
    :initform 0)
   (brakePedal
    :reader brakePedal
    :initarg :brakePedal
    :type cl:fixnum
    :initform 0)
   (targetSpeed
    :reader targetSpeed
    :initarg :targetSpeed
    :type cl:fixnum
    :initform 0))
)

(cl:defclass controllon (<controllon>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controllon>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controllon)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<controllon> is deprecated: use common_msgs-msg:controllon instead.")))

(cl:ensure-generic-function 'method-val :lambda-list '(m))
(cl:defmethod method-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:method-val is deprecated.  Use common_msgs-msg:method instead.")
  (method m))

(cl:ensure-generic-function 'pedal-val :lambda-list '(m))
(cl:defmethod pedal-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:pedal-val is deprecated.  Use common_msgs-msg:pedal instead.")
  (pedal m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:mode-val is deprecated.  Use common_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'objdis-val :lambda-list '(m))
(cl:defmethod objdis-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:objdis-val is deprecated.  Use common_msgs-msg:objdis instead.")
  (objdis m))

(cl:ensure-generic-function 'objrel-val :lambda-list '(m))
(cl:defmethod objrel-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:objrel-val is deprecated.  Use common_msgs-msg:objrel instead.")
  (objrel m))

(cl:ensure-generic-function 'parkdis-val :lambda-list '(m))
(cl:defmethod parkdis-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:parkdis-val is deprecated.  Use common_msgs-msg:parkdis instead.")
  (parkdis m))

(cl:ensure-generic-function 'isvalid-val :lambda-list '(m))
(cl:defmethod isvalid-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:isvalid-val is deprecated.  Use common_msgs-msg:isvalid instead.")
  (isvalid m))

(cl:ensure-generic-function 'geer-val :lambda-list '(m))
(cl:defmethod geer-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:geer-val is deprecated.  Use common_msgs-msg:geer instead.")
  (geer m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp-val is deprecated.  Use common_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'gasPedal-val :lambda-list '(m))
(cl:defmethod gasPedal-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:gasPedal-val is deprecated.  Use common_msgs-msg:gasPedal instead.")
  (gasPedal m))

(cl:ensure-generic-function 'brakePedal-val :lambda-list '(m))
(cl:defmethod brakePedal-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:brakePedal-val is deprecated.  Use common_msgs-msg:brakePedal instead.")
  (brakePedal m))

(cl:ensure-generic-function 'targetSpeed-val :lambda-list '(m))
(cl:defmethod targetSpeed-val ((m <controllon>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:targetSpeed-val is deprecated.  Use common_msgs-msg:targetSpeed instead.")
  (targetSpeed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controllon>) ostream)
  "Serializes a message object of type '<controllon>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'method)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'pedal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'objdis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'objrel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'parkdis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'geer)) ostream)
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gasPedal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brakePedal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'targetSpeed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controllon>) istream)
  "Deserializes a message object of type '<controllon>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'method)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'pedal) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'objdis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'objrel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'parkdis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'geer)) (cl:read-byte istream))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gasPedal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brakePedal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'targetSpeed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controllon>)))
  "Returns string type for a message object of type '<controllon>"
  "common_msgs/controllon")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controllon)))
  "Returns string type for a message object of type 'controllon"
  "common_msgs/controllon")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controllon>)))
  "Returns md5sum for a message object of type '<controllon>"
  "50c02c1f1bee67af253cc975ea95407b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controllon)))
  "Returns md5sum for a message object of type 'controllon"
  "50c02c1f1bee67af253cc975ea95407b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controllon>)))
  "Returns full string definition for message of type '<controllon>"
  (cl:format cl:nil "uint8    method     #使能位~%int8     pedal      #输出量~%uint8    mode       #mode~%float32  objdis     #~%float32  objrel     #~%float32  parkdis~%uint8    isvalid    #有效位~%uint8    geer       #~%int64    timestamp  #时间戳 ~%uint8    gasPedal~%uint8    brakePedal~%uint8    targetSpeed~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controllon)))
  "Returns full string definition for message of type 'controllon"
  (cl:format cl:nil "uint8    method     #使能位~%int8     pedal      #输出量~%uint8    mode       #mode~%float32  objdis     #~%float32  objrel     #~%float32  parkdis~%uint8    isvalid    #有效位~%uint8    geer       #~%int64    timestamp  #时间戳 ~%uint8    gasPedal~%uint8    brakePedal~%uint8    targetSpeed~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controllon>))
  (cl:+ 0
     1
     1
     1
     4
     4
     4
     1
     1
     8
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controllon>))
  "Converts a ROS message object to a list"
  (cl:list 'controllon
    (cl:cons ':method (method msg))
    (cl:cons ':pedal (pedal msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':objdis (objdis msg))
    (cl:cons ':objrel (objrel msg))
    (cl:cons ':parkdis (parkdis msg))
    (cl:cons ':isvalid (isvalid msg))
    (cl:cons ':geer (geer msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':gasPedal (gasPedal msg))
    (cl:cons ':brakePedal (brakePedal msg))
    (cl:cons ':targetSpeed (targetSpeed msg))
))
