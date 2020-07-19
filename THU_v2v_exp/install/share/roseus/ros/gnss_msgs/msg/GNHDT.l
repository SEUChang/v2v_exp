;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::GNHDT)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'GNHDT (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::GNHDT")
  (make-package "GNSS_MSGS::GNHDT"))

(in-package "ROS")
;;//! \htmlinclude GNHDT.msg.html


(defclass gnss_msgs::GNHDT
  :super ros::object
  :slots (_heading_deg ))

(defmethod gnss_msgs::GNHDT
  (:init
   (&key
    ((:heading_deg __heading_deg) 0.0)
    )
   (send-super :init)
   (setq _heading_deg (float __heading_deg))
   self)
  (:heading_deg
   (&optional __heading_deg)
   (if __heading_deg (setq _heading_deg __heading_deg)) _heading_deg)
  (:serialization-length
   ()
   (+
    ;; float64 _heading_deg
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _heading_deg
       (sys::poke _heading_deg (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _heading_deg
     (setq _heading_deg (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_msgs::GNHDT :md5sum-) "1faae2859dcb5aa43baeb4f984cff1fd")
(setf (get gnss_msgs::GNHDT :datatype-) "gnss_msgs/GNHDT")
(setf (get gnss_msgs::GNHDT :definition-)
      "##

##

float64 heading_deg

")



(provide :gnss_msgs/GNHDT "1faae2859dcb5aa43baeb4f984cff1fd")


