; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude MapCfg.msg.html

(cl:defclass <MapCfg> (roslisp-msg-protocol:ros-message)
  ((start_or_pause
    :reader start_or_pause
    :initarg :start_or_pause
    :type cl:boolean
    :initform cl:nil)
   (stop_and_save
    :reader stop_and_save
    :initarg :stop_and_save
    :type cl:boolean
    :initform cl:nil)
   (closed
    :reader closed
    :initarg :closed
    :type cl:boolean
    :initform cl:nil)
   (speed_limit_kph
    :reader speed_limit_kph
    :initarg :speed_limit_kph
    :type cl:float
    :initform 0.0)
   (bag_name
    :reader bag_name
    :initarg :bag_name
    :type cl:string
    :initform "")
   (tpk_name
    :reader tpk_name
    :initarg :tpk_name
    :type cl:string
    :initform "")
   (rtk_mode
    :reader rtk_mode
    :initarg :rtk_mode
    :type cl:integer
    :initform 0)
   (driving_mode
    :reader driving_mode
    :initarg :driving_mode
    :type cl:integer
    :initform 0)
   (special_mode
    :reader special_mode
    :initarg :special_mode
    :type cl:integer
    :initform 0)
   (obs_search_strategy
    :reader obs_search_strategy
    :initarg :obs_search_strategy
    :type cl:integer
    :initform 0)
   (speed_mode
    :reader speed_mode
    :initarg :speed_mode
    :type cl:integer
    :initform 0)
   (obs_strategy
    :reader obs_strategy
    :initarg :obs_strategy
    :type cl:integer
    :initform 0)
   (follow_strategy
    :reader follow_strategy
    :initarg :follow_strategy
    :type cl:integer
    :initform 0)
   (cross_option
    :reader cross_option
    :initarg :cross_option
    :type cl:integer
    :initform 0)
   (reserved_option
    :reader reserved_option
    :initarg :reserved_option
    :type cl:integer
    :initform 0))
)

(cl:defclass MapCfg (<MapCfg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapCfg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapCfg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<MapCfg> is deprecated: use perception_msgs-msg:MapCfg instead.")))

(cl:ensure-generic-function 'start_or_pause-val :lambda-list '(m))
(cl:defmethod start_or_pause-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:start_or_pause-val is deprecated.  Use perception_msgs-msg:start_or_pause instead.")
  (start_or_pause m))

(cl:ensure-generic-function 'stop_and_save-val :lambda-list '(m))
(cl:defmethod stop_and_save-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:stop_and_save-val is deprecated.  Use perception_msgs-msg:stop_and_save instead.")
  (stop_and_save m))

(cl:ensure-generic-function 'closed-val :lambda-list '(m))
(cl:defmethod closed-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:closed-val is deprecated.  Use perception_msgs-msg:closed instead.")
  (closed m))

(cl:ensure-generic-function 'speed_limit_kph-val :lambda-list '(m))
(cl:defmethod speed_limit_kph-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:speed_limit_kph-val is deprecated.  Use perception_msgs-msg:speed_limit_kph instead.")
  (speed_limit_kph m))

(cl:ensure-generic-function 'bag_name-val :lambda-list '(m))
(cl:defmethod bag_name-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:bag_name-val is deprecated.  Use perception_msgs-msg:bag_name instead.")
  (bag_name m))

(cl:ensure-generic-function 'tpk_name-val :lambda-list '(m))
(cl:defmethod tpk_name-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:tpk_name-val is deprecated.  Use perception_msgs-msg:tpk_name instead.")
  (tpk_name m))

(cl:ensure-generic-function 'rtk_mode-val :lambda-list '(m))
(cl:defmethod rtk_mode-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:rtk_mode-val is deprecated.  Use perception_msgs-msg:rtk_mode instead.")
  (rtk_mode m))

(cl:ensure-generic-function 'driving_mode-val :lambda-list '(m))
(cl:defmethod driving_mode-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:driving_mode-val is deprecated.  Use perception_msgs-msg:driving_mode instead.")
  (driving_mode m))

(cl:ensure-generic-function 'special_mode-val :lambda-list '(m))
(cl:defmethod special_mode-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:special_mode-val is deprecated.  Use perception_msgs-msg:special_mode instead.")
  (special_mode m))

(cl:ensure-generic-function 'obs_search_strategy-val :lambda-list '(m))
(cl:defmethod obs_search_strategy-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:obs_search_strategy-val is deprecated.  Use perception_msgs-msg:obs_search_strategy instead.")
  (obs_search_strategy m))

(cl:ensure-generic-function 'speed_mode-val :lambda-list '(m))
(cl:defmethod speed_mode-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:speed_mode-val is deprecated.  Use perception_msgs-msg:speed_mode instead.")
  (speed_mode m))

(cl:ensure-generic-function 'obs_strategy-val :lambda-list '(m))
(cl:defmethod obs_strategy-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:obs_strategy-val is deprecated.  Use perception_msgs-msg:obs_strategy instead.")
  (obs_strategy m))

(cl:ensure-generic-function 'follow_strategy-val :lambda-list '(m))
(cl:defmethod follow_strategy-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:follow_strategy-val is deprecated.  Use perception_msgs-msg:follow_strategy instead.")
  (follow_strategy m))

(cl:ensure-generic-function 'cross_option-val :lambda-list '(m))
(cl:defmethod cross_option-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:cross_option-val is deprecated.  Use perception_msgs-msg:cross_option instead.")
  (cross_option m))

(cl:ensure-generic-function 'reserved_option-val :lambda-list '(m))
(cl:defmethod reserved_option-val ((m <MapCfg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:reserved_option-val is deprecated.  Use perception_msgs-msg:reserved_option instead.")
  (reserved_option m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapCfg>) ostream)
  "Serializes a message object of type '<MapCfg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'start_or_pause) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_and_save) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'closed) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_limit_kph))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bag_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bag_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'tpk_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'tpk_name))
  (cl:let* ((signed (cl:slot-value msg 'rtk_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'driving_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'special_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'obs_search_strategy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'speed_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'obs_strategy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'follow_strategy)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'cross_option)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reserved_option)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapCfg>) istream)
  "Deserializes a message object of type '<MapCfg>"
    (cl:setf (cl:slot-value msg 'start_or_pause) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'stop_and_save) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'closed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit_kph) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bag_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bag_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tpk_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'tpk_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rtk_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'driving_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'special_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obs_search_strategy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'speed_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'obs_strategy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'follow_strategy) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cross_option) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reserved_option) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapCfg>)))
  "Returns string type for a message object of type '<MapCfg>"
  "perception_msgs/MapCfg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapCfg)))
  "Returns string type for a message object of type 'MapCfg"
  "perception_msgs/MapCfg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapCfg>)))
  "Returns md5sum for a message object of type '<MapCfg>"
  "114743d989eebb15f931732b39a7a0f5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapCfg)))
  "Returns md5sum for a message object of type 'MapCfg"
  "114743d989eebb15f931732b39a7a0f5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapCfg>)))
  "Returns full string definition for message of type '<MapCfg>"
  (cl:format cl:nil "~%~%~%~%~%~%bool start_or_pause~%bool stop_and_save~%bool closed~%float32 speed_limit_kph~%~%string bag_name~%string tpk_name~%####################################33~%~%int32 rtk_mode~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapCfg)))
  "Returns full string definition for message of type 'MapCfg"
  (cl:format cl:nil "~%~%~%~%~%~%bool start_or_pause~%bool stop_and_save~%bool closed~%float32 speed_limit_kph~%~%string bag_name~%string tpk_name~%####################################33~%~%int32 rtk_mode~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapCfg>))
  (cl:+ 0
     1
     1
     1
     4
     4 (cl:length (cl:slot-value msg 'bag_name))
     4 (cl:length (cl:slot-value msg 'tpk_name))
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapCfg>))
  "Converts a ROS message object to a list"
  (cl:list 'MapCfg
    (cl:cons ':start_or_pause (start_or_pause msg))
    (cl:cons ':stop_and_save (stop_and_save msg))
    (cl:cons ':closed (closed msg))
    (cl:cons ':speed_limit_kph (speed_limit_kph msg))
    (cl:cons ':bag_name (bag_name msg))
    (cl:cons ':tpk_name (tpk_name msg))
    (cl:cons ':rtk_mode (rtk_mode msg))
    (cl:cons ':driving_mode (driving_mode msg))
    (cl:cons ':special_mode (special_mode msg))
    (cl:cons ':obs_search_strategy (obs_search_strategy msg))
    (cl:cons ':speed_mode (speed_mode msg))
    (cl:cons ':obs_strategy (obs_strategy msg))
    (cl:cons ':follow_strategy (follow_strategy msg))
    (cl:cons ':cross_option (cross_option msg))
    (cl:cons ':reserved_option (reserved_option msg))
))
