;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::V2XData)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'V2XData (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::V2XDATA")
  (make-package "PERCEPTION_MSGS::V2XDATA"))

(in-package "ROS")
;;//! \htmlinclude V2XData.msg.html


(defclass perception_msgs::V2XData
  :super ros::object
  :slots (_data ))

(defmethod perception_msgs::V2XData
  (:init
   (&key
    ((:data __data) (let (r) (dotimes (i 0) (push (instance perception_msgs::V2XUnit :init) r)) r))
    )
   (send-super :init)
   (setq _data __data)
   self)
  (:data
   (&rest __data)
   (if (keywordp (car __data))
       (send* _data __data)
     (progn
       (if __data (setq _data (car __data)))
       _data)))
  (:serialization-length
   ()
   (+
    ;; perception_msgs/V2XUnit[] _data
    (apply #'+ (send-all _data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/V2XUnit[] _data
     (write-long (length _data) s)
     (dolist (elem _data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/V2XUnit[] _data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _data (let (r) (dotimes (i n) (push (instance perception_msgs::V2XUnit :init) r)) r))
     (dolist (elem- _data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::V2XData :md5sum-) "784b9cdf681025c07be558fb290fb188")
(setf (get perception_msgs::V2XData :datatype-) "perception_msgs/V2XData")
(setf (get perception_msgs::V2XData :definition-)
      "

perception_msgs/V2XUnit[] data
================================================================================
MSG: perception_msgs/V2XUnit



#std_msgs/String info_id
int32  id
float32 x
float32 y
float32 yaw
float32 speed
#float32 ax




")



(provide :perception_msgs/V2XData "784b9cdf681025c07be558fb290fb188")


