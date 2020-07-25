; Auto-generated. Do not edit!


(cl:in-package perception_msgs-srv)


;//! \htmlinclude GlobalMap-request.msg.html

(cl:defclass <GlobalMap-request> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:integer
    :initform 0))
)

(cl:defclass GlobalMap-request (<GlobalMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-srv:<GlobalMap-request> is deprecated: use perception_msgs-srv:GlobalMap-request instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GlobalMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:mode-val is deprecated.  Use perception_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalMap-request>) ostream)
  "Serializes a message object of type '<GlobalMap-request>"
  (cl:let* ((signed (cl:slot-value msg 'mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalMap-request>) istream)
  "Deserializes a message object of type '<GlobalMap-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalMap-request>)))
  "Returns string type for a service object of type '<GlobalMap-request>"
  "perception_msgs/GlobalMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalMap-request)))
  "Returns string type for a service object of type 'GlobalMap-request"
  "perception_msgs/GlobalMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalMap-request>)))
  "Returns md5sum for a message object of type '<GlobalMap-request>"
  "d26fdf98f211670f5a52fac3522681f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalMap-request)))
  "Returns md5sum for a message object of type 'GlobalMap-request"
  "d26fdf98f211670f5a52fac3522681f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalMap-request>)))
  "Returns full string definition for message of type '<GlobalMap-request>"
  (cl:format cl:nil "int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalMap-request)))
  "Returns full string definition for message of type 'GlobalMap-request"
  (cl:format cl:nil "int32 mode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalMap-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalMap-request
    (cl:cons ':mode (mode msg))
))
;//! \htmlinclude GlobalMap-response.msg.html

(cl:defclass <GlobalMap-response> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type perception_msgs-msg:Map
    :initform (cl:make-instance 'perception_msgs-msg:Map)))
)

(cl:defclass GlobalMap-response (<GlobalMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-srv:<GlobalMap-response> is deprecated: use perception_msgs-srv:GlobalMap-response instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <GlobalMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:map-val is deprecated.  Use perception_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalMap-response>) ostream)
  "Serializes a message object of type '<GlobalMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalMap-response>) istream)
  "Deserializes a message object of type '<GlobalMap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalMap-response>)))
  "Returns string type for a service object of type '<GlobalMap-response>"
  "perception_msgs/GlobalMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalMap-response)))
  "Returns string type for a service object of type 'GlobalMap-response"
  "perception_msgs/GlobalMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalMap-response>)))
  "Returns md5sum for a message object of type '<GlobalMap-response>"
  "d26fdf98f211670f5a52fac3522681f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalMap-response)))
  "Returns md5sum for a message object of type 'GlobalMap-response"
  "d26fdf98f211670f5a52fac3522681f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalMap-response>)))
  "Returns full string definition for message of type '<GlobalMap-response>"
  (cl:format cl:nil "perception_msgs/Map map~%~%~%================================================================================~%MSG: perception_msgs/Map~%#############################~%###       SunHao          ###~%#############################~%~%~%std_msgs/Header header~%~%geometry_msgs/Point origin_utm_pt~%~%perception_msgs/Section[] sections~%~%std_msgs/String uuid~%~%int32 id~%# -1 : closed map~%# 0 : simple map~%# 1: topo map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_msgs/Section~%#############################~%###       SunHao          ###~%#############################~%~%~%~%perception_msgs/Line[] lanes~%~%int32 direction_mode~%~%#############################~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String[] to_section_uuid~%std_msgs/String[] from_section_uuid~%~%~%std_msgs/String[] to_lane_uuid~%std_msgs/String[] from_lane_uuid~%~%~%std_msgs/String[] to_pt_uuid~%std_msgs/String[] from_pt_uuid~%~%#int32[] to_pt_id~%#int32[] from_pt_id~%~%#############################~%~%float32 length~%float32 highest_speed~%float32 traffic_cost~%~%~%~%================================================================================~%MSG: perception_msgs/Line~%#############################~%###       SunHao          ###~%#############################~%~%perception_msgs/Point[] pts~%~%#############################~%int8 is_main # Is the lane center lane of this section~%float64 offset~%float64 width~%~%#############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String main_uuid~%~%#int32 left_id~%std_msgs/String left_uuid~%~%#int32 right_id~%std_msgs/String right_uuid~%~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%#############################~%~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalMap-response)))
  "Returns full string definition for message of type 'GlobalMap-response"
  (cl:format cl:nil "perception_msgs/Map map~%~%~%================================================================================~%MSG: perception_msgs/Map~%#############################~%###       SunHao          ###~%#############################~%~%~%std_msgs/Header header~%~%geometry_msgs/Point origin_utm_pt~%~%perception_msgs/Section[] sections~%~%std_msgs/String uuid~%~%int32 id~%# -1 : closed map~%# 0 : simple map~%# 1: topo map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_msgs/Section~%#############################~%###       SunHao          ###~%#############################~%~%~%~%perception_msgs/Line[] lanes~%~%int32 direction_mode~%~%#############################~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String[] to_section_uuid~%std_msgs/String[] from_section_uuid~%~%~%std_msgs/String[] to_lane_uuid~%std_msgs/String[] from_lane_uuid~%~%~%std_msgs/String[] to_pt_uuid~%std_msgs/String[] from_pt_uuid~%~%#int32[] to_pt_id~%#int32[] from_pt_id~%~%#############################~%~%float32 length~%float32 highest_speed~%float32 traffic_cost~%~%~%~%================================================================================~%MSG: perception_msgs/Line~%#############################~%###       SunHao          ###~%#############################~%~%perception_msgs/Point[] pts~%~%#############################~%int8 is_main # Is the lane center lane of this section~%float64 offset~%float64 width~%~%#############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String main_uuid~%~%#int32 left_id~%std_msgs/String left_uuid~%~%#int32 right_id~%std_msgs/String right_uuid~%~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%#############################~%~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalMap-response
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GlobalMap)))
  'GlobalMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GlobalMap)))
  'GlobalMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalMap)))
  "Returns string type for a service object of type '<GlobalMap>"
  "perception_msgs/GlobalMap")