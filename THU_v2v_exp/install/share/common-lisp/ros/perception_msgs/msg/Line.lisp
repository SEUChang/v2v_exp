; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude Line.msg.html

(cl:defclass <Line> (roslisp-msg-protocol:ros-message)
  ((pts
    :reader pts
    :initarg :pts
    :type (cl:vector perception_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:Point :initial-element (cl:make-instance 'perception_msgs-msg:Point)))
   (is_main
    :reader is_main
    :initarg :is_main
    :type cl:fixnum
    :initform 0)
   (offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (uuid
    :reader uuid
    :initarg :uuid
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (main_uuid
    :reader main_uuid
    :initarg :main_uuid
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (left_uuid
    :reader left_uuid
    :initarg :left_uuid
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (right_uuid
    :reader right_uuid
    :initarg :right_uuid
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (section_uuid
    :reader section_uuid
    :initarg :section_uuid
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass Line (<Line>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Line>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Line)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<Line> is deprecated: use perception_msgs-msg:Line instead.")))

(cl:ensure-generic-function 'pts-val :lambda-list '(m))
(cl:defmethod pts-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:pts-val is deprecated.  Use perception_msgs-msg:pts instead.")
  (pts m))

(cl:ensure-generic-function 'is_main-val :lambda-list '(m))
(cl:defmethod is_main-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:is_main-val is deprecated.  Use perception_msgs-msg:is_main instead.")
  (is_main m))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:offset-val is deprecated.  Use perception_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:width-val is deprecated.  Use perception_msgs-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:uuid-val is deprecated.  Use perception_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'main_uuid-val :lambda-list '(m))
(cl:defmethod main_uuid-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:main_uuid-val is deprecated.  Use perception_msgs-msg:main_uuid instead.")
  (main_uuid m))

(cl:ensure-generic-function 'left_uuid-val :lambda-list '(m))
(cl:defmethod left_uuid-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:left_uuid-val is deprecated.  Use perception_msgs-msg:left_uuid instead.")
  (left_uuid m))

(cl:ensure-generic-function 'right_uuid-val :lambda-list '(m))
(cl:defmethod right_uuid-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:right_uuid-val is deprecated.  Use perception_msgs-msg:right_uuid instead.")
  (right_uuid m))

(cl:ensure-generic-function 'section_uuid-val :lambda-list '(m))
(cl:defmethod section_uuid-val ((m <Line>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:section_uuid-val is deprecated.  Use perception_msgs-msg:section_uuid instead.")
  (section_uuid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Line>) ostream)
  "Serializes a message object of type '<Line>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts))
  (cl:let* ((signed (cl:slot-value msg 'is_main)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uuid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'main_uuid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_uuid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_uuid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'section_uuid) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Line>) istream)
  "Deserializes a message object of type '<Line>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'is_main) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uuid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'main_uuid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_uuid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_uuid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'section_uuid) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Line>)))
  "Returns string type for a message object of type '<Line>"
  "perception_msgs/Line")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Line)))
  "Returns string type for a message object of type 'Line"
  "perception_msgs/Line")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Line>)))
  "Returns md5sum for a message object of type '<Line>"
  "d68493cc93c1caae986c853169b539f3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Line)))
  "Returns md5sum for a message object of type 'Line"
  "d68493cc93c1caae986c853169b539f3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Line>)))
  "Returns full string definition for message of type '<Line>"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%perception_msgs/Point[] pts~%~%#############################~%int8 is_main # Is the lane center lane of this section~%float64 offset~%float64 width~%~%#############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String main_uuid~%~%#int32 left_id~%std_msgs/String left_uuid~%~%#int32 right_id~%std_msgs/String right_uuid~%~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%#############################~%~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Line)))
  "Returns full string definition for message of type 'Line"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%perception_msgs/Point[] pts~%~%#############################~%int8 is_main # Is the lane center lane of this section~%float64 offset~%float64 width~%~%#############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String main_uuid~%~%#int32 left_id~%std_msgs/String left_uuid~%~%#int32 right_id~%std_msgs/String right_uuid~%~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%#############################~%~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Line>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'main_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_uuid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'section_uuid))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Line>))
  "Converts a ROS message object to a list"
  (cl:list 'Line
    (cl:cons ':pts (pts msg))
    (cl:cons ':is_main (is_main msg))
    (cl:cons ':offset (offset msg))
    (cl:cons ':width (width msg))
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':main_uuid (main_uuid msg))
    (cl:cons ':left_uuid (left_uuid msg))
    (cl:cons ':right_uuid (right_uuid msg))
    (cl:cons ':section_uuid (section_uuid msg))
))
