;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Point)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Point (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::POINT")
  (make-package "PERCEPTION_MSGS::POINT"))

(in-package "ROS")
;;//! \htmlinclude Point.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::Point
  :super ros::object
  :slots (_x _y _z _s _cuv _heading _speed _speedkmh _rtk_mode _driving_mode _special_mode _obs_search_strategy _speed_mode _obs_strategy _follow_strategy _cross_option _reserved_option _uuid _lane_uuid _section_uuid ))

(defmethod perception_msgs::Point
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:s __s) 0.0)
    ((:cuv __cuv) 0.0)
    ((:heading __heading) 0.0)
    ((:speed __speed) 0.0)
    ((:speedkmh __speedkmh) 0.0)
    ((:rtk_mode __rtk_mode) 0)
    ((:driving_mode __driving_mode) 0)
    ((:special_mode __special_mode) 0)
    ((:obs_search_strategy __obs_search_strategy) 0)
    ((:speed_mode __speed_mode) 0)
    ((:obs_strategy __obs_strategy) 0)
    ((:follow_strategy __follow_strategy) 0)
    ((:cross_option __cross_option) 0)
    ((:reserved_option __reserved_option) 0)
    ((:uuid __uuid) (instance std_msgs::String :init))
    ((:lane_uuid __lane_uuid) (instance std_msgs::String :init))
    ((:section_uuid __section_uuid) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _s (float __s))
   (setq _cuv (float __cuv))
   (setq _heading (float __heading))
   (setq _speed (float __speed))
   (setq _speedkmh (float __speedkmh))
   (setq _rtk_mode (round __rtk_mode))
   (setq _driving_mode (round __driving_mode))
   (setq _special_mode (round __special_mode))
   (setq _obs_search_strategy (round __obs_search_strategy))
   (setq _speed_mode (round __speed_mode))
   (setq _obs_strategy (round __obs_strategy))
   (setq _follow_strategy (round __follow_strategy))
   (setq _cross_option (round __cross_option))
   (setq _reserved_option (round __reserved_option))
   (setq _uuid __uuid)
   (setq _lane_uuid __lane_uuid)
   (setq _section_uuid __section_uuid)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:cuv
   (&optional __cuv)
   (if __cuv (setq _cuv __cuv)) _cuv)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:speedkmh
   (&optional __speedkmh)
   (if __speedkmh (setq _speedkmh __speedkmh)) _speedkmh)
  (:rtk_mode
   (&optional __rtk_mode)
   (if __rtk_mode (setq _rtk_mode __rtk_mode)) _rtk_mode)
  (:driving_mode
   (&optional __driving_mode)
   (if __driving_mode (setq _driving_mode __driving_mode)) _driving_mode)
  (:special_mode
   (&optional __special_mode)
   (if __special_mode (setq _special_mode __special_mode)) _special_mode)
  (:obs_search_strategy
   (&optional __obs_search_strategy)
   (if __obs_search_strategy (setq _obs_search_strategy __obs_search_strategy)) _obs_search_strategy)
  (:speed_mode
   (&optional __speed_mode)
   (if __speed_mode (setq _speed_mode __speed_mode)) _speed_mode)
  (:obs_strategy
   (&optional __obs_strategy)
   (if __obs_strategy (setq _obs_strategy __obs_strategy)) _obs_strategy)
  (:follow_strategy
   (&optional __follow_strategy)
   (if __follow_strategy (setq _follow_strategy __follow_strategy)) _follow_strategy)
  (:cross_option
   (&optional __cross_option)
   (if __cross_option (setq _cross_option __cross_option)) _cross_option)
  (:reserved_option
   (&optional __reserved_option)
   (if __reserved_option (setq _reserved_option __reserved_option)) _reserved_option)
  (:uuid
   (&rest __uuid)
   (if (keywordp (car __uuid))
       (send* _uuid __uuid)
     (progn
       (if __uuid (setq _uuid (car __uuid)))
       _uuid)))
  (:lane_uuid
   (&rest __lane_uuid)
   (if (keywordp (car __lane_uuid))
       (send* _lane_uuid __lane_uuid)
     (progn
       (if __lane_uuid (setq _lane_uuid (car __lane_uuid)))
       _lane_uuid)))
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
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _s
    8
    ;; float64 _cuv
    8
    ;; float64 _heading
    8
    ;; float64 _speed
    8
    ;; float64 _speedkmh
    8
    ;; int32 _rtk_mode
    4
    ;; int32 _driving_mode
    4
    ;; int32 _special_mode
    4
    ;; int32 _obs_search_strategy
    4
    ;; int32 _speed_mode
    4
    ;; int32 _obs_strategy
    4
    ;; int32 _follow_strategy
    4
    ;; int32 _cross_option
    4
    ;; int32 _reserved_option
    4
    ;; std_msgs/String _uuid
    (send _uuid :serialization-length)
    ;; std_msgs/String _lane_uuid
    (send _lane_uuid :serialization-length)
    ;; std_msgs/String _section_uuid
    (send _section_uuid :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _cuv
       (sys::poke _cuv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speedkmh
       (sys::poke _speedkmh (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _rtk_mode
       (write-long _rtk_mode s)
     ;; int32 _driving_mode
       (write-long _driving_mode s)
     ;; int32 _special_mode
       (write-long _special_mode s)
     ;; int32 _obs_search_strategy
       (write-long _obs_search_strategy s)
     ;; int32 _speed_mode
       (write-long _speed_mode s)
     ;; int32 _obs_strategy
       (write-long _obs_strategy s)
     ;; int32 _follow_strategy
       (write-long _follow_strategy s)
     ;; int32 _cross_option
       (write-long _cross_option s)
     ;; int32 _reserved_option
       (write-long _reserved_option s)
     ;; std_msgs/String _uuid
       (send _uuid :serialize s)
     ;; std_msgs/String _lane_uuid
       (send _lane_uuid :serialize s)
     ;; std_msgs/String _section_uuid
       (send _section_uuid :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _cuv
     (setq _cuv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speedkmh
     (setq _speedkmh (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _rtk_mode
     (setq _rtk_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _driving_mode
     (setq _driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _special_mode
     (setq _special_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _obs_search_strategy
     (setq _obs_search_strategy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed_mode
     (setq _speed_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _obs_strategy
     (setq _obs_strategy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _follow_strategy
     (setq _follow_strategy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cross_option
     (setq _cross_option (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reserved_option
     (setq _reserved_option (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _uuid
     (send _uuid :deserialize buf ptr-) (incf ptr- (send _uuid :serialization-length))
   ;; std_msgs/String _lane_uuid
     (send _lane_uuid :deserialize buf ptr-) (incf ptr- (send _lane_uuid :serialization-length))
   ;; std_msgs/String _section_uuid
     (send _section_uuid :deserialize buf ptr-) (incf ptr- (send _section_uuid :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::Point :md5sum-) "bccfec239a88b4161680fb692e3d84e6")
(setf (get perception_msgs::Point :datatype-) "perception_msgs/Point")
(setf (get perception_msgs::Point :definition-)
      "#############################
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



(provide :perception_msgs/Point "bccfec239a88b4161680fb692e3d84e6")


