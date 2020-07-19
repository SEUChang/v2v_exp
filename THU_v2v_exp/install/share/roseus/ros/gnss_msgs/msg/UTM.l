;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::UTM)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'UTM (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::UTM")
  (make-package "GNSS_MSGS::UTM"))

(in-package "ROS")
;;//! \htmlinclude UTM.msg.html


(defclass gnss_msgs::UTM
  :super ros::object
  :slots (_x _y _z _status ))

(defmethod gnss_msgs::UTM
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _status (round __status))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; int32 _status
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
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _status
       (write-long _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _status
     (setq _status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_msgs::UTM :md5sum-) "da77def20ed3850eb06c17c63aefffaa")
(setf (get gnss_msgs::UTM :datatype-) "gnss_msgs/UTM")
(setf (get gnss_msgs::UTM :definition-)
      "#############################
###       SunHao          ###
#############################

#  UTM


float64 x
float64 y
float64 z

int32 status

")



(provide :gnss_msgs/UTM "da77def20ed3850eb06c17c63aefffaa")


