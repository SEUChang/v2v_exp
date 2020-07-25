;; Auto-generated. Do not edit!


(when (boundp 'simulator::SimuSet)
  (if (not (find-package "SIMULATOR"))
    (make-package "SIMULATOR"))
  (shadow 'SimuSet (find-package "SIMULATOR")))
(unless (find-package "SIMULATOR::SIMUSET")
  (make-package "SIMULATOR::SIMUSET"))

(in-package "ROS")
;;//! \htmlinclude SimuSet.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass simulator::SimuSet
  :super ros::object
  :slots (_start_or_pause _reset _pose_init _init_pt _init_heading _init_speed _rtk_status ))

(defmethod simulator::SimuSet
  (:init
   (&key
    ((:start_or_pause __start_or_pause) nil)
    ((:reset __reset) nil)
    ((:pose_init __pose_init) nil)
    ((:init_pt __init_pt) (instance geometry_msgs::Point :init))
    ((:init_heading __init_heading) 0.0)
    ((:init_speed __init_speed) 0.0)
    ((:rtk_status __rtk_status) 0)
    )
   (send-super :init)
   (setq _start_or_pause __start_or_pause)
   (setq _reset __reset)
   (setq _pose_init __pose_init)
   (setq _init_pt __init_pt)
   (setq _init_heading (float __init_heading))
   (setq _init_speed (float __init_speed))
   (setq _rtk_status (round __rtk_status))
   self)
  (:start_or_pause
   (&optional __start_or_pause)
   (if __start_or_pause (setq _start_or_pause __start_or_pause)) _start_or_pause)
  (:reset
   (&optional __reset)
   (if __reset (setq _reset __reset)) _reset)
  (:pose_init
   (&optional __pose_init)
   (if __pose_init (setq _pose_init __pose_init)) _pose_init)
  (:init_pt
   (&rest __init_pt)
   (if (keywordp (car __init_pt))
       (send* _init_pt __init_pt)
     (progn
       (if __init_pt (setq _init_pt (car __init_pt)))
       _init_pt)))
  (:init_heading
   (&optional __init_heading)
   (if __init_heading (setq _init_heading __init_heading)) _init_heading)
  (:init_speed
   (&optional __init_speed)
   (if __init_speed (setq _init_speed __init_speed)) _init_speed)
  (:rtk_status
   (&optional __rtk_status)
   (if __rtk_status (setq _rtk_status __rtk_status)) _rtk_status)
  (:serialization-length
   ()
   (+
    ;; bool _start_or_pause
    1
    ;; bool _reset
    1
    ;; bool _pose_init
    1
    ;; geometry_msgs/Point _init_pt
    (send _init_pt :serialization-length)
    ;; float32 _init_heading
    4
    ;; float32 _init_speed
    4
    ;; int8 _rtk_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start_or_pause
       (if _start_or_pause (write-byte -1 s) (write-byte 0 s))
     ;; bool _reset
       (if _reset (write-byte -1 s) (write-byte 0 s))
     ;; bool _pose_init
       (if _pose_init (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Point _init_pt
       (send _init_pt :serialize s)
     ;; float32 _init_heading
       (sys::poke _init_heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _init_speed
       (sys::poke _init_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _rtk_status
       (write-byte _rtk_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start_or_pause
     (setq _start_or_pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _reset
     (setq _reset (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _pose_init
     (setq _pose_init (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Point _init_pt
     (send _init_pt :deserialize buf ptr-) (incf ptr- (send _init_pt :serialization-length))
   ;; float32 _init_heading
     (setq _init_heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _init_speed
     (setq _init_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _rtk_status
     (setq _rtk_status (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _rtk_status 127) (setq _rtk_status (- _rtk_status 256)))
   ;;
   self)
  )

(setf (get simulator::SimuSet :md5sum-) "1f488552fec6ede53d99f875862e60d0")
(setf (get simulator::SimuSet :datatype-) "simulator/SimuSet")
(setf (get simulator::SimuSet :definition-)
      "#

#

bool start_or_pause
bool reset



bool pose_init
geometry_msgs/Point init_pt
float32 init_heading
float32 init_speed


int8 rtk_status
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :simulator/SimuSet "1f488552fec6ede53d99f875862e60d0")


