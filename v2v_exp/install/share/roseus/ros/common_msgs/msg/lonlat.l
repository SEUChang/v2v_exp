;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::lonlat)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'lonlat (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::LONLAT")
  (make-package "COMMON_MSGS::LONLAT"))

(in-package "ROS")
;;//! \htmlinclude lonlat.msg.html


(defclass common_msgs::lonlat
  :super ros::object
  :slots (_lon _lat _heading ))

(defmethod common_msgs::lonlat
  (:init
   (&key
    ((:lon __lon) 0.0)
    ((:lat __lat) 0.0)
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _lon (float __lon))
   (setq _lat (float __lat))
   (setq _heading (float __heading))
   self)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; float64 _lon
    8
    ;; float64 _lat
    8
    ;; float32 _heading
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::lonlat :md5sum-) "be359fed66360ffb772b898ab219bc12")
(setf (get common_msgs::lonlat :datatype-) "common_msgs/lonlat")
(setf (get common_msgs::lonlat :definition-)
      "float64 lon
float64 lat
float32 heading
")



(provide :common_msgs/lonlat "be359fed66360ffb772b898ab219bc12")


