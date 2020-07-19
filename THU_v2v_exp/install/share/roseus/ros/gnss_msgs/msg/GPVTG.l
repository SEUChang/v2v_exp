;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::GPVTG)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'GPVTG (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::GPVTG")
  (make-package "GNSS_MSGS::GPVTG"))

(in-package "ROS")
;;//! \htmlinclude GPVTG.msg.html


(defclass gnss_msgs::GPVTG
  :super ros::object
  :slots (_real_north _magn_north _speed_nav _speed ))

(defmethod gnss_msgs::GPVTG
  (:init
   (&key
    ((:real_north __real_north) 0.0)
    ((:magn_north __magn_north) 0.0)
    ((:speed_nav __speed_nav) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _real_north (float __real_north))
   (setq _magn_north (float __magn_north))
   (setq _speed_nav (float __speed_nav))
   (setq _speed (float __speed))
   self)
  (:real_north
   (&optional __real_north)
   (if __real_north (setq _real_north __real_north)) _real_north)
  (:magn_north
   (&optional __magn_north)
   (if __magn_north (setq _magn_north __magn_north)) _magn_north)
  (:speed_nav
   (&optional __speed_nav)
   (if __speed_nav (setq _speed_nav __speed_nav)) _speed_nav)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _real_north
    8
    ;; float64 _magn_north
    8
    ;; float64 _speed_nav
    8
    ;; float64 _speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _real_north
       (sys::poke _real_north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _magn_north
       (sys::poke _magn_north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed_nav
       (sys::poke _speed_nav (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _real_north
     (setq _real_north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _magn_north
     (setq _magn_north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed_nav
     (setq _speed_nav (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_msgs::GPVTG :md5sum-) "55bf248c8109ca74aca673f0009467b8")
(setf (get gnss_msgs::GPVTG :datatype-) "gnss_msgs/GPVTG")
(setf (get gnss_msgs::GPVTG :definition-)
      "# Message from GPVTG NMEA String


float64 real_north
float64 magn_north
float64 speed_nav
float64 speed

")



(provide :gnss_msgs/GPVTG "55bf248c8109ca74aca673f0009467b8")


