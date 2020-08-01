; Auto-generated. Do not edit!


(cl:in-package little_ant_msgs-msg)


;//! \htmlinclude State4.msg.html

(cl:defclass <State4> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (driverless_mode
    :reader driverless_mode
    :initarg :driverless_mode
    :type cl:boolean
    :initform cl:nil)
   (steeringAngle
    :reader steeringAngle
    :initarg :steeringAngle
    :type cl:float
    :initform 0.0)
   (roadwheelAngle
    :reader roadwheelAngle
    :initarg :roadwheelAngle
    :type cl:float
    :initform 0.0)
   (steeringAngle_valid
    :reader steeringAngle_valid
    :initarg :steeringAngle_valid
    :type cl:boolean
    :initform cl:nil)
   (steeringAngle_speed
    :reader steeringAngle_speed
    :initarg :steeringAngle_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass State4 (<State4>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State4>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State4)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name little_ant_msgs-msg:<State4> is deprecated: use little_ant_msgs-msg:State4 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <State4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:header-val is deprecated.  Use little_ant_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'driverless_mode-val :lambda-list '(m))
(cl:defmethod driverless_mode-val ((m <State4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:driverless_mode-val is deprecated.  Use little_ant_msgs-msg:driverless_mode instead.")
  (driverless_mode m))

(cl:ensure-generic-function 'steeringAngle-val :lambda-list '(m))
(cl:defmethod steeringAngle-val ((m <State4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:steeringAngle-val is deprecated.  Use little_ant_msgs-msg:steeringAngle instead.")
  (steeringAngle m))

(cl:ensure-generic-function 'roadwheelAngle-val :lambda-list '(m))
(cl:defmethod roadwheelAngle-val ((m <State4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:roadwheelAngle-val is deprecated.  Use little_ant_msgs-msg:roadwheelAngle instead.")
  (roadwheelAngle m))

(cl:ensure-generic-function 'steeringAngle_valid-val :lambda-list '(m))
(cl:defmethod steeringAngle_valid-val ((m <State4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:steeringAngle_valid-val is deprecated.  Use little_ant_msgs-msg:steeringAngle_valid instead.")
  (steeringAngle_valid m))

(cl:ensure-generic-function 'steeringAngle_speed-val :lambda-list '(m))
(cl:defmethod steeringAngle_speed-val ((m <State4>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:steeringAngle_speed-val is deprecated.  Use little_ant_msgs-msg:steeringAngle_speed instead.")
  (steeringAngle_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State4>) ostream)
  "Serializes a message object of type '<State4>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driverless_mode) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steeringAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roadwheelAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'steeringAngle_valid) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steeringAngle_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State4>) istream)
  "Deserializes a message object of type '<State4>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'driverless_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steeringAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roadwheelAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'steeringAngle_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steeringAngle_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State4>)))
  "Returns string type for a message object of type '<State4>"
  "little_ant_msgs/State4")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State4)))
  "Returns string type for a message object of type 'State4"
  "little_ant_msgs/State4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State4>)))
  "Returns md5sum for a message object of type '<State4>"
  "ac90c5adc2e5026c3ff29c1d42c1bb25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State4)))
  "Returns md5sum for a message object of type 'State4"
  "ac90c5adc2e5026c3ff29c1d42c1bb25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State4>)))
  "Returns full string definition for message of type '<State4>"
  (cl:format cl:nil "#EPS_1  0x1D5~%~%std_msgs/Header header~%~%bool driverless_mode~%float32 steeringAngle        #CCW(-), CW(+)~%float32 roadwheelAngle~%bool steeringAngle_valid~%float32 steeringAngle_speed~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State4)))
  "Returns full string definition for message of type 'State4"
  (cl:format cl:nil "#EPS_1  0x1D5~%~%std_msgs/Header header~%~%bool driverless_mode~%float32 steeringAngle        #CCW(-), CW(+)~%float32 roadwheelAngle~%bool steeringAngle_valid~%float32 steeringAngle_speed~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State4>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State4>))
  "Converts a ROS message object to a list"
  (cl:list 'State4
    (cl:cons ':header (header msg))
    (cl:cons ':driverless_mode (driverless_mode msg))
    (cl:cons ':steeringAngle (steeringAngle msg))
    (cl:cons ':roadwheelAngle (roadwheelAngle msg))
    (cl:cons ':steeringAngle_valid (steeringAngle_valid msg))
    (cl:cons ':steeringAngle_speed (steeringAngle_speed msg))
))
