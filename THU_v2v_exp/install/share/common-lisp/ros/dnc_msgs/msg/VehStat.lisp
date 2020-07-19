; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-msg)


;//! \htmlinclude VehStat.msg.html

(cl:defclass <VehStat> (roslisp-msg-protocol:ros-message)
  ((vx
    :reader vx
    :initarg :vx
    :type cl:float
    :initform 0.0)
   (v_kmh
    :reader v_kmh
    :initarg :v_kmh
    :type cl:float
    :initform 0.0)
   (sw_deg
    :reader sw_deg
    :initarg :sw_deg
    :type cl:float
    :initform 0.0)
   (sw_rad
    :reader sw_rad
    :initarg :sw_rad
    :type cl:float
    :initform 0.0)
   (gear_status
    :reader gear_status
    :initarg :gear_status
    :type cl:integer
    :initform 0))
)

(cl:defclass VehStat (<VehStat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehStat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehStat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-msg:<VehStat> is deprecated: use dnc_msgs-msg:VehStat instead.")))

(cl:ensure-generic-function 'vx-val :lambda-list '(m))
(cl:defmethod vx-val ((m <VehStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:vx-val is deprecated.  Use dnc_msgs-msg:vx instead.")
  (vx m))

(cl:ensure-generic-function 'v_kmh-val :lambda-list '(m))
(cl:defmethod v_kmh-val ((m <VehStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:v_kmh-val is deprecated.  Use dnc_msgs-msg:v_kmh instead.")
  (v_kmh m))

(cl:ensure-generic-function 'sw_deg-val :lambda-list '(m))
(cl:defmethod sw_deg-val ((m <VehStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:sw_deg-val is deprecated.  Use dnc_msgs-msg:sw_deg instead.")
  (sw_deg m))

(cl:ensure-generic-function 'sw_rad-val :lambda-list '(m))
(cl:defmethod sw_rad-val ((m <VehStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:sw_rad-val is deprecated.  Use dnc_msgs-msg:sw_rad instead.")
  (sw_rad m))

(cl:ensure-generic-function 'gear_status-val :lambda-list '(m))
(cl:defmethod gear_status-val ((m <VehStat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:gear_status-val is deprecated.  Use dnc_msgs-msg:gear_status instead.")
  (gear_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehStat>) ostream)
  "Serializes a message object of type '<VehStat>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'v_kmh))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sw_deg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'sw_rad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gear_status)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehStat>) istream)
  "Deserializes a message object of type '<VehStat>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'v_kmh) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sw_deg) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'sw_rad) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear_status) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehStat>)))
  "Returns string type for a message object of type '<VehStat>"
  "dnc_msgs/VehStat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehStat)))
  "Returns string type for a message object of type 'VehStat"
  "dnc_msgs/VehStat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehStat>)))
  "Returns md5sum for a message object of type '<VehStat>"
  "e80772b9bb70a4ec8d045b4f390e4eb8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehStat)))
  "Returns md5sum for a message object of type 'VehStat"
  "e80772b9bb70a4ec8d045b4f390e4eb8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehStat>)))
  "Returns full string definition for message of type '<VehStat>"
  (cl:format cl:nil "~%~%float32 vx~%float32 v_kmh~%float32 sw_deg~%float32 sw_rad~%~%int32 gear_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehStat)))
  "Returns full string definition for message of type 'VehStat"
  (cl:format cl:nil "~%~%float32 vx~%float32 v_kmh~%float32 sw_deg~%float32 sw_rad~%~%int32 gear_status~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehStat>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehStat>))
  "Converts a ROS message object to a list"
  (cl:list 'VehStat
    (cl:cons ':vx (vx msg))
    (cl:cons ':v_kmh (v_kmh msg))
    (cl:cons ':sw_deg (sw_deg msg))
    (cl:cons ':sw_rad (sw_rad msg))
    (cl:cons ':gear_status (gear_status msg))
))
