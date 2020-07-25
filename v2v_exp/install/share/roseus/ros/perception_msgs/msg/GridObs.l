;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::GridObs)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'GridObs (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::GRIDOBS")
  (make-package "PERCEPTION_MSGS::GRIDOBS"))

(in-package "ROS")
;;//! \htmlinclude GridObs.msg.html


(defclass perception_msgs::GridObs
  :super ros::object
  :slots (_obs _grid_size ))

(defmethod perception_msgs::GridObs
  (:init
   (&key
    ((:obs __obs) (let (r) (dotimes (i 0) (push (instance perception_msgs::Object :init) r)) r))
    ((:grid_size __grid_size) 0.0)
    )
   (send-super :init)
   (setq _obs __obs)
   (setq _grid_size (float __grid_size))
   self)
  (:obs
   (&rest __obs)
   (if (keywordp (car __obs))
       (send* _obs __obs)
     (progn
       (if __obs (setq _obs (car __obs)))
       _obs)))
  (:grid_size
   (&optional __grid_size)
   (if __grid_size (setq _grid_size __grid_size)) _grid_size)
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Object[] _obs
    (apply #'+ (send-all _obs :serialization-length)) 4
    ;; float32 _grid_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Object[] _obs
     (write-long (length _obs) s)
     (dolist (elem _obs)
       (send elem :serialize s)
       )
     ;; float32 _grid_size
       (sys::poke _grid_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Object[] _obs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs (let (r) (dotimes (i n) (push (instance perception_msgs::Object :init) r)) r))
     (dolist (elem- _obs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _grid_size
     (setq _grid_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::GridObs :md5sum-) "4acf58cf22a7c584ee4f8f50c03fe7d2")
(setf (get perception_msgs::GridObs :datatype-) "perception_msgs/GridObs")
(setf (get perception_msgs::GridObs :definition-)
      "
###

perception_msgs/Object[] obs
float32 grid_size
###
================================================================================
MSG: perception_msgs/Object
#
#


perception_msgs/Pt[] Pts

int8 id
int8 type

float64  relative_dir
float64  relative_speed


###  add gridcells info  ###



================================================================================
MSG: perception_msgs/Pt
####
###


float32 x
float32 y

")



(provide :perception_msgs/GridObs "4acf58cf22a7c584ee4f8f50c03fe7d2")


