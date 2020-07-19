; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude nextproperty.msg.html

(cl:defclass <nextproperty> (roslisp-msg-protocol:ros-message)
  ((property
    :reader property
    :initarg :property
    :type cl:fixnum
    :initform 0)
   (dis
    :reader dis
    :initarg :dis
    :type cl:float
    :initform 0.0))
)

(cl:defclass nextproperty (<nextproperty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <nextproperty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'nextproperty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<nextproperty> is deprecated: use common_msgs-msg:nextproperty instead.")))

(cl:ensure-generic-function 'property-val :lambda-list '(m))
(cl:defmethod property-val ((m <nextproperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:property-val is deprecated.  Use common_msgs-msg:property instead.")
  (property m))

(cl:ensure-generic-function 'dis-val :lambda-list '(m))
(cl:defmethod dis-val ((m <nextproperty>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:dis-val is deprecated.  Use common_msgs-msg:dis instead.")
  (dis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <nextproperty>) ostream)
  "Serializes a message object of type '<nextproperty>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'property)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <nextproperty>) istream)
  "Deserializes a message object of type '<nextproperty>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'property)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dis) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<nextproperty>)))
  "Returns string type for a message object of type '<nextproperty>"
  "common_msgs/nextproperty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'nextproperty)))
  "Returns string type for a message object of type 'nextproperty"
  "common_msgs/nextproperty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<nextproperty>)))
  "Returns md5sum for a message object of type '<nextproperty>"
  "4f8c856bdc1737cae020d1e8afae80d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'nextproperty)))
  "Returns md5sum for a message object of type 'nextproperty"
  "4f8c856bdc1737cae020d1e8afae80d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<nextproperty>)))
  "Returns full string definition for message of type '<nextproperty>"
  (cl:format cl:nil "uint8 property~%float32 dis~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'nextproperty)))
  "Returns full string definition for message of type 'nextproperty"
  (cl:format cl:nil "uint8 property~%float32 dis~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <nextproperty>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <nextproperty>))
  "Converts a ROS message object to a list"
  (cl:list 'nextproperty
    (cl:cons ':property (property msg))
    (cl:cons ':dis (dis msg))
))
