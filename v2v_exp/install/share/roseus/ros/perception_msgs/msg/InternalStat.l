;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::InternalStat)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'InternalStat (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::INTERNALSTAT")
  (make-package "PERCEPTION_MSGS::INTERNALSTAT"))

(in-package "ROS")
;;//! \htmlinclude InternalStat.msg.html


(defclass perception_msgs::InternalStat
  :super ros::object
  :slots (_state _vx _vy _omega _sw _acc ))

(defmethod perception_msgs::InternalStat
  (:init
   (&key
    ((:state __state) 0)
    ((:vx __vx) 0.0)
    ((:vy __vy) 0.0)
    ((:omega __omega) 0.0)
    ((:sw __sw) 0.0)
    ((:acc __acc) 0.0)
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _vx (float __vx))
   (setq _vy (float __vy))
   (setq _omega (float __omega))
   (setq _sw (float __sw))
   (setq _acc (float __acc))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:vy
   (&optional __vy)
   (if __vy (setq _vy __vy)) _vy)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:sw
   (&optional __sw)
   (if __sw (setq _sw __sw)) _sw)
  (:acc
   (&optional __acc)
   (if __acc (setq _acc __acc)) _acc)
  (:serialization-length
   ()
   (+
    ;; int32 _state
    4
    ;; float64 _vx
    8
    ;; float64 _vy
    8
    ;; float64 _omega
    8
    ;; float64 _sw
    8
    ;; float64 _acc
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _state
       (write-long _state s)
     ;; float64 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vy
       (sys::poke _vy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _sw
       (sys::poke _sw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc
       (sys::poke _acc (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _state
     (setq _state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _vx
     (setq _vx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vy
     (setq _vy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega
     (setq _omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _sw
     (setq _sw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc
     (setq _acc (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_msgs::InternalStat :md5sum-) "2559fc5dbe1d04e91c3c57750ee9ec41")
(setf (get perception_msgs::InternalStat :datatype-) "perception_msgs/InternalStat")
(setf (get perception_msgs::InternalStat :definition-)
      "#############################
###       SunHao          ###
#############################

int32 state

float64 vx
float64 vy

float64 omega
float64 sw
float64 acc
")



(provide :perception_msgs/InternalStat "2559fc5dbe1d04e91c3c57750ee9ec41")


