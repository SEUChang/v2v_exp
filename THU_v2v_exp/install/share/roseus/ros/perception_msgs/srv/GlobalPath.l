;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::GlobalPath)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'GlobalPath (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::GLOBALPATH")
  (make-package "PERCEPTION_MSGS::GLOBALPATH"))
(unless (find-package "PERCEPTION_MSGS::GLOBALPATHREQUEST")
  (make-package "PERCEPTION_MSGS::GLOBALPATHREQUEST"))
(unless (find-package "PERCEPTION_MSGS::GLOBALPATHRESPONSE")
  (make-package "PERCEPTION_MSGS::GLOBALPATHRESPONSE"))

(in-package "ROS")





(defclass perception_msgs::GlobalPathRequest
  :super ros::object
  :slots (_start_pt _goal_pt _type ))

(defmethod perception_msgs::GlobalPathRequest
  (:init
   (&key
    ((:start_pt __start_pt) (instance perception_msgs::Point :init))
    ((:goal_pt __goal_pt) (instance perception_msgs::Point :init))
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _start_pt __start_pt)
   (setq _goal_pt __goal_pt)
   (setq _type (round __type))
   self)
  (:start_pt
   (&rest __start_pt)
   (if (keywordp (car __start_pt))
       (send* _start_pt __start_pt)
     (progn
       (if __start_pt (setq _start_pt (car __start_pt)))
       _start_pt)))
  (:goal_pt
   (&rest __goal_pt)
   (if (keywordp (car __goal_pt))
       (send* _goal_pt __goal_pt)
     (progn
       (if __goal_pt (setq _goal_pt (car __goal_pt)))
       _goal_pt)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Point _start_pt
    (send _start_pt :serialization-length)
    ;; perception_msgs/Point _goal_pt
    (send _goal_pt :serialization-length)
    ;; int32 _type
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Point _start_pt
       (send _start_pt :serialize s)
     ;; perception_msgs/Point _goal_pt
       (send _goal_pt :serialize s)
     ;; int32 _type
       (write-long _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Point _start_pt
     (send _start_pt :deserialize buf ptr-) (incf ptr- (send _start_pt :serialization-length))
   ;; perception_msgs/Point _goal_pt
     (send _goal_pt :deserialize buf ptr-) (incf ptr- (send _goal_pt :serialization-length))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass perception_msgs::GlobalPathResponse
  :super ros::object
  :slots (_path ))

(defmethod perception_msgs::GlobalPathResponse
  (:init
   (&key
    ((:path __path) (instance perception_msgs::GlobalPathIndex :init))
    )
   (send-super :init)
   (setq _path __path)
   self)
  (:path
   (&rest __path)
   (if (keywordp (car __path))
       (send* _path __path)
     (progn
       (if __path (setq _path (car __path)))
       _path)))
  (:serialization-length
   ()
   (+
    ;; perception_msgs/GlobalPathIndex _path
    (send _path :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/GlobalPathIndex _path
       (send _path :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/GlobalPathIndex _path
     (send _path :deserialize buf ptr-) (incf ptr- (send _path :serialization-length))
   ;;
   self)
  )

(defclass perception_msgs::GlobalPath
  :super ros::object
  :slots ())

(setf (get perception_msgs::GlobalPath :md5sum-) "7837730f008be57270344a16d5aaa53d")
(setf (get perception_msgs::GlobalPath :datatype-) "perception_msgs/GlobalPath")
(setf (get perception_msgs::GlobalPath :request) perception_msgs::GlobalPathRequest)
(setf (get perception_msgs::GlobalPath :response) perception_msgs::GlobalPathResponse)

(defmethod perception_msgs::GlobalPathRequest
  (:response () (instance perception_msgs::GlobalPathResponse :init)))

(setf (get perception_msgs::GlobalPathRequest :md5sum-) "7837730f008be57270344a16d5aaa53d")
(setf (get perception_msgs::GlobalPathRequest :datatype-) "perception_msgs/GlobalPathRequest")
(setf (get perception_msgs::GlobalPathRequest :definition-)
      "perception_msgs/Point start_pt
perception_msgs/Point goal_pt
int32 type

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
---
perception_msgs/GlobalPathIndex path

================================================================================
MSG: perception_msgs/GlobalPathIndex
#############################
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

(setf (get perception_msgs::GlobalPathResponse :md5sum-) "7837730f008be57270344a16d5aaa53d")
(setf (get perception_msgs::GlobalPathResponse :datatype-) "perception_msgs/GlobalPathResponse")
(setf (get perception_msgs::GlobalPathResponse :definition-)
      "perception_msgs/Point start_pt
perception_msgs/Point goal_pt
int32 type

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
---
perception_msgs/GlobalPathIndex path

================================================================================
MSG: perception_msgs/GlobalPathIndex
#############################
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



(provide :perception_msgs/GlobalPath "7837730f008be57270344a16d5aaa53d")


