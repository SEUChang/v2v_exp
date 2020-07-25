;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::roadpoint)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'roadpoint (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::ROADPOINT")
  (make-package "COMMON_MSGS::ROADPOINT"))

(in-package "ROS")
;;//! \htmlinclude roadpoint.msg.html


(defclass common_msgs::roadpoint
  :super ros::object
  :slots (_x _y _gx _gy _roadtype _lanetype _heading _curvature ))

(defmethod common_msgs::roadpoint
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    ((:gx __gx) 0)
    ((:gy __gy) 0)
    ((:roadtype __roadtype) 0)
    ((:lanetype __lanetype) 0)
    ((:heading __heading) 0.0)
    ((:curvature __curvature) 0.0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   (setq _gx (round __gx))
   (setq _gy (round __gy))
   (setq _roadtype (round __roadtype))
   (setq _lanetype (round __lanetype))
   (setq _heading (float __heading))
   (setq _curvature (float __curvature))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:gx
   (&optional __gx)
   (if __gx (setq _gx __gx)) _gx)
  (:gy
   (&optional __gy)
   (if __gy (setq _gy __gy)) _gy)
  (:roadtype
   (&optional __roadtype)
   (if __roadtype (setq _roadtype __roadtype)) _roadtype)
  (:lanetype
   (&optional __lanetype)
   (if __lanetype (setq _lanetype __lanetype)) _lanetype)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:curvature
   (&optional __curvature)
   (if __curvature (setq _curvature __curvature)) _curvature)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ;; int32 _gx
    4
    ;; int32 _gy
    4
    ;; uint8 _roadtype
    1
    ;; uint8 _lanetype
    1
    ;; float32 _heading
    4
    ;; float32 _curvature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;; int32 _gx
       (write-long _gx s)
     ;; int32 _gy
       (write-long _gy s)
     ;; uint8 _roadtype
       (write-byte _roadtype s)
     ;; uint8 _lanetype
       (write-byte _lanetype s)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curvature
       (sys::poke _curvature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _gx
     (setq _gx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gy
     (setq _gy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _roadtype
     (setq _roadtype (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lanetype
     (setq _lanetype (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curvature
     (setq _curvature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::roadpoint :md5sum-) "5188723d8908b67bd1c8e04daf63a8f8")
(setf (get common_msgs::roadpoint :datatype-) "common_msgs/roadpoint")
(setf (get common_msgs::roadpoint :definition-)
      "int16 x                  #局部横坐标   cm
int16 y                  #局部纵坐标   cm
int32 gx                 #全局横坐标   cm
int32 gy                 #全局纵坐标   cm
uint8 roadtype           #道路属性
uint8 lanetype           #当前车道|总车道(4|4)
float32 heading          #heading
float32 curvature
")



(provide :common_msgs/roadpoint "5188723d8908b67bd1c8e04daf63a8f8")


