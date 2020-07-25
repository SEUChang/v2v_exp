;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Section)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Section (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::SECTION")
  (make-package "PERCEPTION_MSGS::SECTION"))

(in-package "ROS")
;;//! \htmlinclude Section.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::Section
  :super ros::object
  :slots (_lanes _direction_mode _uuid _to_section_uuid _from_section_uuid _to_lane_uuid _from_lane_uuid _to_pt_uuid _from_pt_uuid _length _highest_speed _traffic_cost ))

(defmethod perception_msgs::Section
  (:init
   (&key
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance perception_msgs::Line :init) r)) r))
    ((:direction_mode __direction_mode) 0)
    ((:uuid __uuid) (instance std_msgs::String :init))
    ((:to_section_uuid __to_section_uuid) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:from_section_uuid __from_section_uuid) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:to_lane_uuid __to_lane_uuid) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:from_lane_uuid __from_lane_uuid) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:to_pt_uuid __to_pt_uuid) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:from_pt_uuid __from_pt_uuid) (let (r) (dotimes (i 0) (push (instance std_msgs::String :init) r)) r))
    ((:length __length) 0.0)
    ((:highest_speed __highest_speed) 0.0)
    ((:traffic_cost __traffic_cost) 0.0)
    )
   (send-super :init)
   (setq _lanes __lanes)
   (setq _direction_mode (round __direction_mode))
   (setq _uuid __uuid)
   (setq _to_section_uuid __to_section_uuid)
   (setq _from_section_uuid __from_section_uuid)
   (setq _to_lane_uuid __to_lane_uuid)
   (setq _from_lane_uuid __from_lane_uuid)
   (setq _to_pt_uuid __to_pt_uuid)
   (setq _from_pt_uuid __from_pt_uuid)
   (setq _length (float __length))
   (setq _highest_speed (float __highest_speed))
   (setq _traffic_cost (float __traffic_cost))
   self)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:direction_mode
   (&optional __direction_mode)
   (if __direction_mode (setq _direction_mode __direction_mode)) _direction_mode)
  (:uuid
   (&rest __uuid)
   (if (keywordp (car __uuid))
       (send* _uuid __uuid)
     (progn
       (if __uuid (setq _uuid (car __uuid)))
       _uuid)))
  (:to_section_uuid
   (&rest __to_section_uuid)
   (if (keywordp (car __to_section_uuid))
       (send* _to_section_uuid __to_section_uuid)
     (progn
       (if __to_section_uuid (setq _to_section_uuid (car __to_section_uuid)))
       _to_section_uuid)))
  (:from_section_uuid
   (&rest __from_section_uuid)
   (if (keywordp (car __from_section_uuid))
       (send* _from_section_uuid __from_section_uuid)
     (progn
       (if __from_section_uuid (setq _from_section_uuid (car __from_section_uuid)))
       _from_section_uuid)))
  (:to_lane_uuid
   (&rest __to_lane_uuid)
   (if (keywordp (car __to_lane_uuid))
       (send* _to_lane_uuid __to_lane_uuid)
     (progn
       (if __to_lane_uuid (setq _to_lane_uuid (car __to_lane_uuid)))
       _to_lane_uuid)))
  (:from_lane_uuid
   (&rest __from_lane_uuid)
   (if (keywordp (car __from_lane_uuid))
       (send* _from_lane_uuid __from_lane_uuid)
     (progn
       (if __from_lane_uuid (setq _from_lane_uuid (car __from_lane_uuid)))
       _from_lane_uuid)))
  (:to_pt_uuid
   (&rest __to_pt_uuid)
   (if (keywordp (car __to_pt_uuid))
       (send* _to_pt_uuid __to_pt_uuid)
     (progn
       (if __to_pt_uuid (setq _to_pt_uuid (car __to_pt_uuid)))
       _to_pt_uuid)))
  (:from_pt_uuid
   (&rest __from_pt_uuid)
   (if (keywordp (car __from_pt_uuid))
       (send* _from_pt_uuid __from_pt_uuid)
     (progn
       (if __from_pt_uuid (setq _from_pt_uuid (car __from_pt_uuid)))
       _from_pt_uuid)))
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:highest_speed
   (&optional __highest_speed)
   (if __highest_speed (setq _highest_speed __highest_speed)) _highest_speed)
  (:traffic_cost
   (&optional __traffic_cost)
   (if __traffic_cost (setq _traffic_cost __traffic_cost)) _traffic_cost)
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Line[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ;; int32 _direction_mode
    4
    ;; std_msgs/String _uuid
    (send _uuid :serialization-length)
    ;; std_msgs/String[] _to_section_uuid
    (apply #'+ (send-all _to_section_uuid :serialization-length)) 4
    ;; std_msgs/String[] _from_section_uuid
    (apply #'+ (send-all _from_section_uuid :serialization-length)) 4
    ;; std_msgs/String[] _to_lane_uuid
    (apply #'+ (send-all _to_lane_uuid :serialization-length)) 4
    ;; std_msgs/String[] _from_lane_uuid
    (apply #'+ (send-all _from_lane_uuid :serialization-length)) 4
    ;; std_msgs/String[] _to_pt_uuid
    (apply #'+ (send-all _to_pt_uuid :serialization-length)) 4
    ;; std_msgs/String[] _from_pt_uuid
    (apply #'+ (send-all _from_pt_uuid :serialization-length)) 4
    ;; float32 _length
    4
    ;; float32 _highest_speed
    4
    ;; float32 _traffic_cost
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Line[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;; int32 _direction_mode
       (write-long _direction_mode s)
     ;; std_msgs/String _uuid
       (send _uuid :serialize s)
     ;; std_msgs/String[] _to_section_uuid
     (write-long (length _to_section_uuid) s)
     (dolist (elem _to_section_uuid)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _from_section_uuid
     (write-long (length _from_section_uuid) s)
     (dolist (elem _from_section_uuid)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _to_lane_uuid
     (write-long (length _to_lane_uuid) s)
     (dolist (elem _to_lane_uuid)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _from_lane_uuid
     (write-long (length _from_lane_uuid) s)
     (dolist (elem _from_lane_uuid)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _to_pt_uuid
     (write-long (length _to_pt_uuid) s)
     (dolist (elem _to_pt_uuid)
       (send elem :serialize s)
       )
     ;; std_msgs/String[] _from_pt_uuid
     (write-long (length _from_pt_uuid) s)
     (dolist (elem _from_pt_uuid)
       (send elem :serialize s)
       )
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _highest_speed
       (sys::poke _highest_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _traffic_cost
       (sys::poke _traffic_cost (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Line[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance perception_msgs::Line :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _direction_mode
     (setq _direction_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; std_msgs/String _uuid
     (send _uuid :deserialize buf ptr-) (incf ptr- (send _uuid :serialization-length))
   ;; std_msgs/String[] _to_section_uuid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _to_section_uuid (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _to_section_uuid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String[] _from_section_uuid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _from_section_uuid (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _from_section_uuid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String[] _to_lane_uuid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _to_lane_uuid (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _to_lane_uuid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String[] _from_lane_uuid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _from_lane_uuid (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _from_lane_uuid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String[] _to_pt_uuid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _to_pt_uuid (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _to_pt_uuid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; std_msgs/String[] _from_pt_uuid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _from_pt_uuid (let (r) (dotimes (i n) (push (instance std_msgs::String :init) r)) r))
     (dolist (elem- _from_pt_uuid)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _highest_speed
     (setq _highest_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _traffic_cost
     (setq _traffic_cost (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::Section :md5sum-) "6b3fd0e0d7f2e11a16dcf750a2d0177d")
(setf (get perception_msgs::Section :datatype-) "perception_msgs/Section")
(setf (get perception_msgs::Section :definition-)
      "#############################
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



(provide :perception_msgs/Section "6b3fd0e0d7f2e11a16dcf750a2d0177d")


