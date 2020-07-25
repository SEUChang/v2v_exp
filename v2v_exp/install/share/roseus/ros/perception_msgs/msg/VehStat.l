;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::VehStat)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'VehStat (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::VEHSTAT")
  (make-package "PERCEPTION_MSGS::VEHSTAT"))

(in-package "ROS")
;;//! \htmlinclude VehStat.msg.html


(defclass perception_msgs::VehStat
  :super ros::object
  :slots (_localization _stat ))

(defmethod perception_msgs::VehStat
  (:init
   (&key
    ((:localization __localization) (instance perception_msgs::Localization :init))
    ((:stat __stat) (instance perception_msgs::InternalStat :init))
    )
   (send-super :init)
   (setq _localization __localization)
   (setq _stat __stat)
   self)
  (:localization
   (&rest __localization)
   (if (keywordp (car __localization))
       (send* _localization __localization)
     (progn
       (if __localization (setq _localization (car __localization)))
       _localization)))
  (:stat
   (&rest __stat)
   (if (keywordp (car __stat))
       (send* _stat __stat)
     (progn
       (if __stat (setq _stat (car __stat)))
       _stat)))
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Localization _localization
    (send _localization :serialization-length)
    ;; perception_msgs/InternalStat _stat
    (send _stat :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Localization _localization
       (send _localization :serialize s)
     ;; perception_msgs/InternalStat _stat
       (send _stat :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Localization _localization
     (send _localization :deserialize buf ptr-) (incf ptr- (send _localization :serialization-length))
   ;; perception_msgs/InternalStat _stat
     (send _stat :deserialize buf ptr-) (incf ptr- (send _stat :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::VehStat :md5sum-) "486129c2c8d47b8a54872b701c610998")
(setf (get perception_msgs::VehStat :datatype-) "perception_msgs/VehStat")
(setf (get perception_msgs::VehStat :definition-)
      "#############################
###       SunHao          ###
#############################




perception_msgs/Localization localization
perception_msgs/InternalStat stat

================================================================================
MSG: perception_msgs/Localization
#############################
###       SunHao          ###
#############################

std_msgs/Header header

int32 state

float64 x
float64 y
float64 z
float64 heading
float64 speed
float64 utc_time


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
MSG: perception_msgs/InternalStat
#############################
###       SunHao          ###
#############################

int32 state

float64 vx
float64 vy

float64 omega
float64 sw
")



(provide :perception_msgs/VehStat "486129c2c8d47b8a54872b701c610998")


