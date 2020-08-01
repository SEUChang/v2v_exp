; Auto-generated. Do not edit!


(cl:in-package little_ant_msgs-msg)


;//! \htmlinclude State3.msg.html

(cl:defclass <State3> (roslisp-msg-protocol:ros-message)
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
   (turn_light_R
    :reader turn_light_R
    :initarg :turn_light_R
    :type cl:boolean
    :initform cl:nil)
   (turn_light_L
    :reader turn_light_L
    :initarg :turn_light_L
    :type cl:boolean
    :initform cl:nil)
   (parkTail_light
    :reader parkTail_light
    :initarg :parkTail_light
    :type cl:boolean
    :initform cl:nil)
   (high_beam
    :reader high_beam
    :initarg :high_beam
    :type cl:boolean
    :initform cl:nil)
   (low_beam
    :reader low_beam
    :initarg :low_beam
    :type cl:boolean
    :initform cl:nil)
   (brake_light
    :reader brake_light
    :initarg :brake_light
    :type cl:boolean
    :initform cl:nil)
   (horn
    :reader horn
    :initarg :horn
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass State3 (<State3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <State3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'State3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name little_ant_msgs-msg:<State3> is deprecated: use little_ant_msgs-msg:State3 instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:header-val is deprecated.  Use little_ant_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'driverless_mode-val :lambda-list '(m))
(cl:defmethod driverless_mode-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:driverless_mode-val is deprecated.  Use little_ant_msgs-msg:driverless_mode instead.")
  (driverless_mode m))

(cl:ensure-generic-function 'turn_light_R-val :lambda-list '(m))
(cl:defmethod turn_light_R-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:turn_light_R-val is deprecated.  Use little_ant_msgs-msg:turn_light_R instead.")
  (turn_light_R m))

(cl:ensure-generic-function 'turn_light_L-val :lambda-list '(m))
(cl:defmethod turn_light_L-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:turn_light_L-val is deprecated.  Use little_ant_msgs-msg:turn_light_L instead.")
  (turn_light_L m))

(cl:ensure-generic-function 'parkTail_light-val :lambda-list '(m))
(cl:defmethod parkTail_light-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:parkTail_light-val is deprecated.  Use little_ant_msgs-msg:parkTail_light instead.")
  (parkTail_light m))

(cl:ensure-generic-function 'high_beam-val :lambda-list '(m))
(cl:defmethod high_beam-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:high_beam-val is deprecated.  Use little_ant_msgs-msg:high_beam instead.")
  (high_beam m))

(cl:ensure-generic-function 'low_beam-val :lambda-list '(m))
(cl:defmethod low_beam-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:low_beam-val is deprecated.  Use little_ant_msgs-msg:low_beam instead.")
  (low_beam m))

(cl:ensure-generic-function 'brake_light-val :lambda-list '(m))
(cl:defmethod brake_light-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:brake_light-val is deprecated.  Use little_ant_msgs-msg:brake_light instead.")
  (brake_light m))

(cl:ensure-generic-function 'horn-val :lambda-list '(m))
(cl:defmethod horn-val ((m <State3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:horn-val is deprecated.  Use little_ant_msgs-msg:horn instead.")
  (horn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <State3>) ostream)
  "Serializes a message object of type '<State3>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driverless_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turn_light_R) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'turn_light_L) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'parkTail_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'high_beam) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'low_beam) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_light) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'horn) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <State3>) istream)
  "Deserializes a message object of type '<State3>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'driverless_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'turn_light_R) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'turn_light_L) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'parkTail_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'high_beam) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'low_beam) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'brake_light) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'horn) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<State3>)))
  "Returns string type for a message object of type '<State3>"
  "little_ant_msgs/State3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'State3)))
  "Returns string type for a message object of type 'State3"
  "little_ant_msgs/State3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<State3>)))
  "Returns md5sum for a message object of type '<State3>"
  "2adb4f3bd0140b3e748f6391b224e7e9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'State3)))
  "Returns md5sum for a message object of type 'State3"
  "2adb4f3bd0140b3e748f6391b224e7e9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<State3>)))
  "Returns full string definition for message of type '<State3>"
  (cl:format cl:nil "#ACM_1  0x4D1~%~%std_msgs/Header header~%~%bool driverless_mode~%~%bool turn_light_R~%~%bool turn_light_L~%~%bool parkTail_light~%~%bool high_beam~%bool low_beam~%~%bool brake_light~%bool horn~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'State3)))
  "Returns full string definition for message of type 'State3"
  (cl:format cl:nil "#ACM_1  0x4D1~%~%std_msgs/Header header~%~%bool driverless_mode~%~%bool turn_light_R~%~%bool turn_light_L~%~%bool parkTail_light~%~%bool high_beam~%bool low_beam~%~%bool brake_light~%bool horn~%~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <State3>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <State3>))
  "Converts a ROS message object to a list"
  (cl:list 'State3
    (cl:cons ':header (header msg))
    (cl:cons ':driverless_mode (driverless_mode msg))
    (cl:cons ':turn_light_R (turn_light_R msg))
    (cl:cons ':turn_light_L (turn_light_L msg))
    (cl:cons ':parkTail_light (parkTail_light msg))
    (cl:cons ':high_beam (high_beam msg))
    (cl:cons ':low_beam (low_beam msg))
    (cl:cons ':brake_light (brake_light msg))
    (cl:cons ':horn (horn msg))
))
