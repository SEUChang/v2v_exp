;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::GTIMU)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'GTIMU (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::GTIMU")
  (make-package "GNSS_MSGS::GTIMU"))

(in-package "ROS")
;;//! \htmlinclude GTIMU.msg.html


(defclass gnss_msgs::GTIMU
  :super ros::object
  :slots (_GPSWeek _GPSTime _pitch_rate _roll_rate _yaw_rate _acc_x _acc_y _acc_z _tpr ))

(defmethod gnss_msgs::GTIMU
  (:init
   (&key
    ((:GPSWeek __GPSWeek) 0)
    ((:GPSTime __GPSTime) 0.0)
    ((:pitch_rate __pitch_rate) 0.0)
    ((:roll_rate __roll_rate) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    ((:tpr __tpr) 0.0)
    )
   (send-super :init)
   (setq _GPSWeek (round __GPSWeek))
   (setq _GPSTime (float __GPSTime))
   (setq _pitch_rate (float __pitch_rate))
   (setq _roll_rate (float __roll_rate))
   (setq _yaw_rate (float __yaw_rate))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   (setq _tpr (float __tpr))
   self)
  (:GPSWeek
   (&optional __GPSWeek)
   (if __GPSWeek (setq _GPSWeek __GPSWeek)) _GPSWeek)
  (:GPSTime
   (&optional __GPSTime)
   (if __GPSTime (setq _GPSTime __GPSTime)) _GPSTime)
  (:pitch_rate
   (&optional __pitch_rate)
   (if __pitch_rate (setq _pitch_rate __pitch_rate)) _pitch_rate)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:tpr
   (&optional __tpr)
   (if __tpr (setq _tpr __tpr)) _tpr)
  (:serialization-length
   ()
   (+
    ;; int32 _GPSWeek
    4
    ;; float64 _GPSTime
    8
    ;; float64 _pitch_rate
    8
    ;; float64 _roll_rate
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _acc_x
    8
    ;; float64 _acc_y
    8
    ;; float64 _acc_z
    8
    ;; float64 _tpr
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _GPSWeek
       (write-long _GPSWeek s)
     ;; float64 _GPSTime
       (sys::poke _GPSTime (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_rate
       (sys::poke _pitch_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll_rate
       (sys::poke _roll_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tpr
       (sys::poke _tpr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _GPSWeek
     (setq _GPSWeek (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _GPSTime
     (setq _GPSTime (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_rate
     (setq _pitch_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_x
     (setq _acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_y
     (setq _acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_z
     (setq _acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tpr
     (setq _tpr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_msgs::GTIMU :md5sum-) "d78377954954abd5e348c740ac6f7798")
(setf (get gnss_msgs::GTIMU :datatype-) "gnss_msgs/GTIMU")
(setf (get gnss_msgs::GTIMU :definition-)
      "int32 GPSWeek
float64 GPSTime
float64 pitch_rate
float64 roll_rate
float64 yaw_rate

float64 acc_x
float64 acc_y
float64 acc_z

float64 tpr

")



(provide :gnss_msgs/GTIMU "d78377954954abd5e348c740ac6f7798")


