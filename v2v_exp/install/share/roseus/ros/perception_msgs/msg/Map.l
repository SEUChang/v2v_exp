;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Map)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Map (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::MAP")
  (make-package "PERCEPTION_MSGS::MAP"))

(in-package "ROS")
;;//! \htmlinclude Map.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::Map
  :super ros::object
  :slots (_header _origin_utm_pt _sections _uuid _id ))

(defmethod perception_msgs::Map
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:origin_utm_pt __origin_utm_pt) (instance geometry_msgs::Point :init))
    ((:sections __sections) (let (r) (dotimes (i 0) (push (instance perception_msgs::Section :init) r)) r))
    ((:uuid __uuid) (instance std_msgs::String :init))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _origin_utm_pt __origin_utm_pt)
   (setq _sections __sections)
   (setq _uuid __uuid)
   (setq _id (round __id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:origin_utm_pt
   (&rest __origin_utm_pt)
   (if (keywordp (car __origin_utm_pt))
       (send* _origin_utm_pt __origin_utm_pt)
     (progn
       (if __origin_utm_pt (setq _origin_utm_pt (car __origin_utm_pt)))
       _origin_utm_pt)))
  (:sections
   (&rest __sections)
   (if (keywordp (car __sections))
       (send* _sections __sections)
     (progn
       (if __sections (setq _sections (car __sections)))
       _sections)))
  (:uuid
   (&rest __uuid)
   (if (keywordp (car __uuid))
       (send* _uuid __uuid)
     (progn
       (if __uuid (setq _uuid (car __uuid)))
       _uuid)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point _origin_utm_pt
    (send _origin_utm_pt :serialization-length)
    ;; perception_msgs/Section[] _sections
    (apply #'+ (send-all _sections :serialization-length)) 4
    ;; std_msgs/String _uuid
    (send _uuid :serialization-length)
    ;; int32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point _origin_utm_pt
       (send _origin_utm_pt :serialize s)
     ;; perception_msgs/Section[] _sections
     (write-long (length _sections) s)
     (dolist (elem _sections)
       (send elem :serialize s)
       )
     ;; std_msgs/String _uuid
       (send _uuid :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Point _origin_utm_pt
     (send _origin_utm_pt :deserialize buf ptr-) (incf ptr- (send _origin_utm_pt :serialization-length))
   ;; perception_msgs/Section[] _sections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sections (let (r) (dotimes (i n) (push (instance perception_msgs::Section :init) r)) r))
     (dolist (elem- _sections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String _uuid
     (send _uuid :deserialize buf ptr-) (incf ptr- (send _uuid :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::Map :md5sum-) "f311c97842ff52d6f2efb99074fbe5db")
(setf (get perception_msgs::Map :datatype-) "perception_msgs/Map")
(setf (get perception_msgs::Map :definition-)
      "#############################
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



(provide :perception_msgs/Map "f311c97842ff52d6f2efb99074fbe5db")


