; Auto-generated. Do not edit!


(cl:in-package perception_msgs-srv)


;//! \htmlinclude GlobalPath-request.msg.html

(cl:defclass <GlobalPath-request> (roslisp-msg-protocol:ros-message)
  ((start_pt
    :reader start_pt
    :initarg :start_pt
    :type perception_msgs-msg:Point
    :initform (cl:make-instance 'perception_msgs-msg:Point))
   (goal_pt
    :reader goal_pt
    :initarg :goal_pt
    :type perception_msgs-msg:Point
    :initform (cl:make-instance 'perception_msgs-msg:Point))
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0))
)

(cl:defclass GlobalPath-request (<GlobalPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-srv:<GlobalPath-request> is deprecated: use perception_msgs-srv:GlobalPath-request instead.")))

(cl:ensure-generic-function 'start_pt-val :lambda-list '(m))
(cl:defmethod start_pt-val ((m <GlobalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:start_pt-val is deprecated.  Use perception_msgs-srv:start_pt instead.")
  (start_pt m))

(cl:ensure-generic-function 'goal_pt-val :lambda-list '(m))
(cl:defmethod goal_pt-val ((m <GlobalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:goal_pt-val is deprecated.  Use perception_msgs-srv:goal_pt instead.")
  (goal_pt m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <GlobalPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:type-val is deprecated.  Use perception_msgs-srv:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPath-request>) ostream)
  "Serializes a message object of type '<GlobalPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pt) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pt) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPath-request>) istream)
  "Deserializes a message object of type '<GlobalPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pt) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pt) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPath-request>)))
  "Returns string type for a service object of type '<GlobalPath-request>"
  "perception_msgs/GlobalPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPath-request)))
  "Returns string type for a service object of type 'GlobalPath-request"
  "perception_msgs/GlobalPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPath-request>)))
  "Returns md5sum for a message object of type '<GlobalPath-request>"
  "7837730f008be57270344a16d5aaa53d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPath-request)))
  "Returns md5sum for a message object of type 'GlobalPath-request"
  "7837730f008be57270344a16d5aaa53d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPath-request>)))
  "Returns full string definition for message of type '<GlobalPath-request>"
  (cl:format cl:nil "perception_msgs/Point start_pt~%perception_msgs/Point goal_pt~%int32 type~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPath-request)))
  "Returns full string definition for message of type 'GlobalPath-request"
  (cl:format cl:nil "perception_msgs/Point start_pt~%perception_msgs/Point goal_pt~%int32 type~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pt))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pt))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPath-request
    (cl:cons ':start_pt (start_pt msg))
    (cl:cons ':goal_pt (goal_pt msg))
    (cl:cons ':type (type msg))
))
;//! \htmlinclude GlobalPath-response.msg.html

(cl:defclass <GlobalPath-response> (roslisp-msg-protocol:ros-message)
  ((path
    :reader path
    :initarg :path
    :type perception_msgs-msg:GlobalPathIndex
    :initform (cl:make-instance 'perception_msgs-msg:GlobalPathIndex)))
)

(cl:defclass GlobalPath-response (<GlobalPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-srv:<GlobalPath-response> is deprecated: use perception_msgs-srv:GlobalPath-response instead.")))

(cl:ensure-generic-function 'path-val :lambda-list '(m))
(cl:defmethod path-val ((m <GlobalPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:path-val is deprecated.  Use perception_msgs-srv:path instead.")
  (path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPath-response>) ostream)
  "Serializes a message object of type '<GlobalPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPath-response>) istream)
  "Deserializes a message object of type '<GlobalPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPath-response>)))
  "Returns string type for a service object of type '<GlobalPath-response>"
  "perception_msgs/GlobalPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPath-response)))
  "Returns string type for a service object of type 'GlobalPath-response"
  "perception_msgs/GlobalPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPath-response>)))
  "Returns md5sum for a message object of type '<GlobalPath-response>"
  "7837730f008be57270344a16d5aaa53d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPath-response)))
  "Returns md5sum for a message object of type 'GlobalPath-response"
  "7837730f008be57270344a16d5aaa53d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPath-response>)))
  "Returns full string definition for message of type '<GlobalPath-response>"
  (cl:format cl:nil "perception_msgs/GlobalPathIndex path~%~%================================================================================~%MSG: perception_msgs/GlobalPathIndex~%#############################~%###       SunHao          ###~%#############################~%~%~%int32 start_section~%int32 start_lane~%int32 start_pt~%~%#########################~%~%int32[] topo~%~%#########################~%int32 goal_section~%int32 goal_lane~%int32 goal_pt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPath-response)))
  "Returns full string definition for message of type 'GlobalPath-response"
  (cl:format cl:nil "perception_msgs/GlobalPathIndex path~%~%================================================================================~%MSG: perception_msgs/GlobalPathIndex~%#############################~%###       SunHao          ###~%#############################~%~%~%int32 start_section~%int32 start_lane~%int32 start_pt~%~%#########################~%~%int32[] topo~%~%#########################~%int32 goal_section~%int32 goal_lane~%int32 goal_pt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPath-response
    (cl:cons ':path (path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GlobalPath)))
  'GlobalPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GlobalPath)))
  'GlobalPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPath)))
  "Returns string type for a service object of type '<GlobalPath>"
  "perception_msgs/GlobalPath")