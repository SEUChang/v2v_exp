;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::VizTraj)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'VizTraj (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::VIZTRAJ")
  (make-package "DNC_MSGS::VIZTRAJ"))

(in-package "ROS")
;;//! \htmlinclude VizTraj.msg.html


(defclass dnc_msgs::VizTraj
  :super ros::object
  :slots (_cluster ))

(defmethod dnc_msgs::VizTraj
  (:init
   (&key
    ((:cluster __cluster) (let (r) (dotimes (i 0) (push (instance dnc_msgs::DNCtrajectory :init) r)) r))
    )
   (send-super :init)
   (setq _cluster __cluster)
   self)
  (:cluster
   (&rest __cluster)
   (if (keywordp (car __cluster))
       (send* _cluster __cluster)
     (progn
       (if __cluster (setq _cluster (car __cluster)))
       _cluster)))
  (:serialization-length
   ()
   (+
    ;; dnc_msgs/DNCtrajectory[] _cluster
    (apply #'+ (send-all _cluster :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnc_msgs/DNCtrajectory[] _cluster
     (write-long (length _cluster) s)
     (dolist (elem _cluster)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnc_msgs/DNCtrajectory[] _cluster
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _cluster (let (r) (dotimes (i n) (push (instance dnc_msgs::DNCtrajectory :init) r)) r))
     (dolist (elem- _cluster)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get dnc_msgs::VizTraj :md5sum-) "23126120fd65eed3989e3e640a1add5d")
(setf (get dnc_msgs::VizTraj :datatype-) "dnc_msgs/VizTraj")
(setf (get dnc_msgs::VizTraj :definition-)
      "dnc_msgs/DNCtrajectory[] cluster
================================================================================
MSG: dnc_msgs/DNCtrajectory
#############################
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



(provide :dnc_msgs/VizTraj "23126120fd65eed3989e3e640a1add5d")


