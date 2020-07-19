; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude roadpoint.msg.html

(cl:defclass <roadpoint> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (gx
    :reader gx
    :initarg :gx
    :type cl:integer
    :initform 0)
   (gy
    :reader gy
    :initarg :gy
    :type cl:integer
    :initform 0)
   (roadtype
    :reader roadtype
    :initarg :roadtype
    :type cl:fixnum
    :initform 0)
   (lanetype
    :reader lanetype
    :initarg :lanetype
    :type cl:fixnum
    :initform 0)
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (curvature
    :reader curvature
    :initarg :curvature
    :type cl:float
    :initform 0.0))
)

(cl:defclass roadpoint (<roadpoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <roadpoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'roadpoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<roadpoint> is deprecated: use common_msgs-msg:roadpoint instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <roadpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:x-val is deprecated.  Use common_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <roadpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:y-val is deprecated.  Use common_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'gx-val :lambda-list '(m))
(cl:defmethod gx-val ((m <roadpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:gx-val is deprecated.  Use common_msgs-msg:gx instead.")
  (gx m))

(cl:ensure-generic-function 'gy-val :lambda-list '(m))
(cl:defmethod gy-val ((m <roadpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:gy-val is deprecated.  Use common_msgs-msg:gy instead.")
  (gy m))

(cl:ensure-generic-function 'roadtype-val :lambda-list '(m))
(cl:defmethod roadtype-val ((m <roadpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:roadtype-val is deprecated.  Use common_msgs-msg:roadtype instead.")
  (roadtype m))

(cl:ensure-generic-function 'lanetype-val :lambda-list '(m))
(cl:defmethod lanetype-val ((m <roadpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:lanetype-val is deprecated.  Use common_msgs-msg:lanetype instead.")
  (lanetype m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <roadpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:heading-val is deprecated.  Use common_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'curvature-val :lambda-list '(m))
(cl:defmethod curvature-val ((m <roadpoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:curvature-val is deprecated.  Use common_msgs-msg:curvature instead.")
  (curvature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <roadpoint>) ostream)
  "Serializes a message object of type '<roadpoint>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'gy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roadtype)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanetype)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <roadpoint>) istream)
  "Deserializes a message object of type '<roadpoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'roadtype)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lanetype)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<roadpoint>)))
  "Returns string type for a message object of type '<roadpoint>"
  "common_msgs/roadpoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'roadpoint)))
  "Returns string type for a message object of type 'roadpoint"
  "common_msgs/roadpoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<roadpoint>)))
  "Returns md5sum for a message object of type '<roadpoint>"
  "5188723d8908b67bd1c8e04daf63a8f8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'roadpoint)))
  "Returns md5sum for a message object of type 'roadpoint"
  "5188723d8908b67bd1c8e04daf63a8f8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<roadpoint>)))
  "Returns full string definition for message of type '<roadpoint>"
  (cl:format cl:nil "int16 x                  #局部横坐标   cm~%int16 y                  #局部纵坐标   cm~%int32 gx                 #全局横坐标   cm~%int32 gy                 #全局纵坐标   cm~%uint8 roadtype           #道路属性~%uint8 lanetype           #当前车道|总车道(4|4)~%float32 heading          #heading~%float32 curvature~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'roadpoint)))
  "Returns full string definition for message of type 'roadpoint"
  (cl:format cl:nil "int16 x                  #局部横坐标   cm~%int16 y                  #局部纵坐标   cm~%int32 gx                 #全局横坐标   cm~%int32 gy                 #全局纵坐标   cm~%uint8 roadtype           #道路属性~%uint8 lanetype           #当前车道|总车道(4|4)~%float32 heading          #heading~%float32 curvature~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <roadpoint>))
  (cl:+ 0
     2
     2
     4
     4
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <roadpoint>))
  "Converts a ROS message object to a list"
  (cl:list 'roadpoint
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':gx (gx msg))
    (cl:cons ':gy (gy msg))
    (cl:cons ':roadtype (roadtype msg))
    (cl:cons ':lanetype (lanetype msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':curvature (curvature msg))
))
