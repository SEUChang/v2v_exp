; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-srv)


;//! \htmlinclude SmoothPath-request.msg.html

(cl:defclass <SmoothPath-request> (roslisp-msg-protocol:ros-message)
  ((st_pt
    :reader st_pt
    :initarg :st_pt
    :type dnc_msgs-msg:DNCpoint
    :initform (cl:make-instance 'dnc_msgs-msg:DNCpoint))
   (ori_path
    :reader ori_path
    :initarg :ori_path
    :type dnc_msgs-msg:DNCpath
    :initform (cl:make-instance 'dnc_msgs-msg:DNCpath)))
)

(cl:defclass SmoothPath-request (<SmoothPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SmoothPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SmoothPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-srv:<SmoothPath-request> is deprecated: use dnc_msgs-srv:SmoothPath-request instead.")))

(cl:ensure-generic-function 'st_pt-val :lambda-list '(m))
(cl:defmethod st_pt-val ((m <SmoothPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-srv:st_pt-val is deprecated.  Use dnc_msgs-srv:st_pt instead.")
  (st_pt m))

(cl:ensure-generic-function 'ori_path-val :lambda-list '(m))
(cl:defmethod ori_path-val ((m <SmoothPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-srv:ori_path-val is deprecated.  Use dnc_msgs-srv:ori_path instead.")
  (ori_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SmoothPath-request>) ostream)
  "Serializes a message object of type '<SmoothPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'st_pt) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ori_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SmoothPath-request>) istream)
  "Deserializes a message object of type '<SmoothPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'st_pt) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ori_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SmoothPath-request>)))
  "Returns string type for a service object of type '<SmoothPath-request>"
  "dnc_msgs/SmoothPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmoothPath-request)))
  "Returns string type for a service object of type 'SmoothPath-request"
  "dnc_msgs/SmoothPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SmoothPath-request>)))
  "Returns md5sum for a message object of type '<SmoothPath-request>"
  "f4c127e6fd3a1d84b001ac0a03f0e720")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SmoothPath-request)))
  "Returns md5sum for a message object of type 'SmoothPath-request"
  "f4c127e6fd3a1d84b001ac0a03f0e720")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SmoothPath-request>)))
  "Returns full string definition for message of type '<SmoothPath-request>"
  (cl:format cl:nil "dnc_msgs/DNCpoint st_pt~%dnc_msgs/DNCpath  ori_path~%~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%================================================================================~%MSG: dnc_msgs/DNCpath~%#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SmoothPath-request)))
  "Returns full string definition for message of type 'SmoothPath-request"
  (cl:format cl:nil "dnc_msgs/DNCpoint st_pt~%dnc_msgs/DNCpath  ori_path~%~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%================================================================================~%MSG: dnc_msgs/DNCpath~%#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SmoothPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'st_pt))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ori_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SmoothPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SmoothPath-request
    (cl:cons ':st_pt (st_pt msg))
    (cl:cons ':ori_path (ori_path msg))
))
;//! \htmlinclude SmoothPath-response.msg.html

(cl:defclass <SmoothPath-response> (roslisp-msg-protocol:ros-message)
  ((res_path
    :reader res_path
    :initarg :res_path
    :type dnc_msgs-msg:DNCpath
    :initform (cl:make-instance 'dnc_msgs-msg:DNCpath)))
)

(cl:defclass SmoothPath-response (<SmoothPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SmoothPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SmoothPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-srv:<SmoothPath-response> is deprecated: use dnc_msgs-srv:SmoothPath-response instead.")))

(cl:ensure-generic-function 'res_path-val :lambda-list '(m))
(cl:defmethod res_path-val ((m <SmoothPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-srv:res_path-val is deprecated.  Use dnc_msgs-srv:res_path instead.")
  (res_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SmoothPath-response>) ostream)
  "Serializes a message object of type '<SmoothPath-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'res_path) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SmoothPath-response>) istream)
  "Deserializes a message object of type '<SmoothPath-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'res_path) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SmoothPath-response>)))
  "Returns string type for a service object of type '<SmoothPath-response>"
  "dnc_msgs/SmoothPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmoothPath-response)))
  "Returns string type for a service object of type 'SmoothPath-response"
  "dnc_msgs/SmoothPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SmoothPath-response>)))
  "Returns md5sum for a message object of type '<SmoothPath-response>"
  "f4c127e6fd3a1d84b001ac0a03f0e720")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SmoothPath-response)))
  "Returns md5sum for a message object of type 'SmoothPath-response"
  "f4c127e6fd3a1d84b001ac0a03f0e720")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SmoothPath-response>)))
  "Returns full string definition for message of type '<SmoothPath-response>"
  (cl:format cl:nil "dnc_msgs/DNCpath res_path~%~%================================================================================~%MSG: dnc_msgs/DNCpath~%#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SmoothPath-response)))
  "Returns full string definition for message of type 'SmoothPath-response"
  (cl:format cl:nil "dnc_msgs/DNCpath res_path~%~%================================================================================~%MSG: dnc_msgs/DNCpath~%#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SmoothPath-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'res_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SmoothPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SmoothPath-response
    (cl:cons ':res_path (res_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SmoothPath)))
  'SmoothPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SmoothPath)))
  'SmoothPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmoothPath)))
  "Returns string type for a service object of type '<SmoothPath>"
  "dnc_msgs/SmoothPath")