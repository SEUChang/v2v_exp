; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude planningmotion.msg.html

(cl:defclass <planningmotion> (roslisp-msg-protocol:ros-message)
  ((points
    :reader points
    :initarg :points
    :type (cl:vector common_msgs-msg:roadpoint)
   :initform (cl:make-array 0 :element-type 'common_msgs-msg:roadpoint :initial-element (cl:make-instance 'common_msgs-msg:roadpoint)))
   (guidespeed
    :reader guidespeed
    :initarg :guidespeed
    :type cl:float
    :initform 0.0)
   (guideangle
    :reader guideangle
    :initarg :guideangle
    :type cl:float
    :initform 0.0)
   (changelanedis
    :reader changelanedis
    :initarg :changelanedis
    :type cl:float
    :initform 0.0)
   (isvalid
    :reader isvalid
    :initarg :isvalid
    :type cl:fixnum
    :initform 0)
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0))
)

(cl:defclass planningmotion (<planningmotion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <planningmotion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'planningmotion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<planningmotion> is deprecated: use common_msgs-msg:planningmotion instead.")))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <planningmotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:points-val is deprecated.  Use common_msgs-msg:points instead.")
  (points m))

(cl:ensure-generic-function 'guidespeed-val :lambda-list '(m))
(cl:defmethod guidespeed-val ((m <planningmotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:guidespeed-val is deprecated.  Use common_msgs-msg:guidespeed instead.")
  (guidespeed m))

(cl:ensure-generic-function 'guideangle-val :lambda-list '(m))
(cl:defmethod guideangle-val ((m <planningmotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:guideangle-val is deprecated.  Use common_msgs-msg:guideangle instead.")
  (guideangle m))

(cl:ensure-generic-function 'changelanedis-val :lambda-list '(m))
(cl:defmethod changelanedis-val ((m <planningmotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:changelanedis-val is deprecated.  Use common_msgs-msg:changelanedis instead.")
  (changelanedis m))

(cl:ensure-generic-function 'isvalid-val :lambda-list '(m))
(cl:defmethod isvalid-val ((m <planningmotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:isvalid-val is deprecated.  Use common_msgs-msg:isvalid instead.")
  (isvalid m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <planningmotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:timestamp-val is deprecated.  Use common_msgs-msg:timestamp instead.")
  (timestamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <planningmotion>) ostream)
  "Serializes a message object of type '<planningmotion>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'guidespeed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'guideangle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'changelanedis))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'timestamp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <planningmotion>) istream)
  "Deserializes a message object of type '<planningmotion>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'common_msgs-msg:roadpoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'guidespeed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'guideangle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'changelanedis) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'isvalid)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timestamp) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<planningmotion>)))
  "Returns string type for a message object of type '<planningmotion>"
  "common_msgs/planningmotion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'planningmotion)))
  "Returns string type for a message object of type 'planningmotion"
  "common_msgs/planningmotion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<planningmotion>)))
  "Returns md5sum for a message object of type '<planningmotion>"
  "60c4de7218f80a33e433e83c3d8c4fcb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'planningmotion)))
  "Returns md5sum for a message object of type 'planningmotion"
  "60c4de7218f80a33e433e83c3d8c4fcb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<planningmotion>)))
  "Returns full string definition for message of type '<planningmotion>"
  (cl:format cl:nil "roadpoint[] points   #轨迹点~%float32 guidespeed   #指导速度 m/s~%float32 guideangle~%float32 changelanedis~%uint8  isvalid~%int64 timestamp~%================================================================================~%MSG: common_msgs/roadpoint~%int16 x                  #局部横坐标   cm~%int16 y                  #局部纵坐标   cm~%int32 gx                 #全局横坐标   cm~%int32 gy                 #全局纵坐标   cm~%uint8 roadtype           #道路属性~%uint8 lanetype           #当前车道|总车道(4|4)~%float32 heading          #heading~%float32 curvature~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'planningmotion)))
  "Returns full string definition for message of type 'planningmotion"
  (cl:format cl:nil "roadpoint[] points   #轨迹点~%float32 guidespeed   #指导速度 m/s~%float32 guideangle~%float32 changelanedis~%uint8  isvalid~%int64 timestamp~%================================================================================~%MSG: common_msgs/roadpoint~%int16 x                  #局部横坐标   cm~%int16 y                  #局部纵坐标   cm~%int32 gx                 #全局横坐标   cm~%int32 gy                 #全局纵坐标   cm~%uint8 roadtype           #道路属性~%uint8 lanetype           #当前车道|总车道(4|4)~%float32 heading          #heading~%float32 curvature~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <planningmotion>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <planningmotion>))
  "Converts a ROS message object to a list"
  (cl:list 'planningmotion
    (cl:cons ':points (points msg))
    (cl:cons ':guidespeed (guidespeed msg))
    (cl:cons ':guideangle (guideangle msg))
    (cl:cons ':changelanedis (changelanedis msg))
    (cl:cons ':isvalid (isvalid msg))
    (cl:cons ':timestamp (timestamp msg))
))
