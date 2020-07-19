; Auto-generated. Do not edit!


(cl:in-package gnss_msgs-msg)


;//! \htmlinclude GNHDT.msg.html

(cl:defclass <GNHDT> (roslisp-msg-protocol:ros-message)
  ((heading_deg
    :reader heading_deg
    :initarg :heading_deg
    :type cl:float
    :initform 0.0))
)

(cl:defclass GNHDT (<GNHDT>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GNHDT>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GNHDT)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_msgs-msg:<GNHDT> is deprecated: use gnss_msgs-msg:GNHDT instead.")))

(cl:ensure-generic-function 'heading_deg-val :lambda-list '(m))
(cl:defmethod heading_deg-val ((m <GNHDT>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:heading_deg-val is deprecated.  Use gnss_msgs-msg:heading_deg instead.")
  (heading_deg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GNHDT>) ostream)
  "Serializes a message object of type '<GNHDT>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GNHDT>) istream)
  "Deserializes a message object of type '<GNHDT>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading_deg) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GNHDT>)))
  "Returns string type for a message object of type '<GNHDT>"
  "gnss_msgs/GNHDT")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GNHDT)))
  "Returns string type for a message object of type 'GNHDT"
  "gnss_msgs/GNHDT")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GNHDT>)))
  "Returns md5sum for a message object of type '<GNHDT>"
  "1faae2859dcb5aa43baeb4f984cff1fd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GNHDT)))
  "Returns md5sum for a message object of type 'GNHDT"
  "1faae2859dcb5aa43baeb4f984cff1fd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GNHDT>)))
  "Returns full string definition for message of type '<GNHDT>"
  (cl:format cl:nil "##~%~%##~%~%float64 heading_deg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GNHDT)))
  "Returns full string definition for message of type 'GNHDT"
  (cl:format cl:nil "##~%~%##~%~%float64 heading_deg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GNHDT>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GNHDT>))
  "Converts a ROS message object to a list"
  (cl:list 'GNHDT
    (cl:cons ':heading_deg (heading_deg msg))
))
