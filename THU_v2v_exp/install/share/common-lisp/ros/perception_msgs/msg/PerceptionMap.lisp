; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude PerceptionMap.msg.html

(cl:defclass <PerceptionMap> (roslisp-msg-protocol:ros-message)
  ((objects
    :reader objects
    :initarg :objects
    :type (cl:vector perception_msgs-msg:Object)
   :initform (cl:make-array 0 :element-type 'perception_msgs-msg:Object :initial-element (cl:make-instance 'perception_msgs-msg:Object)))
   (obj
    :reader obj
    :initarg :obj
    :type geometry_msgs-msg:PoseArray
    :initform (cl:make-instance 'geometry_msgs-msg:PoseArray)))
)

(cl:defclass PerceptionMap (<PerceptionMap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerceptionMap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerceptionMap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<PerceptionMap> is deprecated: use perception_msgs-msg:PerceptionMap instead.")))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <PerceptionMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:objects-val is deprecated.  Use perception_msgs-msg:objects instead.")
  (objects m))

(cl:ensure-generic-function 'obj-val :lambda-list '(m))
(cl:defmethod obj-val ((m <PerceptionMap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:obj-val is deprecated.  Use perception_msgs-msg:obj instead.")
  (obj m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerceptionMap>) ostream)
  "Serializes a message object of type '<PerceptionMap>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'obj) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerceptionMap>) istream)
  "Deserializes a message object of type '<PerceptionMap>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'perception_msgs-msg:Object))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'obj) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerceptionMap>)))
  "Returns string type for a message object of type '<PerceptionMap>"
  "perception_msgs/PerceptionMap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerceptionMap)))
  "Returns string type for a message object of type 'PerceptionMap"
  "perception_msgs/PerceptionMap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerceptionMap>)))
  "Returns md5sum for a message object of type '<PerceptionMap>"
  "366a6b524c2178f2275f791e91732ad8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerceptionMap)))
  "Returns md5sum for a message object of type 'PerceptionMap"
  "366a6b524c2178f2275f791e91732ad8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerceptionMap>)))
  "Returns full string definition for message of type '<PerceptionMap>"
  (cl:format cl:nil "#~%#~%~%~%perception_msgs/Object[]  objects~%geometry_msgs/PoseArray obj~%~%#perception_msgs/Lane  left_line~%#perception_msgs/Lane  right_line~%#perception_msgs/Lane  left_boundary~%#perception_msgs/Lane  right_line~%================================================================================~%MSG: perception_msgs/Object~%#~%#~%~%~%perception_msgs/Pt[] Pts~%~%int8 id~%int8 type~%~%float64  relative_dir~%float64  relative_speed~%~%~%###  add gridcells info  ###~%~%~%~%================================================================================~%MSG: perception_msgs/Pt~%####~%###~%~%~%float32 x~%float32 y~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerceptionMap)))
  "Returns full string definition for message of type 'PerceptionMap"
  (cl:format cl:nil "#~%#~%~%~%perception_msgs/Object[]  objects~%geometry_msgs/PoseArray obj~%~%#perception_msgs/Lane  left_line~%#perception_msgs/Lane  right_line~%#perception_msgs/Lane  left_boundary~%#perception_msgs/Lane  right_line~%================================================================================~%MSG: perception_msgs/Object~%#~%#~%~%~%perception_msgs/Pt[] Pts~%~%int8 id~%int8 type~%~%float64  relative_dir~%float64  relative_speed~%~%~%###  add gridcells info  ###~%~%~%~%================================================================================~%MSG: perception_msgs/Pt~%####~%###~%~%~%float32 x~%float32 y~%~%================================================================================~%MSG: geometry_msgs/PoseArray~%# An array of poses with a header for global reference.~%~%Header header~%~%Pose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerceptionMap>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'obj))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerceptionMap>))
  "Converts a ROS message object to a list"
  (cl:list 'PerceptionMap
    (cl:cons ':objects (objects msg))
    (cl:cons ':obj (obj msg))
))
