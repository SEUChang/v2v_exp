; Auto-generated. Do not edit!


(cl:in-package little_ant_msgs-msg)


;//! \htmlinclude ControlCmd2.msg.html

(cl:defclass <ControlCmd2> (roslisp-msg-protocol:ros-message)
  ((set_gear
    :reader set_gear
    :initarg :set_gear
    :type cl:fixnum
    :initform 0)
   (set_speed
    :reader set_speed
    :initarg :set_speed
    :type cl:float
    :initform 0.0)
   (set_brake
    :reader set_brake
    :initarg :set_brake
    :type cl:float
    :initform 0.0)
   (set_accelerate
    :reader set_accelerate
    :initarg :set_accelerate
    :type cl:float
    :initform 0.0)
   (set_roadWheelAngle
    :reader set_roadWheelAngle
    :initarg :set_roadWheelAngle
    :type cl:float
    :initform 0.0)
   (set_emergencyBrake
    :reader set_emergencyBrake
    :initarg :set_emergencyBrake
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ControlCmd2 (<ControlCmd2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCmd2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCmd2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name little_ant_msgs-msg:<ControlCmd2> is deprecated: use little_ant_msgs-msg:ControlCmd2 instead.")))

(cl:ensure-generic-function 'set_gear-val :lambda-list '(m))
(cl:defmethod set_gear-val ((m <ControlCmd2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_gear-val is deprecated.  Use little_ant_msgs-msg:set_gear instead.")
  (set_gear m))

(cl:ensure-generic-function 'set_speed-val :lambda-list '(m))
(cl:defmethod set_speed-val ((m <ControlCmd2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_speed-val is deprecated.  Use little_ant_msgs-msg:set_speed instead.")
  (set_speed m))

(cl:ensure-generic-function 'set_brake-val :lambda-list '(m))
(cl:defmethod set_brake-val ((m <ControlCmd2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_brake-val is deprecated.  Use little_ant_msgs-msg:set_brake instead.")
  (set_brake m))

(cl:ensure-generic-function 'set_accelerate-val :lambda-list '(m))
(cl:defmethod set_accelerate-val ((m <ControlCmd2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_accelerate-val is deprecated.  Use little_ant_msgs-msg:set_accelerate instead.")
  (set_accelerate m))

(cl:ensure-generic-function 'set_roadWheelAngle-val :lambda-list '(m))
(cl:defmethod set_roadWheelAngle-val ((m <ControlCmd2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_roadWheelAngle-val is deprecated.  Use little_ant_msgs-msg:set_roadWheelAngle instead.")
  (set_roadWheelAngle m))

(cl:ensure-generic-function 'set_emergencyBrake-val :lambda-list '(m))
(cl:defmethod set_emergencyBrake-val ((m <ControlCmd2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_emergencyBrake-val is deprecated.  Use little_ant_msgs-msg:set_emergencyBrake instead.")
  (set_emergencyBrake m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControlCmd2>)))
    "Constants for message type '<ControlCmd2>"
  '((:GEAR_DRIVE . 1)
    (:GEAR_REVERSE . 9)
    (:GEAR_NEUTRAL . 10)
    (:GEAR_PARKING . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControlCmd2)))
    "Constants for message type 'ControlCmd2"
  '((:GEAR_DRIVE . 1)
    (:GEAR_REVERSE . 9)
    (:GEAR_NEUTRAL . 10)
    (:GEAR_PARKING . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCmd2>) ostream)
  "Serializes a message object of type '<ControlCmd2>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'set_gear)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'set_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'set_brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'set_accelerate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'set_roadWheelAngle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_emergencyBrake) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCmd2>) istream)
  "Deserializes a message object of type '<ControlCmd2>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'set_gear)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_brake) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_accelerate) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'set_roadWheelAngle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'set_emergencyBrake) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCmd2>)))
  "Returns string type for a message object of type '<ControlCmd2>"
  "little_ant_msgs/ControlCmd2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCmd2)))
  "Returns string type for a message object of type 'ControlCmd2"
  "little_ant_msgs/ControlCmd2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCmd2>)))
  "Returns md5sum for a message object of type '<ControlCmd2>"
  "37dba26fbb2ffb96611897d743ebdf12")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCmd2)))
  "Returns md5sum for a message object of type 'ControlCmd2"
  "37dba26fbb2ffb96611897d743ebdf12")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCmd2>)))
  "Returns full string definition for message of type '<ControlCmd2>"
  (cl:format cl:nil "#IDM_2  0x1C5~%~%~%uint8 GEAR_DRIVE   = 1~%uint8 GEAR_REVERSE = 9~%uint8 GEAR_NEUTRAL = 10~%uint8 GEAR_PARKING = 11~%~%uint8 set_gear~%float32 set_speed~%float32 set_brake~%float32 set_accelerate~%float32 set_roadWheelAngle   #CCW(-), CW(+)~%bool set_emergencyBrake~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCmd2)))
  "Returns full string definition for message of type 'ControlCmd2"
  (cl:format cl:nil "#IDM_2  0x1C5~%~%~%uint8 GEAR_DRIVE   = 1~%uint8 GEAR_REVERSE = 9~%uint8 GEAR_NEUTRAL = 10~%uint8 GEAR_PARKING = 11~%~%uint8 set_gear~%float32 set_speed~%float32 set_brake~%float32 set_accelerate~%float32 set_roadWheelAngle   #CCW(-), CW(+)~%bool set_emergencyBrake~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCmd2>))
  (cl:+ 0
     1
     4
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCmd2>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCmd2
    (cl:cons ':set_gear (set_gear msg))
    (cl:cons ':set_speed (set_speed msg))
    (cl:cons ':set_brake (set_brake msg))
    (cl:cons ':set_accelerate (set_accelerate msg))
    (cl:cons ':set_roadWheelAngle (set_roadWheelAngle msg))
    (cl:cons ':set_emergencyBrake (set_emergencyBrake msg))
))
