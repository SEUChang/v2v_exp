;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::SmoothPath)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'SmoothPath (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::SMOOTHPATH")
  (make-package "DNC_MSGS::SMOOTHPATH"))
(unless (find-package "DNC_MSGS::SMOOTHPATHREQUEST")
  (make-package "DNC_MSGS::SMOOTHPATHREQUEST"))
(unless (find-package "DNC_MSGS::SMOOTHPATHRESPONSE")
  (make-package "DNC_MSGS::SMOOTHPATHRESPONSE"))

(in-package "ROS")





(defclass dnc_msgs::SmoothPathRequest
  :super ros::object
  :slots (_st_pt _ori_path ))

(defmethod dnc_msgs::SmoothPathRequest
  (:init
   (&key
    ((:st_pt __st_pt) (instance dnc_msgs::DNCpoint :init))
    ((:ori_path __ori_path) (instance dnc_msgs::DNCpath :init))
    )
   (send-super :init)
   (setq _st_pt __st_pt)
   (setq _ori_path __ori_path)
   self)
  (:st_pt
   (&rest __st_pt)
   (if (keywordp (car __st_pt))
       (send* _st_pt __st_pt)
     (progn
       (if __st_pt (setq _st_pt (car __st_pt)))
       _st_pt)))
  (:ori_path
   (&rest __ori_path)
   (if (keywordp (car __ori_path))
       (send* _ori_path __ori_path)
     (progn
       (if __ori_path (setq _ori_path (car __ori_path)))
       _ori_path)))
  (:serialization-length
   ()
   (+
    ;; dnc_msgs/DNCpoint _st_pt
    (send _st_pt :serialization-length)
    ;; dnc_msgs/DNCpath _ori_path
    (send _ori_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnc_msgs/DNCpoint _st_pt
       (send _st_pt :serialize s)
     ;; dnc_msgs/DNCpath _ori_path
       (send _ori_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnc_msgs/DNCpoint _st_pt
     (send _st_pt :deserialize buf ptr-) (incf ptr- (send _st_pt :serialization-length))
   ;; dnc_msgs/DNCpath _ori_path
     (send _ori_path :deserialize buf ptr-) (incf ptr- (send _ori_path :serialization-length))
   ;;
   self)
  )

(defclass dnc_msgs::SmoothPathResponse
  :super ros::object
  :slots (_res_path ))

(defmethod dnc_msgs::SmoothPathResponse
  (:init
   (&key
    ((:res_path __res_path) (instance dnc_msgs::DNCpath :init))
    )
   (send-super :init)
   (setq _res_path __res_path)
   self)
  (:res_path
   (&rest __res_path)
   (if (keywordp (car __res_path))
       (send* _res_path __res_path)
     (progn
       (if __res_path (setq _res_path (car __res_path)))
       _res_path)))
  (:serialization-length
   ()
   (+
    ;; dnc_msgs/DNCpath _res_path
    (send _res_path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnc_msgs/DNCpath _res_path
       (send _res_path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnc_msgs/DNCpath _res_path
     (send _res_path :deserialize buf ptr-) (incf ptr- (send _res_path :serialization-length))
   ;;
   self)
  )

(defclass dnc_msgs::SmoothPath
  :super ros::object
  :slots ())

(setf (get dnc_msgs::SmoothPath :md5sum-) "f4c127e6fd3a1d84b001ac0a03f0e720")
(setf (get dnc_msgs::SmoothPath :datatype-) "dnc_msgs/SmoothPath")
(setf (get dnc_msgs::SmoothPath :request) dnc_msgs::SmoothPathRequest)
(setf (get dnc_msgs::SmoothPath :response) dnc_msgs::SmoothPathResponse)

(defmethod dnc_msgs::SmoothPathRequest
  (:response () (instance dnc_msgs::SmoothPathResponse :init)))

(setf (get dnc_msgs::SmoothPathRequest :md5sum-) "f4c127e6fd3a1d84b001ac0a03f0e720")
(setf (get dnc_msgs::SmoothPathRequest :datatype-) "dnc_msgs/SmoothPathRequest")
(setf (get dnc_msgs::SmoothPathRequest :definition-)
      "dnc_msgs/DNCpoint st_pt
dnc_msgs/DNCpath  ori_path

================================================================================
MSG: dnc_msgs/DNCpoint
#############################
###       SunHao          ###
#############################


float64 x
float64 y
float64 s

float64 cuv
float64 heading
float64 speed

float32 h

================================================================================
MSG: dnc_msgs/DNCpath
#############################
###       SunHao          ###
#############################


dnc_msgs/DNCpoint[] pts
bool s_flag
---
dnc_msgs/DNCpath res_path

================================================================================
MSG: dnc_msgs/DNCpath
#############################
###       SunHao          ###
#############################


dnc_msgs/DNCpoint[] pts
bool s_flag
bool h_flag
================================================================================
MSG: dnc_msgs/DNCpoint
#############################
###       SunHao          ###
#############################


float64 x
float64 y
float64 s

float64 cuv
float64 heading
float64 speed

float32 h
")

(setf (get dnc_msgs::SmoothPathResponse :md5sum-) "f4c127e6fd3a1d84b001ac0a03f0e720")
(setf (get dnc_msgs::SmoothPathResponse :datatype-) "dnc_msgs/SmoothPathResponse")
(setf (get dnc_msgs::SmoothPathResponse :definition-)
      "dnc_msgs/DNCpoint st_pt
dnc_msgs/DNCpath  ori_path

================================================================================
MSG: dnc_msgs/DNCpoint
#############################
###       SunHao          ###
#############################


float64 x
float64 y
float64 s

float64 cuv
float64 heading
float64 speed

float32 h

================================================================================
MSG: dnc_msgs/DNCpath
#############################
###       SunHao          ###
#############################


dnc_msgs/DNCpoint[] pts
bool s_flag
---
dnc_msgs/DNCpath res_path

================================================================================
MSG: dnc_msgs/DNCpath
#############################
###       SunHao          ###
#############################


dnc_msgs/DNCpoint[] pts
bool s_flag
bool h_flag
================================================================================
MSG: dnc_msgs/DNCpoint
#############################
###       SunHao          ###
#############################


float64 x
float64 y
float64 s

float64 cuv
float64 heading
float64 speed

float32 h
")



(provide :dnc_msgs/SmoothPath "f4c127e6fd3a1d84b001ac0a03f0e720")


