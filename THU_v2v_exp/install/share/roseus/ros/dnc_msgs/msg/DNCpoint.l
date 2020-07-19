;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::DNCpoint)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'DNCpoint (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::DNCPOINT")
  (make-package "DNC_MSGS::DNCPOINT"))

(in-package "ROS")
;;//! \htmlinclude DNCpoint.msg.html


(defclass dnc_msgs::DNCpoint
  :super ros::object
  :slots (_x _y _s _cuv _heading _speed _h ))

(defmethod dnc_msgs::DNCpoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:s __s) 0.0)
    ((:cuv __cuv) 0.0)
    ((:heading __heading) 0.0)
    ((:speed __speed) 0.0)
    ((:h __h) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _s (float __s))
   (setq _cuv (float __cuv))
   (setq _heading (float __heading))
   (setq _speed (float __speed))
   (setq _h (float __h))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:cuv
   (&optional __cuv)
   (if __cuv (setq _cuv __cuv)) _cuv)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _s
    8
    ;; float64 _cuv
    8
    ;; float64 _heading
    8
    ;; float64 _speed
    8
    ;; float32 _h
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cuv
       (sys::poke _cuv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _h
       (sys::poke _h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cuv
     (setq _cuv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _h
     (setq _h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dnc_msgs::DNCpoint :md5sum-) "1c088520e7bfc26b1a95305c33067189")
(setf (get dnc_msgs::DNCpoint :datatype-) "dnc_msgs/DNCpoint")
(setf (get dnc_msgs::DNCpoint :definition-)
      "#############################
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



(provide :dnc_msgs/DNCpoint "1c088520e7bfc26b1a95305c33067189")


