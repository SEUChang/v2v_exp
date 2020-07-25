;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::DNCpath)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'DNCpath (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::DNCPATH")
  (make-package "DNC_MSGS::DNCPATH"))

(in-package "ROS")
;;//! \htmlinclude DNCpath.msg.html


(defclass dnc_msgs::DNCpath
  :super ros::object
  :slots (_pts _s_flag _h_flag ))

(defmethod dnc_msgs::DNCpath
  (:init
   (&key
    ((:pts __pts) (let (r) (dotimes (i 0) (push (instance dnc_msgs::DNCpoint :init) r)) r))
    ((:s_flag __s_flag) nil)
    ((:h_flag __h_flag) nil)
    )
   (send-super :init)
   (setq _pts __pts)
   (setq _s_flag __s_flag)
   (setq _h_flag __h_flag)
   self)
  (:pts
   (&rest __pts)
   (if (keywordp (car __pts))
       (send* _pts __pts)
     (progn
       (if __pts (setq _pts (car __pts)))
       _pts)))
  (:s_flag
   (&optional __s_flag)
   (if __s_flag (setq _s_flag __s_flag)) _s_flag)
  (:h_flag
   (&optional __h_flag)
   (if __h_flag (setq _h_flag __h_flag)) _h_flag)
  (:serialization-length
   ()
   (+
    ;; dnc_msgs/DNCpoint[] _pts
    (apply #'+ (send-all _pts :serialization-length)) 4
    ;; bool _s_flag
    1
    ;; bool _h_flag
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; dnc_msgs/DNCpoint[] _pts
     (write-long (length _pts) s)
     (dolist (elem _pts)
       (send elem :serialize s)
       )
     ;; bool _s_flag
       (if _s_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _h_flag
       (if _h_flag (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; dnc_msgs/DNCpoint[] _pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts (let (r) (dotimes (i n) (push (instance dnc_msgs::DNCpoint :init) r)) r))
     (dolist (elem- _pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _s_flag
     (setq _s_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _h_flag
     (setq _h_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get dnc_msgs::DNCpath :md5sum-) "99eb39ef67140679ac539ba30d82f7ee")
(setf (get dnc_msgs::DNCpath :datatype-) "dnc_msgs/DNCpath")
(setf (get dnc_msgs::DNCpath :definition-)
      "#############################
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



(provide :dnc_msgs/DNCpath "99eb39ef67140679ac539ba30d82f7ee")


