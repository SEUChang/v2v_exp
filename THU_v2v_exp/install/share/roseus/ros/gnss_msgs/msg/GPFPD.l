;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::GPFPD)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'GPFPD (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::GPFPD")
  (make-package "GNSS_MSGS::GPFPD"))

(in-package "ROS")
;;//! \htmlinclude GPFPD.msg.html


(defclass gnss_msgs::GPFPD
  :super ros::object
  :slots (_GPS_week _GPS_time _heading _pitch _roll _lat _lon _alt _v_east _v_north _v_sky _baseline_len _num_sat1 _num_sat2 _gnss_status _gnss_mode ))

(defmethod gnss_msgs::GPFPD
  (:init
   (&key
    ((:GPS_week __GPS_week) 0)
    ((:GPS_time __GPS_time) 0.0)
    ((:heading __heading) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:lat __lat) 0.0)
    ((:lon __lon) 0.0)
    ((:alt __alt) 0.0)
    ((:v_east __v_east) 0.0)
    ((:v_north __v_north) 0.0)
    ((:v_sky __v_sky) 0.0)
    ((:baseline_len __baseline_len) 0.0)
    ((:num_sat1 __num_sat1) 0)
    ((:num_sat2 __num_sat2) 0)
    ((:gnss_status __gnss_status) 0)
    ((:gnss_mode __gnss_mode) 0)
    )
   (send-super :init)
   (setq _GPS_week (round __GPS_week))
   (setq _GPS_time (float __GPS_time))
   (setq _heading (float __heading))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _lat (float __lat))
   (setq _lon (float __lon))
   (setq _alt (float __alt))
   (setq _v_east (float __v_east))
   (setq _v_north (float __v_north))
   (setq _v_sky (float __v_sky))
   (setq _baseline_len (float __baseline_len))
   (setq _num_sat1 (round __num_sat1))
   (setq _num_sat2 (round __num_sat2))
   (setq _gnss_status (round __gnss_status))
   (setq _gnss_mode (round __gnss_mode))
   self)
  (:GPS_week
   (&optional __GPS_week)
   (if __GPS_week (setq _GPS_week __GPS_week)) _GPS_week)
  (:GPS_time
   (&optional __GPS_time)
   (if __GPS_time (setq _GPS_time __GPS_time)) _GPS_time)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:v_east
   (&optional __v_east)
   (if __v_east (setq _v_east __v_east)) _v_east)
  (:v_north
   (&optional __v_north)
   (if __v_north (setq _v_north __v_north)) _v_north)
  (:v_sky
   (&optional __v_sky)
   (if __v_sky (setq _v_sky __v_sky)) _v_sky)
  (:baseline_len
   (&optional __baseline_len)
   (if __baseline_len (setq _baseline_len __baseline_len)) _baseline_len)
  (:num_sat1
   (&optional __num_sat1)
   (if __num_sat1 (setq _num_sat1 __num_sat1)) _num_sat1)
  (:num_sat2
   (&optional __num_sat2)
   (if __num_sat2 (setq _num_sat2 __num_sat2)) _num_sat2)
  (:gnss_status
   (&optional __gnss_status)
   (if __gnss_status (setq _gnss_status __gnss_status)) _gnss_status)
  (:gnss_mode
   (&optional __gnss_mode)
   (if __gnss_mode (setq _gnss_mode __gnss_mode)) _gnss_mode)
  (:serialization-length
   ()
   (+
    ;; int32 _GPS_week
    4
    ;; float64 _GPS_time
    8
    ;; float64 _heading
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ;; float64 _lat
    8
    ;; float64 _lon
    8
    ;; float64 _alt
    8
    ;; float64 _v_east
    8
    ;; float64 _v_north
    8
    ;; float64 _v_sky
    8
    ;; float64 _baseline_len
    8
    ;; int32 _num_sat1
    4
    ;; int32 _num_sat2
    4
    ;; int32 _gnss_status
    4
    ;; int32 _gnss_mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _GPS_week
       (write-long _GPS_week s)
     ;; float64 _GPS_time
       (sys::poke _GPS_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_east
       (sys::poke _v_east (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_north
       (sys::poke _v_north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v_sky
       (sys::poke _v_sky (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _baseline_len
       (sys::poke _baseline_len (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _num_sat1
       (write-long _num_sat1 s)
     ;; int32 _num_sat2
       (write-long _num_sat2 s)
     ;; int32 _gnss_status
       (write-long _gnss_status s)
     ;; int32 _gnss_mode
       (write-long _gnss_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _GPS_week
     (setq _GPS_week (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _GPS_time
     (setq _GPS_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alt
     (setq _alt (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_east
     (setq _v_east (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_north
     (setq _v_north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v_sky
     (setq _v_sky (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _baseline_len
     (setq _baseline_len (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _num_sat1
     (setq _num_sat1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_sat2
     (setq _num_sat2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gnss_status
     (setq _gnss_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gnss_mode
     (setq _gnss_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_msgs::GPFPD :md5sum-) "595a3f473d05acf864715755cd142584")
(setf (get gnss_msgs::GPFPD :datatype-) "gnss_msgs/GPFPD")
(setf (get gnss_msgs::GPFPD :definition-)
      "#
#
#

int32 GPS_week
float64 GPS_time

float64 heading
float64 pitch
float64 roll

float64 lat
float64 lon
float64 alt

float64 v_east
float64 v_north
float64 v_sky

float64 baseline_len


int32 num_sat1
int32 num_sat2

int32 gnss_status
int32 gnss_mode
")



(provide :gnss_msgs/GPFPD "595a3f473d05acf864715755cd142584")


