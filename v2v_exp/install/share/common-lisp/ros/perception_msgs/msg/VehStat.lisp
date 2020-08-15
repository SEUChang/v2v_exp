; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude VehStat.msg.html

(cl:defclass <VehStat> (roslisp-msg-protocol:ros-message)
  ((localization
    :reader localization
    :initarg :localization
    :type perception_msgs-msg:Localization
    :initform (cl:make-instance 'perception_msgs-msg:Localization))
   (stat
    :reader stat
    :initarg :stat
    :type perception_msgs-msg:InternalStat
    :initform (cl:make-instance 'perception_msgs-msg:InternalStat)))
)

(cl:defclass VehStat (<VehStat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehStat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehStat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<VehStat> is deprecated: use perception_msgs-msg:VehStat instead.")))

(cl:ensure-generic-function 'localization-val :lambda-list '(m))
(cl:defmethod localization-val ((m <VehStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:localization-val is deprecated.  Use perception_msgs-msg:localization instead.")
  (localization m))

(cl:ensure-generic-function 'stat-val :lambda-list '(m))
(cl:defmethod stat-val ((m <VehStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:stat-val is deprecated.  Use perception_msgs-msg:stat instead.")
  (stat m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehStat>) ostream)
  "Serializes a message object of type '<VehStat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'localization) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stat) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehStat>) istream)
  "Deserializes a message object of type '<VehStat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'localization) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stat) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehStat>)))
  "Returns string type for a message object of type '<VehStat>"
  "perception_msgs/VehStat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehStat)))
  "Returns string type for a message object of type 'VehStat"
  "perception_msgs/VehStat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehStat>)))
  "Returns md5sum for a message object of type '<VehStat>"
  "14f027e98cfa9be37f7d1091ffc370b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehStat)))
  "Returns md5sum for a message object of type 'VehStat"
  "14f027e98cfa9be37f7d1091ffc370b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehStat>)))
  "Returns full string definition for message of type '<VehStat>"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%~%~%perception_msgs/Localization localization~%perception_msgs/InternalStat stat~%================================================================================~%MSG: perception_msgs/Localization~%#############################~%###       SunHao          ###~%#############################~%~%std_msgs/Header header~%~%int32 state~%~%float64 x~%float64 y~%float64 z~%float64 heading~%float64 speed~%float64 utc_time~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: perception_msgs/InternalStat~%#############################~%###       SunHao          ###~%#############################~%~%int32 state~%~%float64 vx~%float64 vy~%~%float64 omega~%float64 sw~%float64 acc~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehStat)))
  "Returns full string definition for message of type 'VehStat"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%~%~%perception_msgs/Localization localization~%perception_msgs/InternalStat stat~%================================================================================~%MSG: perception_msgs/Localization~%#############################~%###       SunHao          ###~%#############################~%~%std_msgs/Header header~%~%int32 state~%~%float64 x~%float64 y~%float64 z~%float64 heading~%float64 speed~%float64 utc_time~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: perception_msgs/InternalStat~%#############################~%###       SunHao          ###~%#############################~%~%int32 state~%~%float64 vx~%float64 vy~%~%float64 omega~%float64 sw~%float64 acc~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehStat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'localization))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stat))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehStat>))
  "Converts a ROS message object to a list"
  (cl:list 'VehStat
    (cl:cons ':localization (localization msg))
    (cl:cons ':stat (stat msg))
))
