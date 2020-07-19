; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude GlobalPathIndex.msg.html

(cl:defclass <GlobalPathIndex> (roslisp-msg-protocol:ros-message)
  ((start_section
    :reader start_section
    :initarg :start_section
    :type cl:integer
    :initform 0)
   (start_lane
    :reader start_lane
    :initarg :start_lane
    :type cl:integer
    :initform 0)
   (start_pt
    :reader start_pt
    :initarg :start_pt
    :type cl:integer
    :initform 0)
   (topo
    :reader topo
    :initarg :topo
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (goal_section
    :reader goal_section
    :initarg :goal_section
    :type cl:integer
    :initform 0)
   (goal_lane
    :reader goal_lane
    :initarg :goal_lane
    :type cl:integer
    :initform 0)
   (goal_pt
    :reader goal_pt
    :initarg :goal_pt
    :type cl:integer
    :initform 0))
)

(cl:defclass GlobalPathIndex (<GlobalPathIndex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GlobalPathIndex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GlobalPathIndex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<GlobalPathIndex> is deprecated: use perception_msgs-msg:GlobalPathIndex instead.")))

(cl:ensure-generic-function 'start_section-val :lambda-list '(m))
(cl:defmethod start_section-val ((m <GlobalPathIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:start_section-val is deprecated.  Use perception_msgs-msg:start_section instead.")
  (start_section m))

(cl:ensure-generic-function 'start_lane-val :lambda-list '(m))
(cl:defmethod start_lane-val ((m <GlobalPathIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:start_lane-val is deprecated.  Use perception_msgs-msg:start_lane instead.")
  (start_lane m))

(cl:ensure-generic-function 'start_pt-val :lambda-list '(m))
(cl:defmethod start_pt-val ((m <GlobalPathIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:start_pt-val is deprecated.  Use perception_msgs-msg:start_pt instead.")
  (start_pt m))

(cl:ensure-generic-function 'topo-val :lambda-list '(m))
(cl:defmethod topo-val ((m <GlobalPathIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:topo-val is deprecated.  Use perception_msgs-msg:topo instead.")
  (topo m))

(cl:ensure-generic-function 'goal_section-val :lambda-list '(m))
(cl:defmethod goal_section-val ((m <GlobalPathIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:goal_section-val is deprecated.  Use perception_msgs-msg:goal_section instead.")
  (goal_section m))

(cl:ensure-generic-function 'goal_lane-val :lambda-list '(m))
(cl:defmethod goal_lane-val ((m <GlobalPathIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:goal_lane-val is deprecated.  Use perception_msgs-msg:goal_lane instead.")
  (goal_lane m))

(cl:ensure-generic-function 'goal_pt-val :lambda-list '(m))
(cl:defmethod goal_pt-val ((m <GlobalPathIndex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:goal_pt-val is deprecated.  Use perception_msgs-msg:goal_pt instead.")
  (goal_pt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GlobalPathIndex>) ostream)
  "Serializes a message object of type '<GlobalPathIndex>"
  (cl:let* ((signed (cl:slot-value msg 'start_section)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'start_lane)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'start_pt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'topo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'topo))
  (cl:let* ((signed (cl:slot-value msg 'goal_section)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_lane)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal_pt)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GlobalPathIndex>) istream)
  "Deserializes a message object of type '<GlobalPathIndex>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_section) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_lane) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_pt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'topo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'topo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_section) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_lane) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal_pt) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GlobalPathIndex>)))
  "Returns string type for a message object of type '<GlobalPathIndex>"
  "perception_msgs/GlobalPathIndex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GlobalPathIndex)))
  "Returns string type for a message object of type 'GlobalPathIndex"
  "perception_msgs/GlobalPathIndex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GlobalPathIndex>)))
  "Returns md5sum for a message object of type '<GlobalPathIndex>"
  "1d5f95ec9e9a5e5dadbfd38059134fcf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GlobalPathIndex)))
  "Returns md5sum for a message object of type 'GlobalPathIndex"
  "1d5f95ec9e9a5e5dadbfd38059134fcf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GlobalPathIndex>)))
  "Returns full string definition for message of type '<GlobalPathIndex>"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%int32 start_section~%int32 start_lane~%int32 start_pt~%~%#########################~%~%int32[] topo~%~%#########################~%int32 goal_section~%int32 goal_lane~%int32 goal_pt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GlobalPathIndex)))
  "Returns full string definition for message of type 'GlobalPathIndex"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%int32 start_section~%int32 start_lane~%int32 start_pt~%~%#########################~%~%int32[] topo~%~%#########################~%int32 goal_section~%int32 goal_lane~%int32 goal_pt~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GlobalPathIndex>))
  (cl:+ 0
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'topo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GlobalPathIndex>))
  "Converts a ROS message object to a list"
  (cl:list 'GlobalPathIndex
    (cl:cons ':start_section (start_section msg))
    (cl:cons ':start_lane (start_lane msg))
    (cl:cons ':start_pt (start_pt msg))
    (cl:cons ':topo (topo msg))
    (cl:cons ':goal_section (goal_section msg))
    (cl:cons ':goal_lane (goal_lane msg))
    (cl:cons ':goal_pt (goal_pt msg))
))
