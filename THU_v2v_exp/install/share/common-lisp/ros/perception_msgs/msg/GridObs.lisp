; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude GridObs.msg.html

(cl:defclass <GridObs> (roslisp-msg-protocol:ros-message)
  ((obs
    :reader obs
    :initarg :obs
    :type (cl:vector perception_msgs-msg:Object)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:Object :initial-element (cl:make-instance 'perception_msgs-msg:Object)))
   (grid_size
    :reader grid_size
    :initarg :grid_size
    :type cl:float
    :initform 0.0))
)

(cl:defclass GridObs (<GridObs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GridObs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GridObs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<GridObs> is deprecated: use perception_msgs-msg:GridObs instead.")))

(cl:ensure-generic-function 'obs-val :lambda-list '(m))
(cl:defmethod obs-val ((m <GridObs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:obs-val is deprecated.  Use perception_msgs-msg:obs instead.")
  (obs m))

(cl:ensure-generic-function 'grid_size-val :lambda-list '(m))
(cl:defmethod grid_size-val ((m <GridObs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:grid_size-val is deprecated.  Use perception_msgs-msg:grid_size instead.")
  (grid_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GridObs>) ostream)
  "Serializes a message object of type '<GridObs>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'obs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'obs))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'grid_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GridObs>) istream)
  "Deserializes a message object of type '<GridObs>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'obs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'obs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'grid_size) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GridObs>)))
  "Returns string type for a message object of type '<GridObs>"
  "perception_msgs/GridObs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GridObs)))
  "Returns string type for a message object of type 'GridObs"
  "perception_msgs/GridObs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GridObs>)))
  "Returns md5sum for a message object of type '<GridObs>"
  "4acf58cf22a7c584ee4f8f50c03fe7d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GridObs)))
  "Returns md5sum for a message object of type 'GridObs"
  "4acf58cf22a7c584ee4f8f50c03fe7d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GridObs>)))
  "Returns full string definition for message of type '<GridObs>"
  (cl:format cl:nil "~%###~%~%perception_msgs/Object[] obs~%float32 grid_size~%###~%================================================================================~%MSG: perception_msgs/Object~%#~%#~%~%~%perception_msgs/Pt[] Pts~%~%int8 id~%int8 type~%~%float64  relative_dir~%float64  relative_speed~%~%~%###  add gridcells info  ###~%~%~%~%================================================================================~%MSG: perception_msgs/Pt~%####~%###~%~%~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GridObs)))
  "Returns full string definition for message of type 'GridObs"
  (cl:format cl:nil "~%###~%~%perception_msgs/Object[] obs~%float32 grid_size~%###~%================================================================================~%MSG: perception_msgs/Object~%#~%#~%~%~%perception_msgs/Pt[] Pts~%~%int8 id~%int8 type~%~%float64  relative_dir~%float64  relative_speed~%~%~%###  add gridcells info  ###~%~%~%~%================================================================================~%MSG: perception_msgs/Pt~%####~%###~%~%~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GridObs>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'obs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GridObs>))
  "Converts a ROS message object to a list"
  (cl:list 'GridObs
    (cl:cons ':obs (obs msg))
    (cl:cons ':grid_size (grid_size msg))
))
