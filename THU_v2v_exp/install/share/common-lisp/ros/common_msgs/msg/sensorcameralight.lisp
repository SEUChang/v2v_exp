; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude sensorcameralight.msg.html

(cl:defclass <sensorcameralight> (roslisp-msg-protocol:ros-message)
  ((start
    :reader start
    :initarg :start
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

(cl:defclass sensorcameralight (<sensorcameralight>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <sensorcameralight>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'sensorcameralight)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<sensorcameralight> is deprecated: use common_msgs-msg:sensorcameralight instead.")))

(cl:ensure-generic-function 'start-val :lambda-list '(m))
(cl:defmethod start-val ((m <sensorcameralight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:start-val is deprecated.  Use common_msgs-msg:start instead.")
  (start m))

(cl:ensure-generic-function 'isvalid-val :lambda-list '(m))
(cl:defmethod isvalid-val ((m <sensorcameralight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:isvalid-val is deprecated.  Use common_msgs-msg:isvalid instead.")
  (isvalid m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <sensorcameralight>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp-val is deprecated.  Use common_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <sensorcameralight>) ostream)
  "Serializes a message object of type '<sensorcameralight>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <sensorcameralight>) istream)
  "Deserializes a message object of type '<sensorcameralight>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<sensorcameralight>)))
  "Returns string type for a message object of type '<sensorcameralight>"
  "common_msgs/sensorcameralight")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'sensorcameralight)))
  "Returns string type for a message object of type 'sensorcameralight"
  "common_msgs/sensorcameralight")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<sensorcameralight>)))
  "Returns md5sum for a message object of type '<sensorcameralight>"
  "8d176b03612ab6796db2be50106ee8c1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'sensorcameralight)))
  "Returns md5sum for a message object of type 'sensorcameralight"
  "8d176b03612ab6796db2be50106ee8c1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<sensorcameralight>)))
  "Returns full string definition for message of type '<sensorcameralight>"
  (cl:format cl:nil "uint8 start~%uint8 isvalid~%int64 timestamp~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'sensorcameralight)))
  "Returns full string definition for message of type 'sensorcameralight"
  (cl:format cl:nil "uint8 start~%uint8 isvalid~%int64 timestamp~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <sensorcameralight>))
  (cl:+ 0
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <sensorcameralight>))
  "Converts a ROS message object to a list"
  (cl:list 'sensorcameralight
    (cl:cons ':start (start msg))
    (cl:cons ':isvalid (isvalid msg))
    (cl:cons ':timestamp (timestamp msg))
))
