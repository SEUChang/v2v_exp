; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-msg)


;//! \htmlinclude Behavior.msg.html

(cl:defclass <Behavior> (roslisp-msg-protocol:ros-message)
  ((behavior
    :reader behavior
    :initarg :behavior
    :type cl:integer
    :initform 0))
)

(cl:defclass Behavior (<Behavior>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Behavior>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Behavior)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-msg:<Behavior> is deprecated: use dnc_msgs-msg:Behavior instead.")))

(cl:ensure-generic-function 'behavior-val :lambda-list '(m))
(cl:defmethod behavior-val ((m <Behavior>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:behavior-val is deprecated.  Use dnc_msgs-msg:behavior instead.")
  (behavior m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Behavior>) ostream)
  "Serializes a message object of type '<Behavior>"
  (cl:let* ((signed (cl:slot-value msg 'behavior)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Behavior>) istream)
  "Deserializes a message object of type '<Behavior>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'behavior) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Behavior>)))
  "Returns string type for a message object of type '<Behavior>"
  "dnc_msgs/Behavior")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Behavior)))
  "Returns string type for a message object of type 'Behavior"
  "dnc_msgs/Behavior")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Behavior>)))
  "Returns md5sum for a message object of type '<Behavior>"
  "ed9a86c2a85b1c36d1b610c9cea39472")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Behavior)))
  "Returns md5sum for a message object of type 'Behavior"
  "ed9a86c2a85b1c36d1b610c9cea39472")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Behavior>)))
  "Returns full string definition for message of type '<Behavior>"
  (cl:format cl:nil "#####~%~%int32 behavior~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Behavior)))
  "Returns full string definition for message of type 'Behavior"
  (cl:format cl:nil "#####~%~%int32 behavior~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Behavior>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Behavior>))
  "Converts a ROS message object to a list"
  (cl:list 'Behavior
    (cl:cons ':behavior (behavior msg))
))
