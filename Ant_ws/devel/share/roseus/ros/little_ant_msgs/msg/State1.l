;; Auto-generated. Do not edit!


(when (boundp 'little_ant_msgs::State1)
  (if (not (find-package "LITTLE_ANT_MSGS"))
    (make-package "LITTLE_ANT_MSGS"))
  (shadow 'State1 (find-package "LITTLE_ANT_MSGS")))
(unless (find-package "LITTLE_ANT_MSGS::STATE1")
  (make-package "LITTLE_ANT_MSGS::STATE1"))

(in-package "ROS")
;;//! \htmlinclude State1.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*GEAR_DRIVE*" (find-package "LITTLE_ANT_MSGS::STATE1"))
(shadow '*GEAR_DRIVE* (find-package "LITTLE_ANT_MSGS::STATE1"))
(defconstant little_ant_msgs::State1::*GEAR_DRIVE* 11)
(intern "*GEAR_NEUTRAL*" (find-package "LITTLE_ANT_MSGS::STATE1"))
(shadow '*GEAR_NEUTRAL* (find-package "LITTLE_ANT_MSGS::STATE1"))
(defconstant little_ant_msgs::State1::*GEAR_NEUTRAL* 12)
(intern "*GEAR_REVERSE*" (find-package "LITTLE_ANT_MSGS::STATE1"))
(shadow '*GEAR_REVERSE* (find-package "LITTLE_ANT_MSGS::STATE1"))
(defconstant little_ant_msgs::State1::*GEAR_REVERSE* 13)
(defclass little_ant_msgs::State1
  :super ros::object
  :slots (_header _act_gear _accel_pedal_position _brake_pedal _accel_pedal_position_valid _act_gear_valid _brake_pedal_valid _vehicle_ready _driverless_mode ))

(defmethod little_ant_msgs::State1
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:act_gear __act_gear) 0)
    ((:accel_pedal_position __accel_pedal_position) 0.0)
    ((:brake_pedal __brake_pedal) 0)
    ((:accel_pedal_position_valid __accel_pedal_position_valid) nil)
    ((:act_gear_valid __act_gear_valid) nil)
    ((:brake_pedal_valid __brake_pedal_valid) nil)
    ((:vehicle_ready __vehicle_ready) nil)
    ((:driverless_mode __driverless_mode) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _act_gear (round __act_gear))
   (setq _accel_pedal_position (float __accel_pedal_position))
   (setq _brake_pedal (round __brake_pedal))
   (setq _accel_pedal_position_valid __accel_pedal_position_valid)
   (setq _act_gear_valid __act_gear_valid)
   (setq _brake_pedal_valid __brake_pedal_valid)
   (setq _vehicle_ready __vehicle_ready)
   (setq _driverless_mode __driverless_mode)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:act_gear
   (&optional __act_gear)
   (if __act_gear (setq _act_gear __act_gear)) _act_gear)
  (:accel_pedal_position
   (&optional __accel_pedal_position)
   (if __accel_pedal_position (setq _accel_pedal_position __accel_pedal_position)) _accel_pedal_position)
  (:brake_pedal
   (&optional __brake_pedal)
   (if __brake_pedal (setq _brake_pedal __brake_pedal)) _brake_pedal)
  (:accel_pedal_position_valid
   (&optional __accel_pedal_position_valid)
   (if __accel_pedal_position_valid (setq _accel_pedal_position_valid __accel_pedal_position_valid)) _accel_pedal_position_valid)
  (:act_gear_valid
   (&optional __act_gear_valid)
   (if __act_gear_valid (setq _act_gear_valid __act_gear_valid)) _act_gear_valid)
  (:brake_pedal_valid
   (&optional __brake_pedal_valid)
   (if __brake_pedal_valid (setq _brake_pedal_valid __brake_pedal_valid)) _brake_pedal_valid)
  (:vehicle_ready
   (&optional __vehicle_ready)
   (if __vehicle_ready (setq _vehicle_ready __vehicle_ready)) _vehicle_ready)
  (:driverless_mode
   (&optional __driverless_mode)
   (if __driverless_mode (setq _driverless_mode __driverless_mode)) _driverless_mode)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _act_gear
    1
    ;; float32 _accel_pedal_position
    4
    ;; uint8 _brake_pedal
    1
    ;; bool _accel_pedal_position_valid
    1
    ;; bool _act_gear_valid
    1
    ;; bool _brake_pedal_valid
    1
    ;; bool _vehicle_ready
    1
    ;; bool _driverless_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _act_gear
       (write-byte _act_gear s)
     ;; float32 _accel_pedal_position
       (sys::poke _accel_pedal_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _brake_pedal
       (write-byte _brake_pedal s)
     ;; bool _accel_pedal_position_valid
       (if _accel_pedal_position_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _act_gear_valid
       (if _act_gear_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _brake_pedal_valid
       (if _brake_pedal_valid (write-byte -1 s) (write-byte 0 s))
     ;; bool _vehicle_ready
       (if _vehicle_ready (write-byte -1 s) (write-byte 0 s))
     ;; bool _driverless_mode
       (if _driverless_mode (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _act_gear
     (setq _act_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _accel_pedal_position
     (setq _accel_pedal_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _brake_pedal
     (setq _brake_pedal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _accel_pedal_position_valid
     (setq _accel_pedal_position_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _act_gear_valid
     (setq _act_gear_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _brake_pedal_valid
     (setq _brake_pedal_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _vehicle_ready
     (setq _vehicle_ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driverless_mode
     (setq _driverless_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get little_ant_msgs::State1 :md5sum-) "d700876b21c15951961ee3bec1bee8b6")
(setf (get little_ant_msgs::State1 :datatype-) "little_ant_msgs/State1")
(setf (get little_ant_msgs::State1 :definition-)
      "#VCU_8 0x151

std_msgs/Header header

uint8 GEAR_DRIVE   = 11
uint8 GEAR_NEUTRAL = 12
uint8 GEAR_REVERSE = 13

uint8 act_gear
float32 accel_pedal_position
uint8 brake_pedal
bool accel_pedal_position_valid
bool act_gear_valid
bool brake_pedal_valid
bool vehicle_ready
bool driverless_mode



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



(provide :little_ant_msgs/State1 "d700876b21c15951961ee3bec1bee8b6")


