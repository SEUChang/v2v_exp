; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-msg)


;//! \htmlinclude DNCpath.msg.html

(cl:defclass <DNCpath> (roslisp-msg-protocol:ros-message)
  ((pts
    :reader pts
    :initarg :pts
    :type (cl:vector dnc_msgs-msg:DNCpoint)
   :initform (cl:make-array 0 :element-type 'dnc_msgs-msg:DNCpoint :initial-element (cl:make-instance 'dnc_msgs-msg:DNCpoint)))
   (s_flag
    :reader s_flag
    :initarg :s_flag
    :type cl:boolean
    :initform cl:nil)
   (h_flag
    :reader h_flag
    :initarg :h_flag
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DNCpath (<DNCpath>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DNCpath>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DNCpath)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-msg:<DNCpath> is deprecated: use dnc_msgs-msg:DNCpath instead.")))

(cl:ensure-generic-function 'pts-val :lambda-list '(m))
(cl:defmethod pts-val ((m <DNCpath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:pts-val is deprecated.  Use dnc_msgs-msg:pts instead.")
  (pts m))

(cl:ensure-generic-function 's_flag-val :lambda-list '(m))
(cl:defmethod s_flag-val ((m <DNCpath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:s_flag-val is deprecated.  Use dnc_msgs-msg:s_flag instead.")
  (s_flag m))

(cl:ensure-generic-function 'h_flag-val :lambda-list '(m))
(cl:defmethod h_flag-val ((m <DNCpath>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:h_flag-val is deprecated.  Use dnc_msgs-msg:h_flag instead.")
  (h_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DNCpath>) ostream)
  "Serializes a message object of type '<DNCpath>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 's_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'h_flag) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DNCpath>) istream)
  "Deserializes a message object of type '<DNCpath>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dnc_msgs-msg:DNCpoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 's_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'h_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DNCpath>)))
  "Returns string type for a message object of type '<DNCpath>"
  "dnc_msgs/DNCpath")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DNCpath)))
  "Returns string type for a message object of type 'DNCpath"
  "dnc_msgs/DNCpath")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DNCpath>)))
  "Returns md5sum for a message object of type '<DNCpath>"
  "99eb39ef67140679ac539ba30d82f7ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DNCpath)))
  "Returns md5sum for a message object of type 'DNCpath"
  "99eb39ef67140679ac539ba30d82f7ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DNCpath>)))
  "Returns full string definition for message of type '<DNCpath>"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DNCpath)))
  "Returns full string definition for message of type 'DNCpath"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%dnc_msgs/DNCpoint[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/DNCpoint~%#############################~%###       SunHao          ###~%#############################~%~%~%float64 x~%float64 y~%float64 s~%~%float64 cuv~%float64 heading~%float64 speed~%~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DNCpath>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DNCpath>))
  "Converts a ROS message object to a list"
  (cl:list 'DNCpath
    (cl:cons ':pts (pts msg))
    (cl:cons ':s_flag (s_flag msg))
    (cl:cons ':h_flag (h_flag msg))
))
