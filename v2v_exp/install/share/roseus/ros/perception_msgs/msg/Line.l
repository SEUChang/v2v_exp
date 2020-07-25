;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Line)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Line (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::LINE")
  (make-package "PERCEPTION_MSGS::LINE"))

(in-package "ROS")
;;//! \htmlinclude Line.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::Line
  :super ros::object
  :slots (_pts _is_main _offset _width _uuid _main_uuid _left_uuid _right_uuid _section_uuid ))

(defmethod perception_msgs::Line
  (:init
   (&key
    ((:pts __pts) (let (r) (dotimes (i 0) (push (instance perception_msgs::Point :init) r)) r))
    ((:is_main __is_main) 0)
    ((:offset __offset) 0.0)
    ((:width __width) 0.0)
    ((:uuid __uuid) (instance std_msgs::String :init))
    ((:main_uuid __main_uuid) (instance std_msgs::String :init))
    ((:left_uuid __left_uuid) (instance std_msgs::String :init))
    ((:right_uuid __right_uuid) (instance std_msgs::String :init))
    ((:section_uuid __section_uuid) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _pts __pts)
   (setq _is_main (round __is_main))
   (setq _offset (float __offset))
   (setq _width (float __width))
   (setq _uuid __uuid)
   (setq _main_uuid __main_uuid)
   (setq _left_uuid __left_uuid)
   (setq _right_uuid __right_uuid)
   (setq _section_uuid __section_uuid)
   self)
  (:pts
   (&rest __pts)
   (if (keywordp (car __pts))
       (send* _pts __pts)
     (progn
       (if __pts (setq _pts (car __pts)))
       _pts)))
  (:is_main
   (&optional __is_main)
   (if __is_main (setq _is_main __is_main)) _is_main)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:uuid
   (&rest __uuid)
   (if (keywordp (car __uuid))
       (send* _uuid __uuid)
     (progn
       (if __uuid (setq _uuid (car __uuid)))
       _uuid)))
  (:main_uuid
   (&rest __main_uuid)
   (if (keywordp (car __main_uuid))
       (send* _main_uuid __main_uuid)
     (progn
       (if __main_uuid (setq _main_uuid (car __main_uuid)))
       _main_uuid)))
  (:left_uuid
   (&rest __left_uuid)
   (if (keywordp (car __left_uuid))
       (send* _left_uuid __left_uuid)
     (progn
       (if __left_uuid (setq _left_uuid (car __left_uuid)))
       _left_uuid)))
  (:right_uuid
   (&rest __right_uuid)
   (if (keywordp (car __right_uuid))
       (send* _right_uuid __right_uuid)
     (progn
       (if __right_uuid (setq _right_uuid (car __right_uuid)))
       _right_uuid)))
  (:section_uuid
   (&rest __section_uuid)
   (if (keywordp (car __section_uuid))
       (send* _section_uuid __section_uuid)
     (progn
       (if __section_uuid (setq _section_uuid (car __section_uuid)))
       _section_uuid)))
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Point[] _pts
    (apply #'+ (send-all _pts :serialization-length)) 4
    ;; int8 _is_main
    1
    ;; float64 _offset
    8
    ;; float64 _width
    8
    ;; std_msgs/String _uuid
    (send _uuid :serialization-length)
    ;; std_msgs/String _main_uuid
    (send _main_uuid :serialization-length)
    ;; std_msgs/String _left_uuid
    (send _left_uuid :serialization-length)
    ;; std_msgs/String _right_uuid
    (send _right_uuid :serialization-length)
    ;; std_msgs/String _section_uuid
    (send _section_uuid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Point[] _pts
     (write-long (length _pts) s)
     (dolist (elem _pts)
       (send elem :serialize s)
       )
     ;; int8 _is_main
       (write-byte _is_main s)
     ;; float64 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; std_msgs/String _uuid
       (send _uuid :serialize s)
     ;; std_msgs/String _main_uuid
       (send _main_uuid :serialize s)
     ;; std_msgs/String _left_uuid
       (send _left_uuid :serialize s)
     ;; std_msgs/String _right_uuid
       (send _right_uuid :serialize s)
     ;; std_msgs/String _section_uuid
       (send _section_uuid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Point[] _pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts (let (r) (dotimes (i n) (push (instance perception_msgs::Point :init) r)) r))
     (dolist (elem- _pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8 _is_main
     (setq _is_main (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _is_main 127) (setq _is_main (- _is_main 256)))
   ;; float64 _offset
     (setq _offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; std_msgs/String _uuid
     (send _uuid :deserialize buf ptr-) (incf ptr- (send _uuid :serialization-length))
   ;; std_msgs/String _main_uuid
     (send _main_uuid :deserialize buf ptr-) (incf ptr- (send _main_uuid :serialization-length))
   ;; std_msgs/String _left_uuid
     (send _left_uuid :deserialize buf ptr-) (incf ptr- (send _left_uuid :serialization-length))
   ;; std_msgs/String _right_uuid
     (send _right_uuid :deserialize buf ptr-) (incf ptr- (send _right_uuid :serialization-length))
   ;; std_msgs/String _section_uuid
     (send _section_uuid :deserialize buf ptr-) (incf ptr- (send _section_uuid :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::Line :md5sum-) "d68493cc93c1caae986c853169b539f3")
(setf (get perception_msgs::Line :datatype-) "perception_msgs/Line")
(setf (get perception_msgs::Line :definition-)
      "#############################
###       SunHao          ###
#############################

perception_msgs/Point[] pts

#############################
int8 is_main # Is the lane center lane of this section
float64 offset
float64 width

#############################

#int32 id
std_msgs/String uuid

#############################

std_msgs/String main_uuid

#int32 left_id
std_msgs/String left_uuid

#int32 right_id
std_msgs/String right_uuid


#############################

#int32 section_id
std_msgs/String section_uuid

#############################


================================================================================
MSG: perception_msgs/Point
#############################
###       SunHao          ###
#############################

float64 x
float64 y
float64 z
float64 s
float64 cuv
float64 heading
float64 speed
float64 speedkmh

############################


int32 rtk_mode # 0: 无影响 1： Not rtk stop
int32 driving_mode # acc or collision avoidance
int32 special_mode  #

####################################33
int32 obs_search_strategy  # 0: donot search obs
int32 speed_mode  #
int32 obs_strategy  #
int32 follow_strategy  #
int32 cross_option  #
int32 reserved_option  #



############################

#int32 id
std_msgs/String uuid

#############################

#int32 line_id
std_msgs/String lane_uuid

#############################

#int32 section_id
std_msgs/String section_uuid



================================================================================
MSG: std_msgs/String
string data

")



(provide :perception_msgs/Line "d68493cc93c1caae986c853169b539f3")


