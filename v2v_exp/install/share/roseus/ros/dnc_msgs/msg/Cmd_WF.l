;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::Cmd_WF)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'Cmd_WF (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::CMD_WF")
  (make-package "DNC_MSGS::CMD_WF"))

(in-package "ROS")
;;//! \htmlinclude Cmd_WF.msg.html


(defclass dnc_msgs::Cmd_WF
  :super ros::object
  :slots (_enable_steering _enable_braking _enable_driving _enable_Estop _enable_gear _sw_deg _sw_rad _speed_ms _speed_kms _ax_ms2 _omega_rad _gear_mode _steering _speed ))

(defmethod dnc_msgs::Cmd_WF
  (:init
   (&key
    ((:enable_steering __enable_steering) nil)
    ((:enable_braking __enable_braking) nil)
    ((:enable_driving __enable_driving) nil)
    ((:enable_Estop __enable_Estop) nil)
    ((:enable_gear __enable_gear) nil)
    ((:sw_deg __sw_deg) 0.0)
    ((:sw_rad __sw_rad) 0.0)
    ((:speed_ms __speed_ms) 0.0)
    ((:speed_kms __speed_kms) 0.0)
    ((:ax_ms2 __ax_ms2) 0.0)
    ((:omega_rad __omega_rad) 0.0)
    ((:gear_mode __gear_mode) 0)
    ((:steering __steering) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _enable_steering __enable_steering)
   (setq _enable_braking __enable_braking)
   (setq _enable_driving __enable_driving)
   (setq _enable_Estop __enable_Estop)
   (setq _enable_gear __enable_gear)
   (setq _sw_deg (float __sw_deg))
   (setq _sw_rad (float __sw_rad))
   (setq _speed_ms (float __speed_ms))
   (setq _speed_kms (float __speed_kms))
   (setq _ax_ms2 (float __ax_ms2))
   (setq _omega_rad (float __omega_rad))
   (setq _gear_mode (round __gear_mode))
   (setq _steering (float __steering))
   (setq _speed (float __speed))
   self)
  (:enable_steering
   (&optional __enable_steering)
   (if __enable_steering (setq _enable_steering __enable_steering)) _enable_steering)
  (:enable_braking
   (&optional __enable_braking)
   (if __enable_braking (setq _enable_braking __enable_braking)) _enable_braking)
  (:enable_driving
   (&optional __enable_driving)
   (if __enable_driving (setq _enable_driving __enable_driving)) _enable_driving)
  (:enable_Estop
   (&optional __enable_Estop)
   (if __enable_Estop (setq _enable_Estop __enable_Estop)) _enable_Estop)
  (:enable_gear
   (&optional __enable_gear)
   (if __enable_gear (setq _enable_gear __enable_gear)) _enable_gear)
  (:sw_deg
   (&optional __sw_deg)
   (if __sw_deg (setq _sw_deg __sw_deg)) _sw_deg)
  (:sw_rad
   (&optional __sw_rad)
   (if __sw_rad (setq _sw_rad __sw_rad)) _sw_rad)
  (:speed_ms
   (&optional __speed_ms)
   (if __speed_ms (setq _speed_ms __speed_ms)) _speed_ms)
  (:speed_kms
   (&optional __speed_kms)
   (if __speed_kms (setq _speed_kms __speed_kms)) _speed_kms)
  (:ax_ms2
   (&optional __ax_ms2)
   (if __ax_ms2 (setq _ax_ms2 __ax_ms2)) _ax_ms2)
  (:omega_rad
   (&optional __omega_rad)
   (if __omega_rad (setq _omega_rad __omega_rad)) _omega_rad)
  (:gear_mode
   (&optional __gear_mode)
   (if __gear_mode (setq _gear_mode __gear_mode)) _gear_mode)
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; bool _enable_steering
    1
    ;; bool _enable_braking
    1
    ;; bool _enable_driving
    1
    ;; bool _enable_Estop
    1
    ;; bool _enable_gear
    1
    ;; float32 _sw_deg
    4
    ;; float32 _sw_rad
    4
    ;; float32 _speed_ms
    4
    ;; float32 _speed_kms
    4
    ;; float32 _ax_ms2
    4
    ;; float32 _omega_rad
    4
    ;; int32 _gear_mode
    4
    ;; float32 _steering
    4
    ;; float32 _speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _enable_steering
       (if _enable_steering (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_braking
       (if _enable_braking (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_driving
       (if _enable_driving (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_Estop
       (if _enable_Estop (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_gear
       (if _enable_gear (write-byte -1 s) (write-byte 0 s))
     ;; float32 _sw_deg
       (sys::poke _sw_deg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sw_rad
       (sys::poke _sw_rad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_ms
       (sys::poke _speed_ms (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_kms
       (sys::poke _speed_kms (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ax_ms2
       (sys::poke _ax_ms2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega_rad
       (sys::poke _omega_rad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _gear_mode
       (write-long _gear_mode s)
     ;; float32 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _enable_steering
     (setq _enable_steering (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_braking
     (setq _enable_braking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_driving
     (setq _enable_driving (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_Estop
     (setq _enable_Estop (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_gear
     (setq _enable_gear (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _sw_deg
     (setq _sw_deg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sw_rad
     (setq _sw_rad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_ms
     (setq _speed_ms (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_kms
     (setq _speed_kms (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ax_ms2
     (setq _ax_ms2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega_rad
     (setq _omega_rad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _gear_mode
     (setq _gear_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _steering
     (setq _steering (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dnc_msgs::Cmd_WF :md5sum-) "d06405f78ad4d1752ebdd64f2ef906dc")
(setf (get dnc_msgs::Cmd_WF :datatype-) "dnc_msgs/Cmd_WF")
(setf (get dnc_msgs::Cmd_WF :definition-)
      "#
#  control cmd for weifang qingsaoche
#

#########################

bool enable_steering
bool enable_braking
bool enable_driving
bool enable_Estop
bool enable_gear
#########################

float32 sw_deg  # steering wheel angle
float32 sw_rad
float32 speed_ms
float32 speed_kms
float32 ax_ms2
float32 omega_rad
int32 gear_mode  # 0: N, // 1: forward , // 2 backward, // 3: stop

#########################
float32 steering
float32 speed
")



(provide :dnc_msgs/Cmd_WF "d06405f78ad4d1752ebdd64f2ef906dc")


