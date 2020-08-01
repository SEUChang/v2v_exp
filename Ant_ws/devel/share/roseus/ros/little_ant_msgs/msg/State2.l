;; Auto-generated. Do not edit!


(when (boundp 'little_ant_msgs::State2)
  (if (not (find-package "LITTLE_ANT_MSGS"))
    (make-package "LITTLE_ANT_MSGS"))
  (shadow 'State2 (find-package "LITTLE_ANT_MSGS")))
(unless (find-package "LITTLE_ANT_MSGS::STATE2")
  (make-package "LITTLE_ANT_MSGS::STATE2"))

(in-package "ROS")
;;//! \htmlinclude State2.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass little_ant_msgs::State2
  :super ros::object
  :slots (_header _wheel_speed_FL _wheel_speed_FR _wheel_speed_RL _wheel_speed_RR _vehicle_speed _wheel_speed_FL_valid _wheel_speed_FR_valid _wheel_speed_RL_valid _wheel_speed_RR_valid ))

(defmethod little_ant_msgs::State2
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:wheel_speed_FL __wheel_speed_FL) 0.0)
    ((:wheel_speed_FR __wheel_speed_FR) 0.0)
    ((:wheel_speed_RL __wheel_speed_RL) 0.0)
    ((:wheel_speed_RR __wheel_speed_RR) 0.0)
    ((:vehicle_speed __vehicle_speed) 0.0)
    ((:wheel_speed_FL_valid __wheel_speed_FL_valid) nil)
    ((:wheel_speed_FR_valid __wheel_speed_FR_valid) nil)
    ((:wheel_speed_RL_valid __wheel_speed_RL_valid) nil)
    ((:wheel_speed_RR_valid __wheel_speed_RR_valid) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _wheel_speed_FL (float __wheel_speed_FL))
   (setq _wheel_speed_FR (float __wheel_speed_FR))
   (setq _wheel_speed_RL (float __wheel_speed_RL))
   (setq _wheel_speed_RR (float __wheel_speed_RR))
   (setq _vehicle_speed (float __vehicle_speed))
   (setq _wheel_speed_FL_valid __wheel_speed_FL_valid)
   (setq _wheel_speed_FR_valid __wheel_speed_FR_valid)
   (setq _wheel_speed_RL_valid __wheel_speed_RL_valid)
   (setq _wheel_speed_RR_valid __wheel_speed_RR_valid)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:wheel_speed_FL
   (&optional __wheel_speed_FL)
   (if __wheel_speed_FL (setq _wheel_speed_FL __wheel_speed_FL)) _wheel_speed_FL)
  (:wheel_speed_FR
   (&optional __wheel_speed_FR)
   (if __wheel_speed_FR (setq _wheel_speed_FR __wheel_speed_FR)) _wheel_speed_FR)
  (:wheel_speed_RL
   (&optional __wheel_speed_RL)
   (if __wheel_speed_RL (setq _wheel_speed_RL __wheel_speed_RL)) _wheel_speed_RL)
  (:wheel_speed_RR
   (&optional __wheel_speed_RR)
   (if __wheel_speed_RR (setq _wheel_speed_RR __wheel_speed_RR)) _wheel_speed_RR)
  (:vehicle_speed
   (&optional __vehicle_speed)
   (if __vehicle_speed (setq _vehicle_speed __vehicle_speed)) _vehicle_speed)
  (:wheel_speed_FL_valid
   (&optional __wheel_speed_FL_valid)
   (if __wheel_speed_FL_valid (setq _wheel_speed_FL_valid __wheel_speed_FL_valid)) _wheel_speed_FL_valid)
  (:wheel_speed_FR_valid
   (&optional __wheel_speed_FR_valid)
   (if __wheel_speed_FR_valid (setq _wheel_speed_FR_valid __wheel_speed_FR_valid)) _wheel_speed_FR_valid)
  (:wheel_speed_RL_valid
   (&optional __wheel_speed_RL_valid)
   (if __wheel_speed_RL_valid (setq _wheel_speed_RL_valid __wheel_speed_RL_valid)) _wheel_speed_RL_valid)
  (:wheel_speed_RR_valid
   (&optional __wheel_speed_RR_valid)
   (if __wheel_speed_RR_valid (setq _wheel_speed_RR_valid __wheel_speed_RR_valid)) _wheel_speed_RR_valid)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _wheel_speed_FL
    4
    ;; float32 _wheel_speed_FR
    4
    ;; float32 _wheel_speed_RL
    4
    ;; float32 _wheel_speed_RR
    4
    ;; float32 _vehicle_speed
    4
    ;; bool _wheel_speed_FL_valid
    1
    ;; bool _wheel_speed_FR_valid
    1
    ;; bool _wheel_speed_RL_valid
    1
    ;; bool _wheel_speed_RR_valid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _wheel_speed_FL
       (sys::poke _wheel_speed_FL (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_speed_FR
       (sys::poke _wheel_speed_FR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_speed_RL
       (sys::poke _wheel_speed_RL (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wheel_speed_RR
       (sys::poke _wheel_speed_RR (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vehicle_speed
       (sys::poke _vehicle_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _wheel_speed_FL_valid
       (if _wheel_speed_FL_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_speed_FR_valid
       (if _wheel_speed_FR_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_speed_RL_valid
       (if _wheel_speed_RL_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _wheel_speed_RR_valid
       (if _wheel_speed_RR_valid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _wheel_speed_FL
     (setq _wheel_speed_FL (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_speed_FR
     (setq _wheel_speed_FR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_speed_RL
     (setq _wheel_speed_RL (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wheel_speed_RR
     (setq _wheel_speed_RR (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vehicle_speed
     (setq _vehicle_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _wheel_speed_FL_valid
     (setq _wheel_speed_FL_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_speed_FR_valid
     (setq _wheel_speed_FR_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_speed_RL_valid
     (setq _wheel_speed_RL_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _wheel_speed_RR_valid
     (setq _wheel_speed_RR_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get little_ant_msgs::State2 :md5sum-) "7e1f5bf0137abb4b497e51cd65566aa6")
(setf (get little_ant_msgs::State2 :datatype-) "little_ant_msgs/State2")
(setf (get little_ant_msgs::State2 :definition-)
      "#VCU_ABS_1  0x300

std_msgs/Header header

#  km/s
float32 wheel_speed_FL
float32 wheel_speed_FR
float32 wheel_speed_RL
float32 wheel_speed_RR

float32 vehicle_speed   # m/s

bool wheel_speed_FL_valid
bool wheel_speed_FR_valid
bool wheel_speed_RL_valid
bool wheel_speed_RR_valid



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



(provide :little_ant_msgs/State2 "7e1f5bf0137abb4b497e51cd65566aa6")


