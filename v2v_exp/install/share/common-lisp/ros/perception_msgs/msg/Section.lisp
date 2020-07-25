; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude Section.msg.html

(cl:defclass <Section> (roslisp-msg-protocol:ros-message)
  ((lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector perception_msgs-msg:Line)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:Line :initial-element (cl:make-instance 'perception_msgs-msg:Line)))
   (direction_mode
    :reader direction_mode
    :initarg :direction_mode
    :type cl:integer
    :initform 0)
   (uuid
    :reader uuid
    :initarg :uuid
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (to_section_uuid
    :reader to_section_uuid
    :initarg :to_section_uuid
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (from_section_uuid
    :reader from_section_uuid
    :initarg :from_section_uuid
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (to_lane_uuid
    :reader to_lane_uuid
    :initarg :to_lane_uuid
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (from_lane_uuid
    :reader from_lane_uuid
    :initarg :from_lane_uuid
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (to_pt_uuid
    :reader to_pt_uuid
    :initarg :to_pt_uuid
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (from_pt_uuid
    :reader from_pt_uuid
    :initarg :from_pt_uuid
    :type (cl:vector std_msgs-msg:String)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:String :initial-element (cl:make-instance 'std_msgs-msg:String)))
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (highest_speed
    :reader highest_speed
    :initarg :highest_speed
    :type cl:float
    :initform 0.0)
   (traffic_cost
    :reader traffic_cost
    :initarg :traffic_cost
    :type cl:float
    :initform 0.0))
)

(cl:defclass Section (<Section>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Section>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Section)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<Section> is deprecated: use perception_msgs-msg:Section instead.")))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:lanes-val is deprecated.  Use perception_msgs-msg:lanes instead.")
  (lanes m))

(cl:ensure-generic-function 'direction_mode-val :lambda-list '(m))
(cl:defmethod direction_mode-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:direction_mode-val is deprecated.  Use perception_msgs-msg:direction_mode instead.")
  (direction_mode m))

(cl:ensure-generic-function 'uuid-val :lambda-list '(m))
(cl:defmethod uuid-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:uuid-val is deprecated.  Use perception_msgs-msg:uuid instead.")
  (uuid m))

(cl:ensure-generic-function 'to_section_uuid-val :lambda-list '(m))
(cl:defmethod to_section_uuid-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:to_section_uuid-val is deprecated.  Use perception_msgs-msg:to_section_uuid instead.")
  (to_section_uuid m))

(cl:ensure-generic-function 'from_section_uuid-val :lambda-list '(m))
(cl:defmethod from_section_uuid-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:from_section_uuid-val is deprecated.  Use perception_msgs-msg:from_section_uuid instead.")
  (from_section_uuid m))

(cl:ensure-generic-function 'to_lane_uuid-val :lambda-list '(m))
(cl:defmethod to_lane_uuid-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:to_lane_uuid-val is deprecated.  Use perception_msgs-msg:to_lane_uuid instead.")
  (to_lane_uuid m))

(cl:ensure-generic-function 'from_lane_uuid-val :lambda-list '(m))
(cl:defmethod from_lane_uuid-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:from_lane_uuid-val is deprecated.  Use perception_msgs-msg:from_lane_uuid instead.")
  (from_lane_uuid m))

(cl:ensure-generic-function 'to_pt_uuid-val :lambda-list '(m))
(cl:defmethod to_pt_uuid-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:to_pt_uuid-val is deprecated.  Use perception_msgs-msg:to_pt_uuid instead.")
  (to_pt_uuid m))

(cl:ensure-generic-function 'from_pt_uuid-val :lambda-list '(m))
(cl:defmethod from_pt_uuid-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:from_pt_uuid-val is deprecated.  Use perception_msgs-msg:from_pt_uuid instead.")
  (from_pt_uuid m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:length-val is deprecated.  Use perception_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'highest_speed-val :lambda-list '(m))
(cl:defmethod highest_speed-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:highest_speed-val is deprecated.  Use perception_msgs-msg:highest_speed instead.")
  (highest_speed m))

(cl:ensure-generic-function 'traffic_cost-val :lambda-list '(m))
(cl:defmethod traffic_cost-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:traffic_cost-val is deprecated.  Use perception_msgs-msg:traffic_cost instead.")
  (traffic_cost m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Section>) ostream)
  "Serializes a message object of type '<Section>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
  (cl:let* ((signed (cl:slot-value msg 'direction_mode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'uuid) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'to_section_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'to_section_uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'from_section_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'from_section_uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'to_lane_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'to_lane_uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'from_lane_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'from_lane_uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'to_pt_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'to_pt_uuid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'from_pt_uuid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'from_pt_uuid))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'highest_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'traffic_cost))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Section>) istream)
  "Deserializes a message object of type '<Section>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:Line))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'direction_mode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'uuid) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'to_section_uuid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'to_section_uuid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'from_section_uuid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'from_section_uuid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'to_lane_uuid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'to_lane_uuid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'from_lane_uuid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'from_lane_uuid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'to_pt_uuid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'to_pt_uuid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'from_pt_uuid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'from_pt_uuid)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:String))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'highest_speed) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'traffic_cost) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Section>)))
  "Returns string type for a message object of type '<Section>"
  "perception_msgs/Section")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Section)))
  "Returns string type for a message object of type 'Section"
  "perception_msgs/Section")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Section>)))
  "Returns md5sum for a message object of type '<Section>"
  "6b3fd0e0d7f2e11a16dcf750a2d0177d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Section)))
  "Returns md5sum for a message object of type 'Section"
  "6b3fd0e0d7f2e11a16dcf750a2d0177d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Section>)))
  "Returns full string definition for message of type '<Section>"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%~%perception_msgs/Line[] lanes~%~%int32 direction_mode~%~%#############################~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String[] to_section_uuid~%std_msgs/String[] from_section_uuid~%~%~%std_msgs/String[] to_lane_uuid~%std_msgs/String[] from_lane_uuid~%~%~%std_msgs/String[] to_pt_uuid~%std_msgs/String[] from_pt_uuid~%~%#int32[] to_pt_id~%#int32[] from_pt_id~%~%#############################~%~%float32 length~%float32 highest_speed~%float32 traffic_cost~%~%~%~%================================================================================~%MSG: perception_msgs/Line~%#############################~%###       SunHao          ###~%#############################~%~%perception_msgs/Point[] pts~%~%#############################~%int8 is_main # Is the lane center lane of this section~%float64 offset~%float64 width~%~%#############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String main_uuid~%~%#int32 left_id~%std_msgs/String left_uuid~%~%#int32 right_id~%std_msgs/String right_uuid~%~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%#############################~%~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Section)))
  "Returns full string definition for message of type 'Section"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%~%~%perception_msgs/Line[] lanes~%~%int32 direction_mode~%~%#############################~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String[] to_section_uuid~%std_msgs/String[] from_section_uuid~%~%~%std_msgs/String[] to_lane_uuid~%std_msgs/String[] from_lane_uuid~%~%~%std_msgs/String[] to_pt_uuid~%std_msgs/String[] from_pt_uuid~%~%#int32[] to_pt_id~%#int32[] from_pt_id~%~%#############################~%~%float32 length~%float32 highest_speed~%float32 traffic_cost~%~%~%~%================================================================================~%MSG: perception_msgs/Line~%#############################~%###       SunHao          ###~%#############################~%~%perception_msgs/Point[] pts~%~%#############################~%int8 is_main # Is the lane center lane of this section~%float64 offset~%float64 width~%~%#############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%std_msgs/String main_uuid~%~%#int32 left_id~%std_msgs/String left_uuid~%~%#int32 right_id~%std_msgs/String right_uuid~%~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%#############################~%~%~%================================================================================~%MSG: perception_msgs/Point~%#############################~%###       SunHao          ###~%#############################~%~%float64 x~%float64 y~%float64 z~%float64 s~%float64 cuv~%float64 heading~%float64 speed~%float64 speedkmh~%~%############################~%~%~%int32 rtk_mode # 0: 无影响 1： Not rtk stop~%int32 driving_mode # acc or collision avoidance~%int32 special_mode  #~%~%####################################33~%int32 obs_search_strategy  # 0: donot search obs~%int32 speed_mode  #~%int32 obs_strategy  #~%int32 follow_strategy  #~%int32 cross_option  #~%int32 reserved_option  #~%~%~%~%############################~%~%#int32 id~%std_msgs/String uuid~%~%#############################~%~%#int32 line_id~%std_msgs/String lane_uuid~%~%#############################~%~%#int32 section_id~%std_msgs/String section_uuid~%~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Section>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'uuid))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'to_section_uuid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'from_section_uuid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'to_lane_uuid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'from_lane_uuid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'to_pt_uuid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'from_pt_uuid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Section>))
  "Converts a ROS message object to a list"
  (cl:list 'Section
    (cl:cons ':lanes (lanes msg))
    (cl:cons ':direction_mode (direction_mode msg))
    (cl:cons ':uuid (uuid msg))
    (cl:cons ':to_section_uuid (to_section_uuid msg))
    (cl:cons ':from_section_uuid (from_section_uuid msg))
    (cl:cons ':to_lane_uuid (to_lane_uuid msg))
    (cl:cons ':from_lane_uuid (from_lane_uuid msg))
    (cl:cons ':to_pt_uuid (to_pt_uuid msg))
    (cl:cons ':from_pt_uuid (from_pt_uuid msg))
    (cl:cons ':length (length msg))
    (cl:cons ':highest_speed (highest_speed msg))
    (cl:cons ':traffic_cost (traffic_cost msg))
))
