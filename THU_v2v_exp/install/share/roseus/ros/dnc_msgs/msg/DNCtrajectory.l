;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::DNCtrajectory)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'DNCtrajectory (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::DNCTRAJECTORY")
  (make-package "DNC_MSGS::DNCTRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude DNCtrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass dnc_msgs::DNCtrajectory
  :super ros::object
  :slots (_header _mode _desired_ax _path ))

(defmethod dnc_msgs::DNCtrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:desired_ax __desired_ax) 0.0)
    ((:path __path) (instance dnc_msgs::DNCpath :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _desired_ax (float __desired_ax))
   (setq _path __path)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:desired_ax
   (&optional __desired_ax)
   (if __desired_ax (setq _desired_ax __desired_ax)) _desired_ax)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _mode
    4
    ;; float32 _desired_ax
    4
    ;; dnc_msgs/DNCpath _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _mode
       (write-long _mode s)
     ;; float32 _desired_ax
       (sys::poke _desired_ax (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; dnc_msgs/DNCpath _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _desired_ax
     (setq _desired_ax (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; dnc_msgs/DNCpath _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(setf (get dnc_msgs::DNCtrajectory :md5sum-) "30984eee6f59e717ab9028ecc27d7d49")
(setf (get dnc_msgs::DNCtrajectory :datatype-) "dnc_msgs/DNCtrajectory")
(setf (get dnc_msgs::DNCtrajectory :definition-)
      "#############################
###       SunHao          ###
#############################

std_msgs/Header header

int32 mode
float32 desired_ax
dnc_msgs/DNCpath path

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
MSG: dnc_msgs/DNCpath
#############################
###       SunHao          ###
#############################


dnc_msgs/DNCpoint[] pts
bool s_flag
bool h_flag
================================================================================
MSG: dnc_msgs/DNCpoint
#############################
###       SunHao          ###
#############################


float64 x
float64 y
float64 s

float64 cuv
float64 heading
float64 speed

float32 h

")



(provide :dnc_msgs/DNCtrajectory "30984eee6f59e717ab9028ecc27d7d49")


