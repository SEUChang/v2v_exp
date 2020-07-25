; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-msg)


;//! \htmlinclude Cmd.msg.html

(cl:defclass <Cmd> (roslisp-msg-protocol:ros-message)
  ((speical
    :reader speical
    :initarg :speical
    :type cl:integer
    :initform 0)
   (enable_steering
    :reader enable_steering
    :initarg :enable_steering
    :type cl:boolean
    :initform cl:nil)
   (enable_braking
    :reader enable_braking
    :initarg :enable_braking
    :type cl:boolean
    :initform cl:nil)
   (enable_driving
    :reader enable_driving
    :initarg :enable_driving
    :type cl:boolean
    :initform cl:nil)
   (enable_Estop
    :reader enable_Estop
    :initarg :enable_Estop
    :type cl:boolean
    :initform cl:nil)
   (enable_gear
    :reader enable_gear
    :initarg :enable_gear
    :type cl:boolean
    :initform cl:nil)
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
   (speed_ms
    :reader speed_ms
    :initarg :speed_ms
    :type cl:float
    :initform 0.0)
   (speed_kms
    :reader speed_kms
    :initarg :speed_kms
    :type cl:float
    :initform 0.0)
   (ax_ms2
    :reader ax_ms2
    :initarg :ax_ms2
    :type cl:float
    :initform 0.0)
   (omega_rad
    :reader omega_rad
    :initarg :omega_rad
    :type cl:float
    :initform 0.0)
   (gear_mode
    :reader gear_mode
    :initarg :gear_mode
    :type cl:integer
    :initform 0)
   (steering
    :reader steering
    :initarg :steering
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0)
   (remote_flag
    :reader remote_flag
    :initarg :remote_flag
    :type cl:integer
    :initform 0))
)

(cl:defclass Cmd (<Cmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Cmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Cmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-msg:<Cmd> is deprecated: use dnc_msgs-msg:Cmd instead.")))

(cl:ensure-generic-function 'speical-val :lambda-list '(m))
(cl:defmethod speical-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:speical-val is deprecated.  Use dnc_msgs-msg:speical instead.")
  (speical m))

(cl:ensure-generic-function 'enable_steering-val :lambda-list '(m))
(cl:defmethod enable_steering-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:enable_steering-val is deprecated.  Use dnc_msgs-msg:enable_steering instead.")
  (enable_steering m))

(cl:ensure-generic-function 'enable_braking-val :lambda-list '(m))
(cl:defmethod enable_braking-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:enable_braking-val is deprecated.  Use dnc_msgs-msg:enable_braking instead.")
  (enable_braking m))

(cl:ensure-generic-function 'enable_driving-val :lambda-list '(m))
(cl:defmethod enable_driving-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:enable_driving-val is deprecated.  Use dnc_msgs-msg:enable_driving instead.")
  (enable_driving m))

(cl:ensure-generic-function 'enable_Estop-val :lambda-list '(m))
(cl:defmethod enable_Estop-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:enable_Estop-val is deprecated.  Use dnc_msgs-msg:enable_Estop instead.")
  (enable_Estop m))

(cl:ensure-generic-function 'enable_gear-val :lambda-list '(m))
(cl:defmethod enable_gear-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:enable_gear-val is deprecated.  Use dnc_msgs-msg:enable_gear instead.")
  (enable_gear m))

(cl:ensure-generic-function 'sw_deg-val :lambda-list '(m))
(cl:defmethod sw_deg-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:sw_deg-val is deprecated.  Use dnc_msgs-msg:sw_deg instead.")
  (sw_deg m))

(cl:ensure-generic-function 'sw_rad-val :lambda-list '(m))
(cl:defmethod sw_rad-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:sw_rad-val is deprecated.  Use dnc_msgs-msg:sw_rad instead.")
  (sw_rad m))

(cl:ensure-generic-function 'speed_ms-val :lambda-list '(m))
(cl:defmethod speed_ms-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:speed_ms-val is deprecated.  Use dnc_msgs-msg:speed_ms instead.")
  (speed_ms m))

(cl:ensure-generic-function 'speed_kms-val :lambda-list '(m))
(cl:defmethod speed_kms-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:speed_kms-val is deprecated.  Use dnc_msgs-msg:speed_kms instead.")
  (speed_kms m))

(cl:ensure-generic-function 'ax_ms2-val :lambda-list '(m))
(cl:defmethod ax_ms2-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:ax_ms2-val is deprecated.  Use dnc_msgs-msg:ax_ms2 instead.")
  (ax_ms2 m))

(cl:ensure-generic-function 'omega_rad-val :lambda-list '(m))
(cl:defmethod omega_rad-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:omega_rad-val is deprecated.  Use dnc_msgs-msg:omega_rad instead.")
  (omega_rad m))

(cl:ensure-generic-function 'gear_mode-val :lambda-list '(m))
(cl:defmethod gear_mode-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:gear_mode-val is deprecated.  Use dnc_msgs-msg:gear_mode instead.")
  (gear_mode m))

(cl:ensure-generic-function 'steering-val :lambda-list '(m))
(cl:defmethod steering-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:steering-val is deprecated.  Use dnc_msgs-msg:steering instead.")
  (steering m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:speed-val is deprecated.  Use dnc_msgs-msg:speed instead.")
  (speed m))

(cl:ensure-generic-function 'remote_flag-val :lambda-list '(m))
(cl:defmethod remote_flag-val ((m <Cmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:remote_flag-val is deprecated.  Use dnc_msgs-msg:remote_flag instead.")
  (remote_flag m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Cmd>) ostream)
  "Serializes a message object of type '<Cmd>"
  (cl:let* ((signed (cl:slot-value msg 'speical)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_steering) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_braking) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_driving) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_Estop) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_gear) 1 0)) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_ms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_kms))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ax_ms2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega_rad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'gear_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steering))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'remote_flag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Cmd>) istream)
  "Deserializes a message object of type '<Cmd>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speical) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:slot-value msg 'enable_steering) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_braking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_driving) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_Estop) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enable_gear) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_ms) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_kms) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ax_ms2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega_rad) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gear_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'remote_flag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Cmd>)))
  "Returns string type for a message object of type '<Cmd>"
  "dnc_msgs/Cmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Cmd)))
  "Returns string type for a message object of type 'Cmd"
  "dnc_msgs/Cmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Cmd>)))
  "Returns md5sum for a message object of type '<Cmd>"
  "425817e067da8891ec14079a988b5202")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Cmd)))
  "Returns md5sum for a message object of type 'Cmd"
  "425817e067da8891ec14079a988b5202")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Cmd>)))
  "Returns full string definition for message of type '<Cmd>"
  (cl:format cl:nil "#~%#  general control cmd~%#~%~%#########################~%~%int32 speical ## for speical used~%bool enable_steering~%bool enable_braking~%bool enable_driving~%bool enable_Estop~%bool enable_gear~%#########################~%~%float32 sw_deg  # steering wheel angle~%float32 sw_rad~%float32 speed_ms~%float32 speed_kms~%float32 ax_ms2~%float32 omega_rad~%int32 gear_mode  # 0: N, // 1: forward , // 2 backward, // 3: stop~%~%#########################~%float32 steering~%float64 speed~%#########################~%int32 remote_flag~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Cmd)))
  "Returns full string definition for message of type 'Cmd"
  (cl:format cl:nil "#~%#  general control cmd~%#~%~%#########################~%~%int32 speical ## for speical used~%bool enable_steering~%bool enable_braking~%bool enable_driving~%bool enable_Estop~%bool enable_gear~%#########################~%~%float32 sw_deg  # steering wheel angle~%float32 sw_rad~%float32 speed_ms~%float32 speed_kms~%float32 ax_ms2~%float32 omega_rad~%int32 gear_mode  # 0: N, // 1: forward , // 2 backward, // 3: stop~%~%#########################~%float32 steering~%float64 speed~%#########################~%int32 remote_flag~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Cmd>))
  (cl:+ 0
     4
     1
     1
     1
     1
     1
     4
     4
     4
     4
     4
     4
     4
     4
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Cmd>))
  "Converts a ROS message object to a list"
  (cl:list 'Cmd
    (cl:cons ':speical (speical msg))
    (cl:cons ':enable_steering (enable_steering msg))
    (cl:cons ':enable_braking (enable_braking msg))
    (cl:cons ':enable_driving (enable_driving msg))
    (cl:cons ':enable_Estop (enable_Estop msg))
    (cl:cons ':enable_gear (enable_gear msg))
    (cl:cons ':sw_deg (sw_deg msg))
    (cl:cons ':sw_rad (sw_rad msg))
    (cl:cons ':speed_ms (speed_ms msg))
    (cl:cons ':speed_kms (speed_kms msg))
    (cl:cons ':ax_ms2 (ax_ms2 msg))
    (cl:cons ':omega_rad (omega_rad msg))
    (cl:cons ':gear_mode (gear_mode msg))
    (cl:cons ':steering (steering msg))
    (cl:cons ':speed (speed msg))
    (cl:cons ':remote_flag (remote_flag msg))
))
