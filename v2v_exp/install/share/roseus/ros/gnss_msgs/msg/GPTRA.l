;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::GPTRA)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'GPTRA (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::GPTRA")
  (make-package "GNSS_MSGS::GPTRA"))

(in-package "ROS")
;;//! \htmlinclude GPTRA.msg.html


(defclass gnss_msgs::GPTRA
  :super ros::object
  :slots (_utc_time _yaw _pitch _roll _QF _sta_num _delay _stn_id ))

(defmethod gnss_msgs::GPTRA
  (:init
   (&key
    ((:utc_time __utc_time) 0.0)
    ((:yaw __yaw) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:QF __QF) 0)
    ((:sta_num __sta_num) 0)
    ((:delay __delay) 0.0)
    ((:stn_id __stn_id) 0)
    )
   (send-super :init)
   (setq _utc_time (float __utc_time))
   (setq _yaw (float __yaw))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _QF (round __QF))
   (setq _sta_num (round __sta_num))
   (setq _delay (float __delay))
   (setq _stn_id (round __stn_id))
   self)
  (:utc_time
   (&optional __utc_time)
   (if __utc_time (setq _utc_time __utc_time)) _utc_time)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:QF
   (&optional __QF)
   (if __QF (setq _QF __QF)) _QF)
  (:sta_num
   (&optional __sta_num)
   (if __sta_num (setq _sta_num __sta_num)) _sta_num)
  (:delay
   (&optional __delay)
   (if __delay (setq _delay __delay)) _delay)
  (:stn_id
   (&optional __stn_id)
   (if __stn_id (setq _stn_id __stn_id)) _stn_id)
  (:serialization-length
   ()
   (+
    ;; float64 _utc_time
    8
    ;; float64 _yaw
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ;; int8 _QF
    1
    ;; int8 _sta_num
    1
    ;; float64 _delay
    8
    ;; int8 _stn_id
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _utc_time
       (sys::poke _utc_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _QF
       (write-byte _QF s)
     ;; int8 _sta_num
       (write-byte _sta_num s)
     ;; float64 _delay
       (sys::poke _delay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int8 _stn_id
       (write-byte _stn_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _utc_time
     (setq _utc_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _QF
     (setq _QF (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _QF 127) (setq _QF (- _QF 256)))
   ;; int8 _sta_num
     (setq _sta_num (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _sta_num 127) (setq _sta_num (- _sta_num 256)))
   ;; float64 _delay
     (setq _delay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int8 _stn_id
     (setq _stn_id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _stn_id 127) (setq _stn_id (- _stn_id 256)))
   ;;
   self)
  )

(setf (get gnss_msgs::GPTRA :md5sum-) "e282e90be2db4683bb90f41f45ec3f97")
(setf (get gnss_msgs::GPTRA :datatype-) "gnss_msgs/GPTRA")
(setf (get gnss_msgs::GPTRA :definition-)
      "

float64 utc_time
float64 yaw
float64 pitch
float64 roll
int8 QF
int8 sta_num
float64 delay
int8 stn_id
")



(provide :gnss_msgs/GPTRA "e282e90be2db4683bb90f41f45ec3f97")


