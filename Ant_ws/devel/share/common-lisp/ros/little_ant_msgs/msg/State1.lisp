; Auto-generated. Do not edit!


(cl:in-package little_ant_msgs-msg)


;//! \htmlinclude State1.msg.html

(cl:defclass <State1> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (act_gear
    :reader act_gear
    :initarg :act_gear
    :type cl:fixnum
    :initform 0)
   (accel_pedal_position
    :reader accel_pedal_position
    :initarg :accel_pedal_position
    :type cl:float
    :initform 0.0)
   (brake_pedal
    :reader brake_pedal
    :initarg :brake_pedal
    :type cl:fixnum
    :initform 0)
   (accel_pedal_position_valid
    :reader accel_pedal_position_valid
    :initarg :accel_pedal_position_valid
    :type cl:boolean
    :initform cl:nil)
   (act_gear_valid
    :reader act_gear_valid
    :initarg :act_gear_valid
    :type cl:boolean
    :initform cl:nil)
   (brake_pedal_valid
    :reader brake_pedal_valid
    :initarg :brake_pedal_valid
    :type cl:boolean
    :initform cl:nil)
   (vehicle_ready
    :reader vehicle_ready
    :initarg :vehicle_ready
    :type cl:boolean
    :initform cl:nil)
   (driverless_mode
    :reader driverless_mode
    :initarg :driverless_mode
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass State1 (<State1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name little_ant_msgs-msg:<State1> is deprecated: use little_ant_msgs-msg:State1 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:header-val is deprecated.  Use little_ant_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'act_gear-val :lambda-list '(m))
(cl:defmethod act_gear-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:act_gear-val is deprecated.  Use little_ant_msgs-msg:act_gear instead.")
  (act_gear m))

(cl:ensure-generic-function 'accel_pedal_position-val :lambda-list '(m))
(cl:defmethod accel_pedal_position-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:accel_pedal_position-val is deprecated.  Use little_ant_msgs-msg:accel_pedal_position instead.")
  (accel_pedal_position m))

(cl:ensure-generic-function 'brake_pedal-val :lambda-list '(m))
(cl:defmethod brake_pedal-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:brake_pedal-val is deprecated.  Use little_ant_msgs-msg:brake_pedal instead.")
  (brake_pedal m))

(cl:ensure-generic-function 'accel_pedal_position_valid-val :lambda-list '(m))
(cl:defmethod accel_pedal_position_valid-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:accel_pedal_position_valid-val is deprecated.  Use little_ant_msgs-msg:accel_pedal_position_valid instead.")
  (accel_pedal_position_valid m))

(cl:ensure-generic-function 'act_gear_valid-val :lambda-list '(m))
(cl:defmethod act_gear_valid-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:act_gear_valid-val is deprecated.  Use little_ant_msgs-msg:act_gear_valid instead.")
  (act_gear_valid m))

(cl:ensure-generic-function 'brake_pedal_valid-val :lambda-list '(m))
(cl:defmethod brake_pedal_valid-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:brake_pedal_valid-val is deprecated.  Use little_ant_msgs-msg:brake_pedal_valid instead.")
  (brake_pedal_valid m))

(cl:ensure-generic-function 'vehicle_ready-val :lambda-list '(m))
(cl:defmethod vehicle_ready-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:vehicle_ready-val is deprecated.  Use little_ant_msgs-msg:vehicle_ready instead.")
  (vehicle_ready m))

(cl:ensure-generic-function 'driverless_mode-val :lambda-list '(m))
(cl:defmethod driverless_mode-val ((m <State1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:driverless_mode-val is deprecated.  Use little_ant_msgs-msg:driverless_mode instead.")
  (driverless_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<State1>)))
    "Constants for message type '<State1>"
  '((:GEAR_DRIVE . 11)
    (:GEAR_NEUTRAL . 12)
    (:GEAR_REVERSE . 13))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'State1)))
    "Constants for message type 'State1"
  '((:GEAR_DRIVE . 11)
    (:GEAR_NEUTRAL . 12)
    (:GEAR_REVERSE . 13))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State1>) ostream)
  "Serializes a message object of type '<State1>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'act_gear)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_pedal_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_pedal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'accel_pedal_position_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'act_gear_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_pedal_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'vehicle_ready) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driverless_mode) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State1>) istream)
  "Deserializes a message object of type '<State1>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'act_gear)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_pedal_position) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_pedal)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_pedal_position_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'act_gear_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake_pedal_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'vehicle_ready) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'driverless_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State1>)))
  "Returns string type for a message object of type '<State1>"
  "little_ant_msgs/State1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State1)))
  "Returns string type for a message object of type 'State1"
  "little_ant_msgs/State1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State1>)))
  "Returns md5sum for a message object of type '<State1>"
  "d700876b21c15951961ee3bec1bee8b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State1)))
  "Returns md5sum for a message object of type 'State1"
  "d700876b21c15951961ee3bec1bee8b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State1>)))
  "Returns full string definition for message of type '<State1>"
  (cl:format cl:nil "#VCU_8 0x151~%~%std_msgs/Header header~%~%uint8 GEAR_DRIVE   = 11~%uint8 GEAR_NEUTRAL = 12~%uint8 GEAR_REVERSE = 13~%~%uint8 act_gear~%float32 accel_pedal_position~%uint8 brake_pedal~%bool accel_pedal_position_valid~%bool act_gear_valid~%bool brake_pedal_valid~%bool vehicle_ready~%bool driverless_mode~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State1)))
  "Returns full string definition for message of type 'State1"
  (cl:format cl:nil "#VCU_8 0x151~%~%std_msgs/Header header~%~%uint8 GEAR_DRIVE   = 11~%uint8 GEAR_NEUTRAL = 12~%uint8 GEAR_REVERSE = 13~%~%uint8 act_gear~%float32 accel_pedal_position~%uint8 brake_pedal~%bool accel_pedal_position_valid~%bool act_gear_valid~%bool brake_pedal_valid~%bool vehicle_ready~%bool driverless_mode~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State1>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State1>))
  "Converts a ROS message object to a list"
  (cl:list 'State1
    (cl:cons ':header (header msg))
    (cl:cons ':act_gear (act_gear msg))
    (cl:cons ':accel_pedal_position (accel_pedal_position msg))
    (cl:cons ':brake_pedal (brake_pedal msg))
    (cl:cons ':accel_pedal_position_valid (accel_pedal_position_valid msg))
    (cl:cons ':act_gear_valid (act_gear_valid msg))
    (cl:cons ':brake_pedal_valid (brake_pedal_valid msg))
    (cl:cons ':vehicle_ready (vehicle_ready msg))
    (cl:cons ':driverless_mode (driverless_mode msg))
))
