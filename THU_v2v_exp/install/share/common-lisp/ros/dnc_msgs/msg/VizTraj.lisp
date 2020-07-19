; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-msg)


;//! \htmlinclude VizTraj.msg.html

(cl:defclass <VizTraj> (roslisp-msg-protocol:ros-message)
  ((cluster
    :reader cluster
    :initarg :cluster
    :type (cl:vector dnc_msgs-msg:DNCtrajectory)
   :initform (cl:make-array 0 :element-type 'dnc_msgs-msg:DNCtrajectory :initial-element (cl:make-instance 'dnc_msgs-msg:DNCtrajectory))))
)

(cl:defclass VizTraj (<VizTraj>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VizTraj>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VizTraj)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-msg:<VizTraj> is deprecated: use dnc_msgs-msg:VizTraj instead.")))

(cl:ensure-generic-function 'cluster-val :lambda-list '(m))
(cl:defmethod cluster-val ((m <VizTraj>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:cluster-val is deprecated.  Use dnc_msgs-msg:cluster instead.")
  (cluster m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VizTraj>) ostream)
  "Serializes a message object of type '<VizTraj>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'cluster))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'cluster))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VizTraj>) istream)
  "Deserializes a message object of type '<VizTraj>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'cluster) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'cluster)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dnc_msgs-msg:DNCtrajectory))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VizTraj>)))
  "Returns string type for a message object of type '<VizTraj>"
  "dnc_msgs/VizTraj")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VizTraj)))
  "Returns string type for a message object of type 'VizTraj"
  "dnc_msgs/VizTraj")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VizTraj>)))
  "Returns md5sum for a message object of type '<VizTraj>"
  "23126120fd65eed3989e3e640a1add5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VizTraj)))
  "Returns md5sum for a message object of type 'VizTraj"
  "23126120fd65eed3989e3e640a1add5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VizTraj>)))
  "Returns full string definition for message of type '<VizTraj>"
  (cl:format cl:nil "dnc_msgs/DNCtrajectory[] cluster~%================================================================================~%MSG: dnc_msgs/DNCtrajectory~%#############################~%###       SunHao          ###~%#############################~%~%std_msgs/Header header~%~%int32 mode~%float32 desired_ax~%dnc_msgs/DNCpath path~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dnc_msgs/DNCpath~%#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VizTraj)))
  "Returns full string definition for message of type 'VizTraj"
  (cl:format cl:nil "dnc_msgs/DNCtrajectory[] cluster~%================================================================================~%MSG: dnc_msgs/DNCtrajectory~%#############################~%###       SunHao          ###~%#############################~%~%std_msgs/Header header~%~%int32 mode~%float32 desired_ax~%dnc_msgs/DNCpath path~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: dnc_msgs/DNCpath~%#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VizTraj>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'cluster) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VizTraj>))
  "Converts a ROS message object to a list"
  (cl:list 'VizTraj
    (cl:cons ':cluster (cluster msg))
))
