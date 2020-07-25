;; Auto-generated. Do not edit!


(when (boundp 'dnc_msgs::VehStat)
  (if (not (find-package "DNC_MSGS"))
    (make-package "DNC_MSGS"))
  (shadow 'VehStat (find-package "DNC_MSGS")))
(unless (find-package "DNC_MSGS::VEHSTAT")
  (make-package "DNC_MSGS::VEHSTAT"))

(in-package "ROS")
;;//! \htmlinclude VehStat.msg.html


(defclass dnc_msgs::VehStat
  :super ros::object
  :slots (_vx _v_kmh _sw_deg _sw_rad _gear_status ))

(defmethod dnc_msgs::VehStat
  (:init
   (&key
    ((:vx __vx) 0.0)
    ((:v_kmh __v_kmh) 0.0)
    ((:sw_deg __sw_deg) 0.0)
    ((:sw_rad __sw_rad) 0.0)
    ((:gear_status __gear_status) 0)
    )
   (send-super :init)
   (setq _vx (float __vx))
   (setq _v_kmh (float __v_kmh))
   (setq _sw_deg (float __sw_deg))
   (setq _sw_rad (float __sw_rad))
   (setq _gear_status (round __gear_status))
   self)
  (:vx
   (&optional __vx)
   (if __vx (setq _vx __vx)) _vx)
  (:v_kmh
   (&optional __v_kmh)
   (if __v_kmh (setq _v_kmh __v_kmh)) _v_kmh)
  (:sw_deg
   (&optional __sw_deg)
   (if __sw_deg (setq _sw_deg __sw_deg)) _sw_deg)
  (:sw_rad
   (&optional __sw_rad)
   (if __sw_rad (setq _sw_rad __sw_rad)) _sw_rad)
  (:gear_status
   (&optional __gear_status)
   (if __gear_status (setq _gear_status __gear_status)) _gear_status)
  (:serialization-length
   ()
   (+
    ;; float32 _vx
    4
    ;; float32 _v_kmh
    4
    ;; float32 _sw_deg
    4
    ;; float32 _sw_rad
    4
    ;; int32 _gear_status
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _vx
       (sys::poke _vx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _v_kmh
       (sys::poke _v_kmh (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sw_deg
       (sys::poke _sw_deg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _sw_rad
       (sys::poke _sw_rad (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _gear_status
       (write-long _gear_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _vx
     (setq _vx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _v_kmh
     (setq _v_kmh (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sw_deg
     (setq _sw_deg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _sw_rad
     (setq _sw_rad (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _gear_status
     (setq _gear_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get dnc_msgs::VehStat :md5sum-) "e80772b9bb70a4ec8d045b4f390e4eb8")
(setf (get dnc_msgs::VehStat :datatype-) "dnc_msgs/VehStat")
(setf (get dnc_msgs::VehStat :definition-)
      "

float32 vx
float32 v_kmh
float32 sw_deg
float32 sw_rad

int32 gear_status

")



(provide :dnc_msgs/VehStat "e80772b9bb70a4ec8d045b4f390e4eb8")


