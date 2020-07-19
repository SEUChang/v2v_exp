; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude SimuSet.msg.html

(cl:defclass <SimuSet> (roslisp-msg-protocol:ros-message)
  ((start_or_pause
    :reader start_or_pause
    :initarg :start_or_pause
    :type cl:boolean
    :initform cl:nil)
   (reset
    :reader reset
    :initarg :reset
    :type cl:boolean
    :initform cl:nil)
   (pose_init
    :reader pose_init
    :initarg :pose_init
    :type cl:boolean
    :initform cl:nil)
   (init_pt
    :reader init_pt
    :initarg :init_pt
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (init_heading
    :reader init_heading
    :initarg :init_heading
    :type cl:float
    :initform 0.0)
   (init_speed
    :reader init_speed
    :initarg :init_speed
    :type cl:float
    :initform 0.0)
   (rtk_status
    :reader rtk_status
    :initarg :rtk_status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SimuSet (<SimuSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SimuSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SimuSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<SimuSet> is deprecated: use simulator-msg:SimuSet instead.")))

(cl:ensure-generic-function 'start_or_pause-val :lambda-list '(m))
(cl:defmethod start_or_pause-val ((m <SimuSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:start_or_pause-val is deprecated.  Use simulator-msg:start_or_pause instead.")
  (start_or_pause m))

(cl:ensure-generic-function 'reset-val :lambda-list '(m))
(cl:defmethod reset-val ((m <SimuSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:reset-val is deprecated.  Use simulator-msg:reset instead.")
  (reset m))

(cl:ensure-generic-function 'pose_init-val :lambda-list '(m))
(cl:defmethod pose_init-val ((m <SimuSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:pose_init-val is deprecated.  Use simulator-msg:pose_init instead.")
  (pose_init m))

(cl:ensure-generic-function 'init_pt-val :lambda-list '(m))
(cl:defmethod init_pt-val ((m <SimuSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:init_pt-val is deprecated.  Use simulator-msg:init_pt instead.")
  (init_pt m))

(cl:ensure-generic-function 'init_heading-val :lambda-list '(m))
(cl:defmethod init_heading-val ((m <SimuSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:init_heading-val is deprecated.  Use simulator-msg:init_heading instead.")
  (init_heading m))

(cl:ensure-generic-function 'init_speed-val :lambda-list '(m))
(cl:defmethod init_speed-val ((m <SimuSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:init_speed-val is deprecated.  Use simulator-msg:init_speed instead.")
  (init_speed m))

(cl:ensure-generic-function 'rtk_status-val :lambda-list '(m))
(cl:defmethod rtk_status-val ((m <SimuSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:rtk_status-val is deprecated.  Use simulator-msg:rtk_status instead.")
  (rtk_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SimuSet>) ostream)
  "Serializes a message object of type '<SimuSet>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_or_pause) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'reset) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pose_init) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'init_pt) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'init_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'rtk_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SimuSet>) istream)
  "Deserializes a message object of type '<SimuSet>"
    (cl:setf (cl:slot-value msg 'start_or_pause) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'reset) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pose_init) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'init_pt) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'init_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rtk_status) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SimuSet>)))
  "Returns string type for a message object of type '<SimuSet>"
  "simulator/SimuSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SimuSet)))
  "Returns string type for a message object of type 'SimuSet"
  "simulator/SimuSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SimuSet>)))
  "Returns md5sum for a message object of type '<SimuSet>"
  "1f488552fec6ede53d99f875862e60d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SimuSet)))
  "Returns md5sum for a message object of type 'SimuSet"
  "1f488552fec6ede53d99f875862e60d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SimuSet>)))
  "Returns full string definition for message of type '<SimuSet>"
  (cl:format cl:nil "#~%~%#~%~%bool start_or_pause~%bool reset~%~%~%~%bool pose_init~%geometry_msgs/Point init_pt~%float32 init_heading~%float32 init_speed~%~%~%int8 rtk_status~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SimuSet)))
  "Returns full string definition for message of type 'SimuSet"
  (cl:format cl:nil "#~%~%#~%~%bool start_or_pause~%bool reset~%~%~%~%bool pose_init~%geometry_msgs/Point init_pt~%float32 init_heading~%float32 init_speed~%~%~%int8 rtk_status~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SimuSet>))
  (cl:+ 0
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'init_pt))
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SimuSet>))
  "Converts a ROS message object to a list"
  (cl:list 'SimuSet
    (cl:cons ':start_or_pause (start_or_pause msg))
    (cl:cons ':reset (reset msg))
    (cl:cons ':pose_init (pose_init msg))
    (cl:cons ':init_pt (init_pt msg))
    (cl:cons ':init_heading (init_heading msg))
    (cl:cons ':init_speed (init_speed msg))
    (cl:cons ':rtk_status (rtk_status msg))
))
