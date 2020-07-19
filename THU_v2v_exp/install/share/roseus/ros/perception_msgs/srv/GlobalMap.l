;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::GlobalMap)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'GlobalMap (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::GLOBALMAP")
  (make-package "PERCEPTION_MSGS::GLOBALMAP"))
(unless (find-package "PERCEPTION_MSGS::GLOBALMAPREQUEST")
  (make-package "PERCEPTION_MSGS::GLOBALMAPREQUEST"))
(unless (find-package "PERCEPTION_MSGS::GLOBALMAPRESPONSE")
  (make-package "PERCEPTION_MSGS::GLOBALMAPRESPONSE"))

(in-package "ROS")





(defclass perception_msgs::GlobalMapRequest
  :super ros::object
  :slots (_mode ))

(defmethod perception_msgs::GlobalMapRequest
  (:init
   (&key
    ((:mode __mode) 0)
    )
   (send-super :init)
   (setq _mode (round __mode))
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:serialization-length
   ()
   (+
    ;; int32 _mode
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _mode
       (write-long _mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _mode
     (setq _mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass perception_msgs::GlobalMapResponse
  :super ros::object
  :slots (_map ))

(defmethod perception_msgs::GlobalMapResponse
  (:init
   (&key
    ((:map __map) (instance perception_msgs::Map :init))
    )
   (send-super :init)
   (setq _map __map)
   self)
  (:map
   (&rest __map)
   (if (keywordp (car __map))
       (send* _map __map)
     (progn
       (if __map (setq _map (car __map)))
       _map)))
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Map _map
    (send _map :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Map _map
       (send _map :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Map _map
     (send _map :deserialize buf ptr-) (incf ptr- (send _map :serialization-length))
   ;;
   self)
  )

(defclass perception_msgs::GlobalMap
  :super ros::object
  :slots ())

(setf (get perception_msgs::GlobalMap :md5sum-) "d26fdf98f211670f5a52fac3522681f7")
(setf (get perception_msgs::GlobalMap :datatype-) "perception_msgs/GlobalMap")
(setf (get perception_msgs::GlobalMap :request) perception_msgs::GlobalMapRequest)
(setf (get perception_msgs::GlobalMap :response) perception_msgs::GlobalMapResponse)

(defmethod perception_msgs::GlobalMapRequest
  (:response () (instance perception_msgs::GlobalMapResponse :init)))

(setf (get perception_msgs::GlobalMapRequest :md5sum-) "d26fdf98f211670f5a52fac3522681f7")
(setf (get perception_msgs::GlobalMapRequest :datatype-) "perception_msgs/GlobalMapRequest")
(setf (get perception_msgs::GlobalMapRequest :definition-)
      "int32 mode
---
perception_msgs/Map map


================================================================================
MSG: perception_msgs/Map
#############################
###       SunHao          ###
#############################


std_msgs/Header header

geometry_msgs/Point origin_utm_pt

perception_msgs/Section[] sections

std_msgs/String uuid

int32 id
# -1 : closed map
# 0 : simple map
# 1: topo map
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: perception_msgs/Section
#############################
###       SunHao          ###
#############################



perception_msgs/Line[] lanes

int32 direction_mode

#############################
#int32 id
std_msgs/String uuid

#############################

std_msgs/String[] to_section_uuid
std_msgs/String[] from_section_uuid


std_msgs/String[] to_lane_uuid
std_msgs/String[] from_lane_uuid


std_msgs/String[] to_pt_uuid
std_msgs/String[] from_pt_uuid

#int32[] to_pt_id
#int32[] from_pt_id

#############################

float32 length
float32 highest_speed
float32 traffic_cost



================================================================================
MSG: perception_msgs/Line
#############################
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

(setf (get perception_msgs::GlobalMapResponse :md5sum-) "d26fdf98f211670f5a52fac3522681f7")
(setf (get perception_msgs::GlobalMapResponse :datatype-) "perception_msgs/GlobalMapResponse")
(setf (get perception_msgs::GlobalMapResponse :definition-)
      "int32 mode
---
perception_msgs/Map map


================================================================================
MSG: perception_msgs/Map
#############################
###       SunHao          ###
#############################


std_msgs/Header header

geometry_msgs/Point origin_utm_pt

perception_msgs/Section[] sections

std_msgs/String uuid

int32 id
# -1 : closed map
# 0 : simple map
# 1: topo map
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: perception_msgs/Section
#############################
###       SunHao          ###
#############################



perception_msgs/Line[] lanes

int32 direction_mode

#############################
#int32 id
std_msgs/String uuid

#############################

std_msgs/String[] to_section_uuid
std_msgs/String[] from_section_uuid


std_msgs/String[] to_lane_uuid
std_msgs/String[] from_lane_uuid


std_msgs/String[] to_pt_uuid
std_msgs/String[] from_pt_uuid

#int32[] to_pt_id
#int32[] from_pt_id

#############################

float32 length
float32 highest_speed
float32 traffic_cost



================================================================================
MSG: perception_msgs/Line
#############################
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



(provide :perception_msgs/GlobalMap "d26fdf98f211670f5a52fac3522681f7")


