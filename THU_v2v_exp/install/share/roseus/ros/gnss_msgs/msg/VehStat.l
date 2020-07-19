;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::VehStat)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'VehStat (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::VEHSTAT")
  (make-package "GNSS_MSGS::VEHSTAT"))

(in-package "ROS")
;;//! \htmlinclude VehStat.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass gnss_msgs::VehStat
  :super ros::object
  :slots (_utm_x _utm_y _utm_z _speed_kmh _speed_ms _heading_ori _heading_rad _heading_deg _gnss_status _pose ))

(defmethod gnss_msgs::VehStat
  (:init
   (&key
    ((:utm_x __utm_x) 0.0)
    ((:utm_y __utm_y) 0.0)
    ((:utm_z __utm_z) 0.0)
    ((:speed_kmh __speed_kmh) 0.0)
    ((:speed_ms __speed_ms) 0.0)
    ((:heading_ori __heading_ori) 0.0)
    ((:heading_rad __heading_rad) 0.0)
    ((:heading_deg __heading_deg) 0.0)
    ((:gnss_status __gnss_status) 0)
    ((:pose __pose) (instance geometry_msgs::PoseStamped :init))
    )
   (send-super :init)
   (setq _utm_x (float __utm_x))
   (setq _utm_y (float __utm_y))
   (setq _utm_z (float __utm_z))
   (setq _speed_kmh (float __speed_kmh))
   (setq _speed_ms (float __speed_ms))
   (setq _heading_ori (float __heading_ori))
   (setq _heading_rad (float __heading_rad))
   (setq _heading_deg (float __heading_deg))
   (setq _gnss_status (round __gnss_status))
   (setq _pose __pose)
   self)
  (:utm_x
   (&optional __utm_x)
   (if __utm_x (setq _utm_x __utm_x)) _utm_x)
  (:utm_y
   (&optional __utm_y)
   (if __utm_y (setq _utm_y __utm_y)) _utm_y)
  (:utm_z
   (&optional __utm_z)
   (if __utm_z (setq _utm_z __utm_z)) _utm_z)
  (:speed_kmh
   (&optional __speed_kmh)
   (if __speed_kmh (setq _speed_kmh __speed_kmh)) _speed_kmh)
  (:speed_ms
   (&optional __speed_ms)
   (if __speed_ms (setq _speed_ms __speed_ms)) _speed_ms)
  (:heading_ori
   (&optional __heading_ori)
   (if __heading_ori (setq _heading_ori __heading_ori)) _heading_ori)
  (:heading_rad
   (&optional __heading_rad)
   (if __heading_rad (setq _heading_rad __heading_rad)) _heading_rad)
  (:heading_deg
   (&optional __heading_deg)
   (if __heading_deg (setq _heading_deg __heading_deg)) _heading_deg)
  (:gnss_status
   (&optional __gnss_status)
   (if __gnss_status (setq _gnss_status __gnss_status)) _gnss_status)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; float64 _utm_x
    8
    ;; float64 _utm_y
    8
    ;; float64 _utm_z
    8
    ;; float64 _speed_kmh
    8
    ;; float64 _speed_ms
    8
    ;; float64 _heading_ori
    8
    ;; float64 _heading_rad
    8
    ;; float64 _heading_deg
    8
    ;; int32 _gnss_status
    4
    ;; geometry_msgs/PoseStamped _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _utm_x
       (sys::poke _utm_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utm_y
       (sys::poke _utm_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utm_z
       (sys::poke _utm_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_kmh
       (sys::poke _speed_kmh (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_ms
       (sys::poke _speed_ms (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_ori
       (sys::poke _heading_ori (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_rad
       (sys::poke _heading_rad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_deg
       (sys::poke _heading_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _gnss_status
       (write-long _gnss_status s)
     ;; geometry_msgs/PoseStamped _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _utm_x
     (setq _utm_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utm_y
     (setq _utm_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utm_z
     (setq _utm_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_kmh
     (setq _speed_kmh (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_ms
     (setq _speed_ms (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_ori
     (setq _heading_ori (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_rad
     (setq _heading_rad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_deg
     (setq _heading_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _gnss_status
     (setq _gnss_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseStamped _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get gnss_msgs::VehStat :md5sum-) "9a7b573b6cfdb4756f9721c428469112")
(setf (get gnss_msgs::VehStat :datatype-) "gnss_msgs/VehStat")
(setf (get gnss_msgs::VehStat :definition-)
      "#############################
###       SunHao          ###
#############################

#  pose and speed


float64 utm_x
float64 utm_y
float64 utm_z


float64 speed_kmh
float64 speed_ms
float64 heading_ori
float64 heading_rad
float64 heading_deg

int32 gnss_status


geometry_msgs/PoseStamped pose

================================================================================
MSG: geometry_msgs/PoseStamped
# A Pose with reference coordinate frame and timestamp
Header header
Pose pose

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



(provide :gnss_msgs/VehStat "9a7b573b6cfdb4756f9721c428469112")


