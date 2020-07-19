;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::GlobalPathIndex)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'GlobalPathIndex (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::GLOBALPATHINDEX")
  (make-package "PERCEPTION_MSGS::GLOBALPATHINDEX"))

(in-package "ROS")
;;//! \htmlinclude GlobalPathIndex.msg.html


(defclass perception_msgs::GlobalPathIndex
  :super ros::object
  :slots (_start_section _start_lane _start_pt _topo _goal_section _goal_lane _goal_pt ))

(defmethod perception_msgs::GlobalPathIndex
  (:init
   (&key
    ((:start_section __start_section) 0)
    ((:start_lane __start_lane) 0)
    ((:start_pt __start_pt) 0)
    ((:topo __topo) (make-array 0 :initial-element 0 :element-type :integer))
    ((:goal_section __goal_section) 0)
    ((:goal_lane __goal_lane) 0)
    ((:goal_pt __goal_pt) 0)
    )
   (send-super :init)
   (setq _start_section (round __start_section))
   (setq _start_lane (round __start_lane))
   (setq _start_pt (round __start_pt))
   (setq _topo __topo)
   (setq _goal_section (round __goal_section))
   (setq _goal_lane (round __goal_lane))
   (setq _goal_pt (round __goal_pt))
   self)
  (:start_section
   (&optional __start_section)
   (if __start_section (setq _start_section __start_section)) _start_section)
  (:start_lane
   (&optional __start_lane)
   (if __start_lane (setq _start_lane __start_lane)) _start_lane)
  (:start_pt
   (&optional __start_pt)
   (if __start_pt (setq _start_pt __start_pt)) _start_pt)
  (:topo
   (&optional __topo)
   (if __topo (setq _topo __topo)) _topo)
  (:goal_section
   (&optional __goal_section)
   (if __goal_section (setq _goal_section __goal_section)) _goal_section)
  (:goal_lane
   (&optional __goal_lane)
   (if __goal_lane (setq _goal_lane __goal_lane)) _goal_lane)
  (:goal_pt
   (&optional __goal_pt)
   (if __goal_pt (setq _goal_pt __goal_pt)) _goal_pt)
  (:serialization-length
   ()
   (+
    ;; int32 _start_section
    4
    ;; int32 _start_lane
    4
    ;; int32 _start_pt
    4
    ;; int32[] _topo
    (* 4    (length _topo)) 4
    ;; int32 _goal_section
    4
    ;; int32 _goal_lane
    4
    ;; int32 _goal_pt
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _start_section
       (write-long _start_section s)
     ;; int32 _start_lane
       (write-long _start_lane s)
     ;; int32 _start_pt
       (write-long _start_pt s)
     ;; int32[] _topo
     (write-long (length _topo) s)
     (dotimes (i (length _topo))
       (write-long (elt _topo i) s)
       )
     ;; int32 _goal_section
       (write-long _goal_section s)
     ;; int32 _goal_lane
       (write-long _goal_lane s)
     ;; int32 _goal_pt
       (write-long _goal_pt s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _start_section
     (setq _start_section (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _start_lane
     (setq _start_lane (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _start_pt
     (setq _start_pt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[] _topo
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _topo (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _topo i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32 _goal_section
     (setq _goal_section (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal_lane
     (setq _goal_lane (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal_pt
     (setq _goal_pt (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::GlobalPathIndex :md5sum-) "1d5f95ec9e9a5e5dadbfd38059134fcf")
(setf (get perception_msgs::GlobalPathIndex :datatype-) "perception_msgs/GlobalPathIndex")
(setf (get perception_msgs::GlobalPathIndex :definition-)
      "#############################
###       SunHao          ###
#############################


int32 start_section
int32 start_lane
int32 start_pt

#########################

int32[] topo

#########################
int32 goal_section
int32 goal_lane
int32 goal_pt


")



(provide :perception_msgs/GlobalPathIndex "1d5f95ec9e9a5e5dadbfd38059134fcf")


