; Auto-generated. Do not edit!


(cl:in-package dnc_msgs-msg)


;//! \htmlinclude Mission.msg.html

(cl:defclass <Mission> (roslisp-msg-protocol:ros-message)
  ((mission_pt
    :reader mission_pt
    :initarg :mission_pt
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (mission_type
    :reader mission_type
    :initarg :mission_type
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass Mission (<Mission>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mission>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mission)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dnc_msgs-msg:<Mission> is deprecated: use dnc_msgs-msg:Mission instead.")))

(cl:ensure-generic-function 'mission_pt-val :lambda-list '(m))
(cl:defmethod mission_pt-val ((m <Mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:mission_pt-val is deprecated.  Use dnc_msgs-msg:mission_pt instead.")
  (mission_pt m))

(cl:ensure-generic-function 'mission_type-val :lambda-list '(m))
(cl:defmethod mission_type-val ((m <Mission>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dnc_msgs-msg:mission_type-val is deprecated.  Use dnc_msgs-msg:mission_type instead.")
  (mission_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mission>) ostream)
  "Serializes a message object of type '<Mission>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission_pt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'mission_pt))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'mission_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'mission_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mission>) istream)
  "Deserializes a message object of type '<Mission>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission_pt) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission_pt)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'mission_type) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'mission_type)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mission>)))
  "Returns string type for a message object of type '<Mission>"
  "dnc_msgs/Mission")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mission)))
  "Returns string type for a message object of type 'Mission"
  "dnc_msgs/Mission")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mission>)))
  "Returns md5sum for a message object of type '<Mission>"
  "723fd4f61ea387de4693090c6c8f5797")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mission)))
  "Returns md5sum for a message object of type 'Mission"
  "723fd4f61ea387de4693090c6c8f5797")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mission>)))
  "Returns full string definition for message of type '<Mission>"
  (cl:format cl:nil "#############################~%#     Mision file           #~%#############################~%~%~%geometry_msgs/Point[] mission_pt~%uint32[]  mission_type~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mission)))
  "Returns full string definition for message of type 'Mission"
  (cl:format cl:nil "#############################~%#     Mision file           #~%#############################~%~%~%geometry_msgs/Point[] mission_pt~%uint32[]  mission_type~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mission>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission_pt) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'mission_type) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mission>))
  "Converts a ROS message object to a list"
  (cl:list 'Mission
    (cl:cons ':mission_pt (mission_pt msg))
    (cl:cons ':mission_type (mission_type msg))
))
