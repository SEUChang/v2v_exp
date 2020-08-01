;; Auto-generated. Do not edit!


(when (boundp 'little_ant_msgs::State4)
  (if (not (find-package "LITTLE_ANT_MSGS"))
    (make-package "LITTLE_ANT_MSGS"))
  (shadow 'State4 (find-package "LITTLE_ANT_MSGS")))
(unless (find-package "LITTLE_ANT_MSGS::STATE4")
  (make-package "LITTLE_ANT_MSGS::STATE4"))

(in-package "ROS")
;;//! \htmlinclude State4.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass little_ant_msgs::State4
  :super ros::object
  :slots (_header _driverless_mode _steeringAngle _roadwheelAngle _steeringAngle_valid _steeringAngle_speed ))

(defmethod little_ant_msgs::State4
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:driverless_mode __driverless_mode) nil)
    ((:steeringAngle __steeringAngle) 0.0)
    ((:roadwheelAngle __roadwheelAngle) 0.0)
    ((:steeringAngle_valid __steeringAngle_valid) nil)
    ((:steeringAngle_speed __steeringAngle_speed) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _driverless_mode __driverless_mode)
   (setq _steeringAngle (float __steeringAngle))
   (setq _roadwheelAngle (float __roadwheelAngle))
   (setq _steeringAngle_valid __steeringAngle_valid)
   (setq _steeringAngle_speed (float __steeringAngle_speed))
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
  (:steeringAngle
   (&optional __steeringAngle)
   (if __steeringAngle (setq _steeringAngle __steeringAngle)) _steeringAngle)
  (:roadwheelAngle
   (&optional __roadwheelAngle)
   (if __roadwheelAngle (setq _roadwheelAngle __roadwheelAngle)) _roadwheelAngle)
  (:steeringAngle_valid
   (&optional __steeringAngle_valid)
   (if __steeringAngle_valid (setq _steeringAngle_valid __steeringAngle_valid)) _steeringAngle_valid)
  (:steeringAngle_speed
   (&optional __steeringAngle_speed)
   (if __steeringAngle_speed (setq _steeringAngle_speed __steeringAngle_speed)) _steeringAngle_speed)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _driverless_mode
    1
    ;; float32 _steeringAngle
    4
    ;; float32 _roadwheelAngle
    4
    ;; bool _steeringAngle_valid
    1
    ;; float32 _steeringAngle_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _driverless_mode
       (if _driverless_mode (write-byte -1 s) (write-byte 0 s))
     ;; float32 _steeringAngle
       (sys::poke _steeringAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roadwheelAngle
       (sys::poke _roadwheelAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _steeringAngle_valid
       (if _steeringAngle_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _steeringAngle_speed
       (sys::poke _steeringAngle_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _driverless_mode
     (setq _driverless_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _steeringAngle
     (setq _steeringAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roadwheelAngle
     (setq _roadwheelAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _steeringAngle_valid
     (setq _steeringAngle_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _steeringAngle_speed
     (setq _steeringAngle_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get little_ant_msgs::State4 :md5sum-) "ac90c5adc2e5026c3ff29c1d42c1bb25")
(setf (get little_ant_msgs::State4 :datatype-) "little_ant_msgs/State4")
(setf (get little_ant_msgs::State4 :definition-)
      "#EPS_1  0x1D5

std_msgs/Header header

bool driverless_mode
float32 steeringAngle        #CCW(-), CW(+)
float32 roadwheelAngle
bool steeringAngle_valid
float32 steeringAngle_speed


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



(provide :little_ant_msgs/State4 "ac90c5adc2e5026c3ff29c1d42c1bb25")


