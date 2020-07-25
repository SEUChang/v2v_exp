;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::Behavior)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'Behavior (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::BEHAVIOR")
  (make-package "DNC_MSGS::BEHAVIOR"))

(in-package "ROS")
;;//! \htmlinclude Behavior.msg.html


(defclass dnc_msgs::Behavior
  :super ros::object
  :slots (_behavior ))

(defmethod dnc_msgs::Behavior
  (:init
   (&key
    ((:behavior __behavior) 0)
    )
   (send-super :init)
   (setq _behavior (round __behavior))
   self)
  (:behavior
   (&optional __behavior)
   (if __behavior (setq _behavior __behavior)) _behavior)
  (:serialization-length
   ()
   (+
    ;; int32 _behavior
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _behavior
       (write-long _behavior s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _behavior
     (setq _behavior (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dnc_msgs::Behavior :md5sum-) "ed9a86c2a85b1c36d1b610c9cea39472")
(setf (get dnc_msgs::Behavior :datatype-) "dnc_msgs/Behavior")
(setf (get dnc_msgs::Behavior :definition-)
      "#####

int32 behavior
")



(provide :dnc_msgs/Behavior "ed9a86c2a85b1c36d1b610c9cea39472")


