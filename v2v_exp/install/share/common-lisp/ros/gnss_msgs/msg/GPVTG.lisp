; Auto-generated. Do not edit!


(cl:in-package gnss_msgs-msg)


;//! \htmlinclude GPVTG.msg.html

(cl:defclass <GPVTG> (roslisp-msg-protocol:ros-message)
  ((real_north
    :reader real_north
    :initarg :real_north
    :type cl:float
    :initform 0.0)
   (magn_north
    :reader magn_north
    :initarg :magn_north
    :type cl:float
    :initform 0.0)
   (speed_nav
    :reader speed_nav
    :initarg :speed_nav
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass GPVTG (<GPVTG>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GPVTG>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GPVTG)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_msgs-msg:<GPVTG> is deprecated: use gnss_msgs-msg:GPVTG instead.")))

(cl:ensure-generic-function 'real_north-val :lambda-list '(m))
(cl:defmethod real_north-val ((m <GPVTG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:real_north-val is deprecated.  Use gnss_msgs-msg:real_north instead.")
  (real_north m))

(cl:ensure-generic-function 'magn_north-val :lambda-list '(m))
(cl:defmethod magn_north-val ((m <GPVTG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:magn_north-val is deprecated.  Use gnss_msgs-msg:magn_north instead.")
  (magn_north m))

(cl:ensure-generic-function 'speed_nav-val :lambda-list '(m))
(cl:defmethod speed_nav-val ((m <GPVTG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:speed_nav-val is deprecated.  Use gnss_msgs-msg:speed_nav instead.")
  (speed_nav m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <GPVTG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:speed-val is deprecated.  Use gnss_msgs-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GPVTG>) ostream)
  "Serializes a message object of type '<GPVTG>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'real_north))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'magn_north))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed_nav))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GPVTG>) istream)
  "Deserializes a message object of type '<GPVTG>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'real_north) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'magn_north) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_nav) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GPVTG>)))
  "Returns string type for a message object of type '<GPVTG>"
  "gnss_msgs/GPVTG")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GPVTG)))
  "Returns string type for a message object of type 'GPVTG"
  "gnss_msgs/GPVTG")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GPVTG>)))
  "Returns md5sum for a message object of type '<GPVTG>"
  "55bf248c8109ca74aca673f0009467b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GPVTG)))
  "Returns md5sum for a message object of type 'GPVTG"
  "55bf248c8109ca74aca673f0009467b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GPVTG>)))
  "Returns full string definition for message of type '<GPVTG>"
  (cl:format cl:nil "# Message from GPVTG NMEA String~%~%~%float64 real_north~%float64 magn_north~%float64 speed_nav~%float64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GPVTG)))
  "Returns full string definition for message of type 'GPVTG"
  (cl:format cl:nil "# Message from GPVTG NMEA String~%~%~%float64 real_north~%float64 magn_north~%float64 speed_nav~%float64 speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GPVTG>))
  (cl:+ 0
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GPVTG>))
  "Converts a ROS message object to a list"
  (cl:list 'GPVTG
    (cl:cons ':real_north (real_north msg))
    (cl:cons ':magn_north (magn_north msg))
    (cl:cons ':speed_nav (speed_nav msg))
    (cl:cons ':speed (speed msg))
))
