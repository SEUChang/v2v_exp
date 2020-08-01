;; Auto-generated. Do not edit!


(when (boundp 'little_ant_msgs::State3)
  (if (not (find-package "LITTLE_ANT_MSGS"))
    (make-package "LITTLE_ANT_MSGS"))
  (shadow 'State3 (find-package "LITTLE_ANT_MSGS")))
(unless (find-package "LITTLE_ANT_MSGS::STATE3")
  (make-package "LITTLE_ANT_MSGS::STATE3"))

(in-package "ROS")
;;//! \htmlinclude State3.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass little_ant_msgs::State3
  :super ros::object
  :slots (_header _driverless_mode _turn_light_R _turn_light_L _parkTail_light _high_beam _low_beam _brake_light _horn ))

(defmethod little_ant_msgs::State3
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:driverless_mode __driverless_mode) nil)
    ((:turn_light_R __turn_light_R) nil)
    ((:turn_light_L __turn_light_L) nil)
    ((:parkTail_light __parkTail_light) nil)
    ((:high_beam __high_beam) nil)
    ((:low_beam __low_beam) nil)
    ((:brake_light __brake_light) nil)
    ((:horn __horn) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _driverless_mode __driverless_mode)
   (setq _turn_light_R __turn_light_R)
   (setq _turn_light_L __turn_light_L)
   (setq _parkTail_light __parkTail_light)
   (setq _high_beam __high_beam)
   (setq _low_beam __low_beam)
   (setq _brake_light __brake_light)
   (setq _horn __horn)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:driverless_mode
   (&optional __driverless_mode)
   (if __driverless_mode (setq _driverless_mode __driverless_mode)) _driverless_mode)
  (:turn_light_R
   (&optional __turn_light_R)
   (if __turn_light_R (setq _turn_light_R __turn_light_R)) _turn_light_R)
  (:turn_light_L
   (&optional __turn_light_L)
   (if __turn_light_L (setq _turn_light_L __turn_light_L)) _turn_light_L)
  (:parkTail_light
   (&optional __parkTail_light)
   (if __parkTail_light (setq _parkTail_light __parkTail_light)) _parkTail_light)
  (:high_beam
   (&optional __high_beam)
   (if __high_beam (setq _high_beam __high_beam)) _high_beam)
  (:low_beam
   (&optional __low_beam)
   (if __low_beam (setq _low_beam __low_beam)) _low_beam)
  (:brake_light
   (&optional __brake_light)
   (if __brake_light (setq _brake_light __brake_light)) _brake_light)
  (:horn
   (&optional __horn)
   (if __horn (setq _horn __horn)) _horn)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _driverless_mode
    1
    ;; bool _turn_light_R
    1
    ;; bool _turn_light_L
    1
    ;; bool _parkTail_light
    1
    ;; bool _high_beam
    1
    ;; bool _low_beam
    1
    ;; bool _brake_light
    1
    ;; bool _horn
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _driverless_mode
       (if _driverless_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _turn_light_R
       (if _turn_light_R (write-byte -1 s) (write-byte 0 s))
     ;; bool _turn_light_L
       (if _turn_light_L (write-byte -1 s) (write-byte 0 s))
     ;; bool _parkTail_light
       (if _parkTail_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _high_beam
       (if _high_beam (write-byte -1 s) (write-byte 0 s))
     ;; bool _low_beam
       (if _low_beam (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_light
       (if _brake_light (write-byte -1 s) (write-byte 0 s))
     ;; bool _horn
       (if _horn (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _driverless_mode
     (setq _driverless_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _turn_light_R
     (setq _turn_light_R (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _turn_light_L
     (setq _turn_light_L (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _parkTail_light
     (setq _parkTail_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _high_beam
     (setq _high_beam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _low_beam
     (setq _low_beam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_light
     (setq _brake_light (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _horn
     (setq _horn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get little_ant_msgs::State3 :md5sum-) "2adb4f3bd0140b3e748f6391b224e7e9")
(setf (get little_ant_msgs::State3 :datatype-) "little_ant_msgs/State3")
(setf (get little_ant_msgs::State3 :definition-)
      "#ACM_1  0x4D1

std_msgs/Header header

bool driverless_mode

bool turn_light_R

bool turn_light_L

bool parkTail_light

bool high_beam
bool low_beam

bool brake_light
bool horn





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

")



(provide :little_ant_msgs/State3 "2adb4f3bd0140b3e748f6391b224e7e9")


