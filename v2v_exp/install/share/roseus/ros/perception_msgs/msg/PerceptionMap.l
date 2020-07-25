;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::PerceptionMap)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'PerceptionMap (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::PERCEPTIONMAP")
  (make-package "PERCEPTION_MSGS::PERCEPTIONMAP"))

(in-package "ROS")
;;//! \htmlinclude PerceptionMap.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass perception_msgs::PerceptionMap
  :super ros::object
  :slots (_objects _obj ))

(defmethod perception_msgs::PerceptionMap
  (:init
   (&key
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance perception_msgs::Object :init) r)) r))
    ((:obj __obj) (instance geometry_msgs::PoseArray :init))
    )
   (send-super :init)
   (setq _objects __objects)
   (setq _obj __obj)
   self)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:obj
   (&rest __obj)
   (if (keywordp (car __obj))
       (send* _obj __obj)
     (progn
       (if __obj (setq _obj (car __obj)))
       _obj)))
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ;; geometry_msgs/PoseArray _obj
    (send _obj :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;; geometry_msgs/PoseArray _obj
       (send _obj :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance perception_msgs::Object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/PoseArray _obj
     (send _obj :deserialize buf ptr-) (incf ptr- (send _obj :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::PerceptionMap :md5sum-) "366a6b524c2178f2275f791e91732ad8")
(setf (get perception_msgs::PerceptionMap :datatype-) "perception_msgs/PerceptionMap")
(setf (get perception_msgs::PerceptionMap :definition-)
      "#
#


perception_msgs/Object[]  objects
geometry_msgs/PoseArray obj

#perception_msgs/Lane  left_line
#perception_msgs/Lane  right_line
#perception_msgs/Lane  left_boundary
#perception_msgs/Lane  right_line
================================================================================
MSG: perception_msgs/Object
#
#


perception_msgs/Pt[] Pts

int8 id
int8 type

float64  relative_dir
float64  relative_speed


###  add gridcells info  ###



================================================================================
MSG: perception_msgs/Pt
####
###


float32 x
float32 y

================================================================================
MSG: geometry_msgs/PoseArray
# An array of poses with a header for global reference.

Header header

Pose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :perception_msgs/PerceptionMap "366a6b524c2178f2275f791e91732ad8")


