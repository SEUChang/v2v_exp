;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::Pt)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'Pt (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::PT")
  (make-package "DNC_MSGS::PT"))

(in-package "ROS")
;;//! \htmlinclude Pt.msg.html


(defclass dnc_msgs::Pt
  :super ros::object
  :slots (_x _y _s _h ))

(defmethod dnc_msgs::Pt
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:s __s) 0.0)
    ((:h __h) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _s (float __s))
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
  (:h
   (&optional __h)
   (if __h (setq _h __h)) _h)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _s
    4
    ;; float32 _h
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _s
       (sys::poke _s (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _h
       (sys::poke _h (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _s
     (setq _s (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _h
     (setq _h (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dnc_msgs::Pt :md5sum-) "835faff274627572328e258af752dfd4")
(setf (get dnc_msgs::Pt :datatype-) "dnc_msgs/Pt")
(setf (get dnc_msgs::Pt :definition-)
      "################
#
################


float32 x
float32 y
float32 s
float32 h

")



(provide :dnc_msgs/Pt "835faff274627572328e258af752dfd4")


