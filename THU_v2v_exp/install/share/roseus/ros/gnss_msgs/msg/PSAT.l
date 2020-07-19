;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::PSAT)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'PSAT (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::PSAT")
  (make-package "GNSS_MSGS::PSAT"))

(in-package "ROS")
;;//! \htmlinclude PSAT.msg.html


(defclass gnss_msgs::PSAT
  :super ros::object
  :slots (_heading _pitch _roll ))

(defmethod gnss_msgs::PSAT
  (:init
   (&key
    ((:heading __heading) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    )
   (send-super :init)
   (setq _heading (float __heading))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   self)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:serialization-length
   ()
   (+
    ;; float64 _heading
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_msgs::PSAT :md5sum-) "122cf7e3b0fb6636d95e8f81f3e2cb17")
(setf (get gnss_msgs::PSAT :datatype-) "gnss_msgs/PSAT")
(setf (get gnss_msgs::PSAT :definition-)
      "###
#
#

float64 heading
float64 pitch
float64 roll

")



(provide :gnss_msgs/PSAT "122cf7e3b0fb6636d95e8f81f3e2cb17")


