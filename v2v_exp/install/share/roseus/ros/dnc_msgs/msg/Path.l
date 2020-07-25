;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::Path)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'Path (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::PATH")
  (make-package "DNC_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html


(defclass dnc_msgs::Path
  :super ros::object
  :slots (_pts _s_flag _h_flag ))

(defmethod dnc_msgs::Path
  (:init
   (&key
    ((:pts __pts) (let (r) (dotimes (i 0) (push (instance dnc_msgs::Pt :init) r)) r))
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
    ;; dnc_msgs/Pt[] _pts
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
     ;; dnc_msgs/Pt[] _pts
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
   ;; dnc_msgs/Pt[] _pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts (let (r) (dotimes (i n) (push (instance dnc_msgs::Pt :init) r)) r))
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

(setf (get dnc_msgs::Path :md5sum-) "33f23220b687c9f758ff12cb63f9522c")
(setf (get dnc_msgs::Path :datatype-) "dnc_msgs/Path")
(setf (get dnc_msgs::Path :definition-)
      "################
#
################

dnc_msgs/Pt[] pts
bool s_flag
bool h_flag
================================================================================
MSG: dnc_msgs/Pt
################
#
################


float32 x
float32 y
float32 s
float32 h

")



(provide :dnc_msgs/Path "33f23220b687c9f758ff12cb63f9522c")


