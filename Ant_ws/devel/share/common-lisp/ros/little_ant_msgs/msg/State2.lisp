; Auto-generated. Do not edit!


(cl:in-package little_ant_msgs-msg)


;//! \htmlinclude State2.msg.html

(cl:defclass <State2> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (wheel_speed_FL
    :reader wheel_speed_FL
    :initarg :wheel_speed_FL
    :type cl:float
    :initform 0.0)
   (wheel_speed_FR
    :reader wheel_speed_FR
    :initarg :wheel_speed_FR
    :type cl:float
    :initform 0.0)
   (wheel_speed_RL
    :reader wheel_speed_RL
    :initarg :wheel_speed_RL
    :type cl:float
    :initform 0.0)
   (wheel_speed_RR
    :reader wheel_speed_RR
    :initarg :wheel_speed_RR
    :type cl:float
    :initform 0.0)
   (vehicle_speed
    :reader vehicle_speed
    :initarg :vehicle_speed
    :type cl:float
    :initform 0.0)
   (wheel_speed_FL_valid
    :reader wheel_speed_FL_valid
    :initarg :wheel_speed_FL_valid
    :type cl:boolean
    :initform cl:nil)
   (wheel_speed_FR_valid
    :reader wheel_speed_FR_valid
    :initarg :wheel_speed_FR_valid
    :type cl:boolean
    :initform cl:nil)
   (wheel_speed_RL_valid
    :reader wheel_speed_RL_valid
    :initarg :wheel_speed_RL_valid
    :type cl:boolean
    :initform cl:nil)
   (wheel_speed_RR_valid
    :reader wheel_speed_RR_valid
    :initarg :wheel_speed_RR_valid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass State2 (<State2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name little_ant_msgs-msg:<State2> is deprecated: use little_ant_msgs-msg:State2 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:header-val is deprecated.  Use little_ant_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'wheel_speed_FL-val :lambda-list '(m))
(cl:defmethod wheel_speed_FL-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:wheel_speed_FL-val is deprecated.  Use little_ant_msgs-msg:wheel_speed_FL instead.")
  (wheel_speed_FL m))

(cl:ensure-generic-function 'wheel_speed_FR-val :lambda-list '(m))
(cl:defmethod wheel_speed_FR-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:wheel_speed_FR-val is deprecated.  Use little_ant_msgs-msg:wheel_speed_FR instead.")
  (wheel_speed_FR m))

(cl:ensure-generic-function 'wheel_speed_RL-val :lambda-list '(m))
(cl:defmethod wheel_speed_RL-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:wheel_speed_RL-val is deprecated.  Use little_ant_msgs-msg:wheel_speed_RL instead.")
  (wheel_speed_RL m))

(cl:ensure-generic-function 'wheel_speed_RR-val :lambda-list '(m))
(cl:defmethod wheel_speed_RR-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:wheel_speed_RR-val is deprecated.  Use little_ant_msgs-msg:wheel_speed_RR instead.")
  (wheel_speed_RR m))

(cl:ensure-generic-function 'vehicle_speed-val :lambda-list '(m))
(cl:defmethod vehicle_speed-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:vehicle_speed-val is deprecated.  Use little_ant_msgs-msg:vehicle_speed instead.")
  (vehicle_speed m))

(cl:ensure-generic-function 'wheel_speed_FL_valid-val :lambda-list '(m))
(cl:defmethod wheel_speed_FL_valid-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:wheel_speed_FL_valid-val is deprecated.  Use little_ant_msgs-msg:wheel_speed_FL_valid instead.")
  (wheel_speed_FL_valid m))

(cl:ensure-generic-function 'wheel_speed_FR_valid-val :lambda-list '(m))
(cl:defmethod wheel_speed_FR_valid-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:wheel_speed_FR_valid-val is deprecated.  Use little_ant_msgs-msg:wheel_speed_FR_valid instead.")
  (wheel_speed_FR_valid m))

(cl:ensure-generic-function 'wheel_speed_RL_valid-val :lambda-list '(m))
(cl:defmethod wheel_speed_RL_valid-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:wheel_speed_RL_valid-val is deprecated.  Use little_ant_msgs-msg:wheel_speed_RL_valid instead.")
  (wheel_speed_RL_valid m))

(cl:ensure-generic-function 'wheel_speed_RR_valid-val :lambda-list '(m))
(cl:defmethod wheel_speed_RR_valid-val ((m <State2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:wheel_speed_RR_valid-val is deprecated.  Use little_ant_msgs-msg:wheel_speed_RR_valid instead.")
  (wheel_speed_RR_valid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State2>) ostream)
  "Serializes a message object of type '<State2>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_FL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_FR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_RL))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'wheel_speed_RR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vehicle_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_speed_FL_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_speed_FR_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_speed_RL_valid) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wheel_speed_RR_valid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State2>) istream)
  "Deserializes a message object of type '<State2>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_FL) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_FR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_RL) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed_RR) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'wheel_speed_FL_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_speed_FR_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_speed_RL_valid) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'wheel_speed_RR_valid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State2>)))
  "Returns string type for a message object of type '<State2>"
  "little_ant_msgs/State2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State2)))
  "Returns string type for a message object of type 'State2"
  "little_ant_msgs/State2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State2>)))
  "Returns md5sum for a message object of type '<State2>"
  "7e1f5bf0137abb4b497e51cd65566aa6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State2)))
  "Returns md5sum for a message object of type 'State2"
  "7e1f5bf0137abb4b497e51cd65566aa6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State2>)))
  "Returns full string definition for message of type '<State2>"
  (cl:format cl:nil "#VCU_ABS_1  0x300~%~%std_msgs/Header header~%~%#  km/s~%float32 wheel_speed_FL~%float32 wheel_speed_FR~%float32 wheel_speed_RL~%float32 wheel_speed_RR~%~%float32 vehicle_speed   # m/s~%~%bool wheel_speed_FL_valid~%bool wheel_speed_FR_valid~%bool wheel_speed_RL_valid~%bool wheel_speed_RR_valid~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State2)))
  "Returns full string definition for message of type 'State2"
  (cl:format cl:nil "#VCU_ABS_1  0x300~%~%std_msgs/Header header~%~%#  km/s~%float32 wheel_speed_FL~%float32 wheel_speed_FR~%float32 wheel_speed_RL~%float32 wheel_speed_RR~%~%float32 vehicle_speed   # m/s~%~%bool wheel_speed_FL_valid~%bool wheel_speed_FR_valid~%bool wheel_speed_RL_valid~%bool wheel_speed_RR_valid~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State2>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State2>))
  "Converts a ROS message object to a list"
  (cl:list 'State2
    (cl:cons ':header (header msg))
    (cl:cons ':wheel_speed_FL (wheel_speed_FL msg))
    (cl:cons ':wheel_speed_FR (wheel_speed_FR msg))
    (cl:cons ':wheel_speed_RL (wheel_speed_RL msg))
    (cl:cons ':wheel_speed_RR (wheel_speed_RR msg))
    (cl:cons ':vehicle_speed (vehicle_speed msg))
    (cl:cons ':wheel_speed_FL_valid (wheel_speed_FL_valid msg))
    (cl:cons ':wheel_speed_FR_valid (wheel_speed_FR_valid msg))
    (cl:cons ':wheel_speed_RL_valid (wheel_speed_RL_valid msg))
    (cl:cons ':wheel_speed_RR_valid (wheel_speed_RR_valid msg))
))
