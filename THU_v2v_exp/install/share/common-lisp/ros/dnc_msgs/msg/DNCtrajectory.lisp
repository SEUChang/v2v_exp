; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-msg)


;//! \htmlinclude DNCtrajectory.msg.html

(cl:defclass <DNCtrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0)
   (desired_ax
    :reader desired_ax
    :initarg :desired_ax
    :type cl:float
    :initform 0.0)
   (path
    :reader path
    :initarg :path
    :type dnc_msgs-msg:DNCpath
    :initform (cl:make-instance 'dnc_msgs-msg:DNCpath)))
)

(cl:defclass DNCtrajectory (<DNCtrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DNCtrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DNCtrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-msg:<DNCtrajectory> is deprecated: use dnc_msgs-msg:DNCtrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DNCtrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:header-val is deprecated.  Use dnc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <DNCtrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:mode-val is deprecated.  Use dnc_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'desired_ax-val :lambda-list '(m))
(cl:defmethod desired_ax-val ((m <DNCtrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:desired_ax-val is deprecated.  Use dnc_msgs-msg:desired_ax instead.")
  (desired_ax m))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <DNCtrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:path-val is deprecated.  Use dnc_msgs-msg:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DNCtrajectory>) ostream)
  "Serializes a message object of type '<DNCtrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'desired_ax))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DNCtrajectory>) istream)
  "Deserializes a message object of type '<DNCtrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'desired_ax) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DNCtrajectory>)))
  "Returns string type for a message object of type '<DNCtrajectory>"
  "dnc_msgs/DNCtrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DNCtrajectory)))
  "Returns string type for a message object of type 'DNCtrajectory"
  "dnc_msgs/DNCtrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DNCtrajectory>)))
  "Returns md5sum for a message object of type '<DNCtrajectory>"
  "30984eee6f59e717ab9028ecc27d7d49")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DNCtrajectory)))
  "Returns md5sum for a message object of type 'DNCtrajectory"
  "30984eee6f59e717ab9028ecc27d7d49")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DNCtrajectory>)))
  "Returns full string definition for message of type '<DNCtrajectory>"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%std_msgs/Header header~%~%int32 mode~%float32 desired_ax~%dnc_msgs/DNCpath path~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dnc_msgs/DNCpath~%#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DNCtrajectory)))
  "Returns full string definition for message of type 'DNCtrajectory"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%std_msgs/Header header~%~%int32 mode~%float32 desired_ax~%dnc_msgs/DNCpath path~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dnc_msgs/DNCpath~%#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DNCtrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DNCtrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'DNCtrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':desired_ax (desired_ax msg))
    (cl:cons ':path (path msg))
))
