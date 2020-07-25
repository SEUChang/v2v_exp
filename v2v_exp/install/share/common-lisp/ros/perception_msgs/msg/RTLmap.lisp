; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude RTLmap.msg.html

(cl:defclass <RTLmap> (roslisp-msg-protocol:ros-message)
  ((occ_grid
    :reader occ_grid
    :initarg :occ_grid
    :type perception_msgs-msg:ObsOccGrid
    :initform (cl:make-instance 'perception_msgs-msg:ObsOccGrid))
   (grid_obs
    :reader grid_obs
    :initarg :grid_obs
    :type perception_msgs-msg:GridObs
    :initform (cl:make-instance 'perception_msgs-msg:GridObs)))
)

(cl:defclass RTLmap (<RTLmap>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RTLmap>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RTLmap)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<RTLmap> is deprecated: use perception_msgs-msg:RTLmap instead.")))

(cl:ensure-generic-function 'occ_grid-val :lambda-list '(m))
(cl:defmethod occ_grid-val ((m <RTLmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:occ_grid-val is deprecated.  Use perception_msgs-msg:occ_grid instead.")
  (occ_grid m))

(cl:ensure-generic-function 'grid_obs-val :lambda-list '(m))
(cl:defmethod grid_obs-val ((m <RTLmap>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:grid_obs-val is deprecated.  Use perception_msgs-msg:grid_obs instead.")
  (grid_obs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RTLmap>) ostream)
  "Serializes a message object of type '<RTLmap>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'occ_grid) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grid_obs) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RTLmap>) istream)
  "Deserializes a message object of type '<RTLmap>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'occ_grid) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grid_obs) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RTLmap>)))
  "Returns string type for a message object of type '<RTLmap>"
  "perception_msgs/RTLmap")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RTLmap)))
  "Returns string type for a message object of type 'RTLmap"
  "perception_msgs/RTLmap")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RTLmap>)))
  "Returns md5sum for a message object of type '<RTLmap>"
  "cad5159f0957a62d993fb789a686586c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RTLmap)))
  "Returns md5sum for a message object of type 'RTLmap"
  "cad5159f0957a62d993fb789a686586c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RTLmap>)))
  "Returns full string definition for message of type '<RTLmap>"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%# traditional #~%perception_msgs/ObsOccGrid occ_grid~%~%##  better  ##~%perception_msgs/GridObs grid_obs~%================================================================================~%MSG: perception_msgs/ObsOccGrid~%#################~%~%std_msgs/Header header~%~%int8[] occ~%float32 gird_size~%int32 col_num~%int32 row_num~%~%float32 x0~%float32 y0~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: perception_msgs/GridObs~%~%###~%~%perception_msgs/Object[] obs~%float32 grid_size~%###~%================================================================================~%MSG: perception_msgs/Object~%#~%#~%~%~%perception_msgs/Pt[] Pts~%~%int8 id~%int8 type~%~%float64  relative_dir~%float64  relative_speed~%~%~%###  add gridcells info  ###~%~%~%~%================================================================================~%MSG: perception_msgs/Pt~%####~%###~%~%~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RTLmap)))
  "Returns full string definition for message of type 'RTLmap"
  (cl:format cl:nil "#############################~%###       SunHao          ###~%#############################~%~%# traditional #~%perception_msgs/ObsOccGrid occ_grid~%~%##  better  ##~%perception_msgs/GridObs grid_obs~%================================================================================~%MSG: perception_msgs/ObsOccGrid~%#################~%~%std_msgs/Header header~%~%int8[] occ~%float32 gird_size~%int32 col_num~%int32 row_num~%~%float32 x0~%float32 y0~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: perception_msgs/GridObs~%~%###~%~%perception_msgs/Object[] obs~%float32 grid_size~%###~%================================================================================~%MSG: perception_msgs/Object~%#~%#~%~%~%perception_msgs/Pt[] Pts~%~%int8 id~%int8 type~%~%float64  relative_dir~%float64  relative_speed~%~%~%###  add gridcells info  ###~%~%~%~%================================================================================~%MSG: perception_msgs/Pt~%####~%###~%~%~%float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RTLmap>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occ_grid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grid_obs))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RTLmap>))
  "Converts a ROS message object to a list"
  (cl:list 'RTLmap
    (cl:cons ':occ_grid (occ_grid msg))
    (cl:cons ':grid_obs (grid_obs msg))
))
