;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Lane)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Lane (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::LANE")
  (make-package "PERCEPTION_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html


(defclass perception_msgs::Lane
  :super ros::object
  :slots ())

(defmethod perception_msgs::Lane
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get perception_msgs::Lane :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get perception_msgs::Lane :datatype-) "perception_msgs/Lane")
(setf (get perception_msgs::Lane :definition-)
      "#############################
###       SunHao          ###
#############################



")



(provide :perception_msgs/Lane "d41d8cd98f00b204e9800998ecf8427e")


