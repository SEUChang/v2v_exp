; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude Map.msg.html

(cl:defclass <Map> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (origin_utm_pt
    :reader origin_utm_pt
    :initarg :origin_utm_pt
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (sections
    :reader sections
    :initarg :sections
    :type (cl:vector perception_msgs-msg:Section)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:Section :initial-element (cl:make-instance 'perception_msgs-msg:Section)))
   (uuid
    :reader uuid
    :initarg :uuid
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass Map (<Map>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Map>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Map)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<Map> is deprecated: use perception_msgs-msg:Map instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:header-val is deprecated.  Use perception_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'origin_utm_pt-val :lambda-list '(m))
(cl:defmethod origin_utm_pt-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:origin_utm_pt-val is deprecated.  Use perception_msgs-msg:origin_utm_pt instead.")
  (origin_utm_pt m))

(cl:ensure-generic-function 'sections-val :lambda-list '(m))
(cl:defmethod sections-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:sections-val is deprecated.  Use perception_msgs-msg:sections instead.")
  (sections m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:uuid-val is deprecated.  Use perception_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:id-val is deprecated.  Use perception_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Map>) ostream)
  "Serializes a message object of type '<Map>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin_utm_pt) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sections))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uuid) ostream)
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Map>) istream)
  "Deserializes a message object of type '<Map>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin_utm_pt) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:Section))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uuid) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Map>)))
  "Returns string type for a message object of type '<Map>"
  "perception_msgs/Map")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Map)))
  "Returns string type for a message object of type 'Map"
  "perception_msgs/Map")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Map>)))
  "Returns md5sum for a message object of type '<Map>"
  "f311c97842ff52d6f2efb99074fbe5db")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Map)))
  "Returns md5sum for a message object of type 'Map"
  "f311c97842ff52d6f2efb99074fbe5db")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Map>)))
  "Returns full string definition for message of type '<Map>"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%std_msgs/Header header~%~%geometry_msgs/Point origin_utm_pt~%~%perception_msgs/Section[] sections~%~%std_msgs/String uuid~%~%int32 id~%# -1 : closed map~%# 0 : simple map~%# 1: topo map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_msgs/Section~%#############################~%###       SunHao          ###~%#############################~%~%~%~%perception_msgs/Line[] lanes~%~%int32 direction_mode~%~%#############################~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String[] to_section_uuid~%std_msgs/String[] from_section_uuid~%~%~%std_msgs/String[] to_lane_uuid~%std_msgs/String[] from_lane_uuid~%~%~%std_msgs/String[] to_pt_uuid~%std_msgs/String[] from_pt_uuid~%~%#int32[] to_pt_id~%#int32[] from_pt_id~%~%#############################~%~%float32 length~%float32 highest_speed~%float32 traffic_cost~%~%~%~%================================================================================~%MSG: perception_msgs/Line~%#############################~%###       SunHao          ###~%#############################~%~%perception_msgs/Point[] pts~%~%#############################~%int8 is_main # Is the lane center lane of this section~%float64 offset~%float64 width~%~%#############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String main_uuid~%~%#int32 left_id~%std_msgs/String left_uuid~%~%#int32 right_id~%std_msgs/String right_uuid~%~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%#############################~%~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Map)))
  "Returns full string definition for message of type 'Map"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%std_msgs/Header header~%~%geometry_msgs/Point origin_utm_pt~%~%perception_msgs/Section[] sections~%~%std_msgs/String uuid~%~%int32 id~%# -1 : closed map~%# 0 : simple map~%# 1: topo map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: perception_msgs/Section~%#############################~%###       SunHao          ###~%#############################~%~%~%~%perception_msgs/Line[] lanes~%~%int32 direction_mode~%~%#############################~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String[] to_section_uuid~%std_msgs/String[] from_section_uuid~%~%~%std_msgs/String[] to_lane_uuid~%std_msgs/String[] from_lane_uuid~%~%~%std_msgs/String[] to_pt_uuid~%std_msgs/String[] from_pt_uuid~%~%#int32[] to_pt_id~%#int32[] from_pt_id~%~%#############################~%~%float32 length~%float32 highest_speed~%float32 traffic_cost~%~%~%~%================================================================================~%MSG: perception_msgs/Line~%#############################~%###       SunHao          ###~%#############################~%~%perception_msgs/Point[] pts~%~%#############################~%int8 is_main # Is the lane center lane of this section~%float64 offset~%float64 width~%~%#############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String main_uuid~%~%#int32 left_id~%std_msgs/String left_uuid~%~%#int32 right_id~%std_msgs/String right_uuid~%~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%#############################~%~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Map>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin_utm_pt))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uuid))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Map>))
  "Converts a ROS message object to a list"
  (cl:list 'Map
    (cl:cons ':header (header msg))
    (cl:cons ':origin_utm_pt (origin_utm_pt msg))
    (cl:cons ':sections (sections msg))
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':id (id msg))
))
