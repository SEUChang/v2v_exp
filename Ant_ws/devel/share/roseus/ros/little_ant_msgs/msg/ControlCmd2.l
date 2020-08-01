;; Auto-generated. Do not edit!


(when (boundp 'little_ant_msgs::ControlCmd2)
  (if (not (find-package "LITTLE_ANT_MSGS"))
    (make-package "LITTLE_ANT_MSGS"))
  (shadow 'ControlCmd2 (find-package "LITTLE_ANT_MSGS")))
(unless (find-package "LITTLE_ANT_MSGS::CONTROLCMD2")
  (make-package "LITTLE_ANT_MSGS::CONTROLCMD2"))

(in-package "ROS")
;;//! \htmlinclude ControlCmd2.msg.html


(intern "*GEAR_DRIVE*" (find-package "LITTLE_ANT_MSGS::CONTROLCMD2"))
(shadow '*GEAR_DRIVE* (find-package "LITTLE_ANT_MSGS::CONTROLCMD2"))
(defconstant little_ant_msgs::ControlCmd2::*GEAR_DRIVE* 1)
(intern "*GEAR_REVERSE*" (find-package "LITTLE_ANT_MSGS::CONTROLCMD2"))
(shadow '*GEAR_REVERSE* (find-package "LITTLE_ANT_MSGS::CONTROLCMD2"))
(defconstant little_ant_msgs::ControlCmd2::*GEAR_REVERSE* 9)
(intern "*GEAR_NEUTRAL*" (find-package "LITTLE_ANT_MSGS::CONTROLCMD2"))
(shadow '*GEAR_NEUTRAL* (find-package "LITTLE_ANT_MSGS::CONTROLCMD2"))
(defconstant little_ant_msgs::ControlCmd2::*GEAR_NEUTRAL* 10)
(intern "*GEAR_PARKING*" (find-package "LITTLE_ANT_MSGS::CONTROLCMD2"))
(shadow '*GEAR_PARKING* (find-package "LITTLE_ANT_MSGS::CONTROLCMD2"))
(defconstant little_ant_msgs::ControlCmd2::*GEAR_PARKING* 11)
(defclass little_ant_msgs::ControlCmd2
  :super ros::object
  :slots (_set_gear _set_speed _set_brake _set_accelerate _set_roadWheelAngle _set_emergencyBrake ))

(defmethod little_ant_msgs::ControlCmd2
  (:init
   (&key
    ((:set_gear __set_gear) 0)
    ((:set_speed __set_speed) 0.0)
    ((:set_brake __set_brake) 0.0)
    ((:set_accelerate __set_accelerate) 0.0)
    ((:set_roadWheelAngle __set_roadWheelAngle) 0.0)
    ((:set_emergencyBrake __set_emergencyBrake) nil)
    )
   (send-super :init)
   (setq _set_gear (round __set_gear))
   (setq _set_speed (float __set_speed))
   (setq _set_brake (float __set_brake))
   (setq _set_accelerate (float __set_accelerate))
   (setq _set_roadWheelAngle (float __set_roadWheelAngle))
   (setq _set_emergencyBrake __set_emergencyBrake)
   self)
  (:set_gear
   (&optional __set_gear)
   (if __set_gear (setq _set_gear __set_gear)) _set_gear)
  (:set_speed
   (&optional __set_speed)
   (if __set_speed (setq _set_speed __set_speed)) _set_speed)
  (:set_brake
   (&optional __set_brake)
   (if __set_brake (setq _set_brake __set_brake)) _set_brake)
  (:set_accelerate
   (&optional __set_accelerate)
   (if __set_accelerate (setq _set_accelerate __set_accelerate)) _set_accelerate)
  (:set_roadWheelAngle
   (&optional __set_roadWheelAngle)
   (if __set_roadWheelAngle (setq _set_roadWheelAngle __set_roadWheelAngle)) _set_roadWheelAngle)
  (:set_emergencyBrake
   (&optional __set_emergencyBrake)
   (if __set_emergencyBrake (setq _set_emergencyBrake __set_emergencyBrake)) _set_emergencyBrake)
  (:serialization-length
   ()
   (+
    ;; uint8 _set_gear
    1
    ;; float32 _set_speed
    4
    ;; float32 _set_brake
    4
    ;; float32 _set_accelerate
    4
    ;; float32 _set_roadWheelAngle
    4
    ;; bool _set_emergencyBrake
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _set_gear
       (write-byte _set_gear s)
     ;; float32 _set_speed
       (sys::poke _set_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _set_brake
       (sys::poke _set_brake (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _set_accelerate
       (sys::poke _set_accelerate (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _set_roadWheelAngle
       (sys::poke _set_roadWheelAngle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _set_emergencyBrake
       (if _set_emergencyBrake (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _set_gear
     (setq _set_gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _set_speed
     (setq _set_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _set_brake
     (setq _set_brake (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _set_accelerate
     (setq _set_accelerate (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _set_roadWheelAngle
     (setq _set_roadWheelAngle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _set_emergencyBrake
     (setq _set_emergencyBrake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get little_ant_msgs::ControlCmd2 :md5sum-) "37dba26fbb2ffb96611897d743ebdf12")
(setf (get little_ant_msgs::ControlCmd2 :datatype-) "little_ant_msgs/ControlCmd2")
(setf (get little_ant_msgs::ControlCmd2 :definition-)
      "#IDM_2  0x1C5


uint8 GEAR_DRIVE   = 1
uint8 GEAR_REVERSE = 9
uint8 GEAR_NEUTRAL = 10
uint8 GEAR_PARKING = 11

uint8 set_gear
float32 set_speed
float32 set_brake
float32 set_accelerate
float32 set_roadWheelAngle   #CCW(-), CW(+)
bool set_emergencyBrake

")



(provide :little_ant_msgs/ControlCmd2 "37dba26fbb2ffb96611897d743ebdf12")


