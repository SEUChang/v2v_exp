;; Auto-generated. Do not edit!


(when (boundp 'esr_radar::Object)
  (if (not (find-package "ESR_RADAR"))
    (make-package "ESR_RADAR"))
  (shadow 'Object (find-package "ESR_RADAR")))
(unless (find-package "ESR_RADAR::OBJECT")
  (make-package "ESR_RADAR::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html


(intern "*NEW_TARGET*" (find-package "ESR_RADAR::OBJECT"))
(shadow '*NEW_TARGET* (find-package "ESR_RADAR::OBJECT"))
(defconstant esr_radar::Object::*NEW_TARGET* 1)
(intern "*UPDATE_TARGET*" (find-package "ESR_RADAR::OBJECT"))
(shadow '*UPDATE_TARGET* (find-package "ESR_RADAR::OBJECT"))
(defconstant esr_radar::Object::*UPDATE_TARGET* 3)
(intern "*COASTED_TARGET*" (find-package "ESR_RADAR::OBJECT"))
(shadow '*COASTED_TARGET* (find-package "ESR_RADAR::OBJECT"))
(defconstant esr_radar::Object::*COASTED_TARGET* 4)
(defclass esr_radar::Object
  :super ros::object
  :slots (_azimuth _distance _x _y _speed _status _id ))

(defmethod esr_radar::Object
  (:init
   (&key
    ((:azimuth __azimuth) 0.0)
    ((:distance __distance) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:speed __speed) 0.0)
    ((:status __status) 0)
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _azimuth (float __azimuth))
   (setq _distance (float __distance))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _speed (float __speed))
   (setq _status (round __status))
   (setq _id (round __id))
   self)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; float32 _azimuth
    4
    ;; float32 _distance
    4
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _speed
    4
    ;; uint8 _status
    1
    ;; uint8 _id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _id
       (write-byte _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _distance
     (setq _distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get esr_radar::Object :md5sum-) "97ede7e7e19fbfe109801d49f808f9e9")
(setf (get esr_radar::Object :datatype-) "esr_radar/Object")
(setf (get esr_radar::Object :definition-)
      "uint8 NEW_TARGET = 1
uint8 UPDATE_TARGET = 3
uint8 COASTED_TARGET = 4

float32 azimuth
float32 distance

float32 x
float32 y

float32 speed
uint8 status
uint8 id


")



(provide :esr_radar/Object "97ede7e7e19fbfe109801d49f808f9e9")


