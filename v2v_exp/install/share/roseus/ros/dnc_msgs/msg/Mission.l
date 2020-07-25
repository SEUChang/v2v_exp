;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::Mission)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'Mission (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::MISSION")
  (make-package "DNC_MSGS::MISSION"))

(in-package "ROS")
;;//! \htmlinclude Mission.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass dnc_msgs::Mission
  :super ros::object
  :slots (_mission_pt _mission_type ))

(defmethod dnc_msgs::Mission
  (:init
   (&key
    ((:mission_pt __mission_pt) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:mission_type __mission_type) (make-array 0 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _mission_pt __mission_pt)
   (setq _mission_type __mission_type)
   self)
  (:mission_pt
   (&rest __mission_pt)
   (if (keywordp (car __mission_pt))
       (send* _mission_pt __mission_pt)
     (progn
       (if __mission_pt (setq _mission_pt (car __mission_pt)))
       _mission_pt)))
  (:mission_type
   (&optional __mission_type)
   (if __mission_type (setq _mission_type __mission_type)) _mission_type)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point[] _mission_pt
    (apply #'+ (send-all _mission_pt :serialization-length)) 4
    ;; uint32[] _mission_type
    (* 4    (length _mission_type)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point[] _mission_pt
     (write-long (length _mission_pt) s)
     (dolist (elem _mission_pt)
       (send elem :serialize s)
       )
     ;; uint32[] _mission_type
     (write-long (length _mission_type) s)
     (dotimes (i (length _mission_type))
       (write-long (elt _mission_type i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point[] _mission_pt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission_pt (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _mission_pt)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32[] _mission_type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mission_type (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _mission_type i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get dnc_msgs::Mission :md5sum-) "723fd4f61ea387de4693090c6c8f5797")
(setf (get dnc_msgs::Mission :datatype-) "dnc_msgs/Mission")
(setf (get dnc_msgs::Mission :definition-)
      "#############################
#     Mision file           #
#############################


geometry_msgs/Point[] mission_pt
uint32[]  mission_type
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :dnc_msgs/Mission "723fd4f61ea387de4693090c6c8f5797")


