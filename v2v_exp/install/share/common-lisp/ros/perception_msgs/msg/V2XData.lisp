; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude V2XData.msg.html

(cl:defclass <V2XData> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type (cl:vector perception_msgs-msg:V2XUnit)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:V2XUnit :initial-element (cl:make-instance 'perception_msgs-msg:V2XUnit))))
)

(cl:defclass V2XData (<V2XData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <V2XData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'V2XData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<V2XData> is deprecated: use perception_msgs-msg:V2XData instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <V2XData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:data-val is deprecated.  Use perception_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <V2XData>) ostream)
  "Serializes a message object of type '<V2XData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <V2XData>) istream)
  "Deserializes a message object of type '<V2XData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:V2XUnit))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<V2XData>)))
  "Returns string type for a message object of type '<V2XData>"
  "perception_msgs/V2XData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'V2XData)))
  "Returns string type for a message object of type 'V2XData"
  "perception_msgs/V2XData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<V2XData>)))
  "Returns md5sum for a message object of type '<V2XData>"
  "fb96f885a230ba842ce5534fe6ba0ab5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'V2XData)))
  "Returns md5sum for a message object of type 'V2XData"
  "fb96f885a230ba842ce5534fe6ba0ab5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<V2XData>)))
  "Returns full string definition for message of type '<V2XData>"
  (cl:format cl:nil "~%~%perception_msgs/V2XUnit[] data~%================================================================================~%MSG: perception_msgs/V2XUnit~%~%~%~%#std_msgs/String info_id~%int32  id~%float32 x~%float32 y~%float32 yaw~%float32 speed~%float32 utc_time~%uint32 platoon_status~%##----------------------~%float32 bdata0~%float32 bdata1~%float32 bdata2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'V2XData)))
  "Returns full string definition for message of type 'V2XData"
  (cl:format cl:nil "~%~%perception_msgs/V2XUnit[] data~%================================================================================~%MSG: perception_msgs/V2XUnit~%~%~%~%#std_msgs/String info_id~%int32  id~%float32 x~%float32 y~%float32 yaw~%float32 speed~%float32 utc_time~%uint32 platoon_status~%##----------------------~%float32 bdata0~%float32 bdata1~%float32 bdata2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <V2XData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <V2XData>))
  "Converts a ROS message object to a list"
  (cl:list 'V2XData
    (cl:cons ':data (data msg))
))
