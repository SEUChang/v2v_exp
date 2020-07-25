; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-msg)


;//! \htmlinclude Path.msg.html

(cl:defclass <Path> (roslisp-msg-protocol:ros-message)
  ((pts
    :reader pts
    :initarg :pts
    :type (cl:vector dnc_msgs-msg:Pt)
   :initform (cl:make-array 0 :element-type 'dnc_msgs-msg:Pt :initial-element (cl:make-instance 'dnc_msgs-msg:Pt)))
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

(cl:defclass Path (<Path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-msg:<Path> is deprecated: use dnc_msgs-msg:Path instead.")))

(cl:ensure-generic-function 'pts-val :lambda-list '(m))
(cl:defmethod pts-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:pts-val is deprecated.  Use dnc_msgs-msg:pts instead.")
  (pts m))

(cl:ensure-generic-function 's_flag-val :lambda-list '(m))
(cl:defmethod s_flag-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:s_flag-val is deprecated.  Use dnc_msgs-msg:s_flag instead.")
  (s_flag m))

(cl:ensure-generic-function 'h_flag-val :lambda-list '(m))
(cl:defmethod h_flag-val ((m <Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:h_flag-val is deprecated.  Use dnc_msgs-msg:h_flag instead.")
  (h_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Path>) ostream)
  "Serializes a message object of type '<Path>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Path>) istream)
  "Deserializes a message object of type '<Path>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'dnc_msgs-msg:Pt))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 's_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'h_flag) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Path>)))
  "Returns string type for a message object of type '<Path>"
  "dnc_msgs/Path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Path)))
  "Returns string type for a message object of type 'Path"
  "dnc_msgs/Path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Path>)))
  "Returns md5sum for a message object of type '<Path>"
  "33f23220b687c9f758ff12cb63f9522c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Path)))
  "Returns md5sum for a message object of type 'Path"
  "33f23220b687c9f758ff12cb63f9522c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Path>)))
  "Returns full string definition for message of type '<Path>"
  (cl:format cl:nil "################~%#~%################~%~%dnc_msgs/Pt[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/Pt~%################~%#~%################~%~%~%float32 x~%float32 y~%float32 s~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Path)))
  "Returns full string definition for message of type 'Path"
  (cl:format cl:nil "################~%#~%################~%~%dnc_msgs/Pt[] pts~%bool s_flag~%bool h_flag~%================================================================================~%MSG: dnc_msgs/Pt~%################~%#~%################~%~%~%float32 x~%float32 y~%float32 s~%float32 h~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Path>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Path>))
  "Converts a ROS message object to a list"
  (cl:list 'Path
    (cl:cons ':pts (pts msg))
    (cl:cons ':s_flag (s_flag msg))
    (cl:cons ':h_flag (h_flag msg))
))
