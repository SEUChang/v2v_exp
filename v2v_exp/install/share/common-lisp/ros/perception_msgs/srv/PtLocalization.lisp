; Auto-generated. Do not edit!


(cl:in-package perception_msgs-srv)


;//! \htmlinclude PtLocalization-request.msg.html

(cl:defclass <PtLocalization-request> (roslisp-msg-protocol:ros-message)
  ((pt
    :reader pt
    :initarg :pt
    :type perception_msgs-msg:Point
    :initform (cl:make-instance 'perception_msgs-msg:Point)))
)

(cl:defclass PtLocalization-request (<PtLocalization-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PtLocalization-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PtLocalization-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-srv:<PtLocalization-request> is deprecated: use perception_msgs-srv:PtLocalization-request instead.")))

(cl:ensure-generic-function 'pt-val :lambda-list '(m))
(cl:defmethod pt-val ((m <PtLocalization-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:pt-val is deprecated.  Use perception_msgs-srv:pt instead.")
  (pt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PtLocalization-request>) ostream)
  "Serializes a message object of type '<PtLocalization-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pt) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PtLocalization-request>) istream)
  "Deserializes a message object of type '<PtLocalization-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pt) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PtLocalization-request>)))
  "Returns string type for a service object of type '<PtLocalization-request>"
  "perception_msgs/PtLocalizationRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PtLocalization-request)))
  "Returns string type for a service object of type 'PtLocalization-request"
  "perception_msgs/PtLocalizationRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PtLocalization-request>)))
  "Returns md5sum for a message object of type '<PtLocalization-request>"
  "8aef997f06107575271338a7eeacbecc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PtLocalization-request)))
  "Returns md5sum for a message object of type 'PtLocalization-request"
  "8aef997f06107575271338a7eeacbecc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PtLocalization-request>)))
  "Returns full string definition for message of type '<PtLocalization-request>"
  (cl:format cl:nil "perception_msgs/Point pt~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PtLocalization-request)))
  "Returns full string definition for message of type 'PtLocalization-request"
  (cl:format cl:nil "perception_msgs/Point pt~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PtLocalization-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pt))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PtLocalization-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PtLocalization-request
    (cl:cons ':pt (pt msg))
))
;//! \htmlinclude PtLocalization-response.msg.html

(cl:defclass <PtLocalization-response> (roslisp-msg-protocol:ros-message)
  ((s
    :reader s
    :initarg :s
    :type cl:integer
    :initform 0)
   (l
    :reader l
    :initarg :l
    :type cl:integer
    :initform 0)
   (p
    :reader p
    :initarg :p
    :type cl:integer
    :initform 0))
)

(cl:defclass PtLocalization-response (<PtLocalization-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PtLocalization-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PtLocalization-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-srv:<PtLocalization-response> is deprecated: use perception_msgs-srv:PtLocalization-response instead.")))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <PtLocalization-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:s-val is deprecated.  Use perception_msgs-srv:s instead.")
  (s m))

(cl:ensure-generic-function 'l-val :lambda-list '(m))
(cl:defmethod l-val ((m <PtLocalization-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:l-val is deprecated.  Use perception_msgs-srv:l instead.")
  (l m))

(cl:ensure-generic-function 'p-val :lambda-list '(m))
(cl:defmethod p-val ((m <PtLocalization-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-srv:p-val is deprecated.  Use perception_msgs-srv:p instead.")
  (p m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PtLocalization-response>) ostream)
  "Serializes a message object of type '<PtLocalization-response>"
  (cl:let* ((signed (cl:slot-value msg 's)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'l)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'p)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PtLocalization-response>) istream)
  "Deserializes a message object of type '<PtLocalization-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 's) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'l) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'p) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PtLocalization-response>)))
  "Returns string type for a service object of type '<PtLocalization-response>"
  "perception_msgs/PtLocalizationResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PtLocalization-response)))
  "Returns string type for a service object of type 'PtLocalization-response"
  "perception_msgs/PtLocalizationResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PtLocalization-response>)))
  "Returns md5sum for a message object of type '<PtLocalization-response>"
  "8aef997f06107575271338a7eeacbecc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PtLocalization-response)))
  "Returns md5sum for a message object of type 'PtLocalization-response"
  "8aef997f06107575271338a7eeacbecc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PtLocalization-response>)))
  "Returns full string definition for message of type '<PtLocalization-response>"
  (cl:format cl:nil "int32 s~%int32 l~%int32 p~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PtLocalization-response)))
  "Returns full string definition for message of type 'PtLocalization-response"
  (cl:format cl:nil "int32 s~%int32 l~%int32 p~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PtLocalization-response>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PtLocalization-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PtLocalization-response
    (cl:cons ':s (s msg))
    (cl:cons ':l (l msg))
    (cl:cons ':p (p msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PtLocalization)))
  'PtLocalization-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PtLocalization)))
  'PtLocalization-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PtLocalization)))
  "Returns string type for a service object of type '<PtLocalization>"
  "perception_msgs/PtLocalization")