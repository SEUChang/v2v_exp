;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::PtLocalization)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'PtLocalization (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::PTLOCALIZATION")
  (make-package "PERCEPTION_MSGS::PTLOCALIZATION"))
(unless (find-package "PERCEPTION_MSGS::PTLOCALIZATIONREQUEST")
  (make-package "PERCEPTION_MSGS::PTLOCALIZATIONREQUEST"))
(unless (find-package "PERCEPTION_MSGS::PTLOCALIZATIONRESPONSE")
  (make-package "PERCEPTION_MSGS::PTLOCALIZATIONRESPONSE"))

(in-package "ROS")





(defclass perception_msgs::PtLocalizationRequest
  :super ros::object
  :slots (_pt ))

(defmethod perception_msgs::PtLocalizationRequest
  (:init
   (&key
    ((:pt __pt) (instance perception_msgs::Point :init))
    )
   (send-super :init)
   (setq _pt __pt)
   self)
  (:pt
   (&rest __pt)
   (if (keywordp (car __pt))
       (send* _pt __pt)
     (progn
       (if __pt (setq _pt (car __pt)))
       _pt)))
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Point _pt
    (send _pt :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Point _pt
       (send _pt :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Point _pt
     (send _pt :deserialize buf ptr-) (incf ptr- (send _pt :serialization-length))
   ;;
   self)
  )

(defclass perception_msgs::PtLocalizationResponse
  :super ros::object
  :slots (_s _l _p ))

(defmethod perception_msgs::PtLocalizationResponse
  (:init
   (&key
    ((:s __s) 0)
    ((:l __l) 0)
    ((:p __p) 0)
    )
   (send-super :init)
   (setq _s (round __s))
   (setq _l (round __l))
   (setq _p (round __p))
   self)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:l
   (&optional __l)
   (if __l (setq _l __l)) _l)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:serialization-length
   ()
   (+
    ;; int32 _s
    4
    ;; int32 _l
    4
    ;; int32 _p
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _s
       (write-long _s s)
     ;; int32 _l
       (write-long _l s)
     ;; int32 _p
       (write-long _p s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _s
     (setq _s (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _l
     (setq _l (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _p
     (setq _p (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass perception_msgs::PtLocalization
  :super ros::object
  :slots ())

(setf (get perception_msgs::PtLocalization :md5sum-) "8aef997f06107575271338a7eeacbecc")
(setf (get perception_msgs::PtLocalization :datatype-) "perception_msgs/PtLocalization")
(setf (get perception_msgs::PtLocalization :request) perception_msgs::PtLocalizationRequest)
(setf (get perception_msgs::PtLocalization :response) perception_msgs::PtLocalizationResponse)

(defmethod perception_msgs::PtLocalizationRequest
  (:response () (instance perception_msgs::PtLocalizationResponse :init)))

(setf (get perception_msgs::PtLocalizationRequest :md5sum-) "8aef997f06107575271338a7eeacbecc")
(setf (get perception_msgs::PtLocalizationRequest :datatype-) "perception_msgs/PtLocalizationRequest")
(setf (get perception_msgs::PtLocalizationRequest :definition-)
      "perception_msgs/Point pt

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
int32 s
int32 l
int32 p
")

(setf (get perception_msgs::PtLocalizationResponse :md5sum-) "8aef997f06107575271338a7eeacbecc")
(setf (get perception_msgs::PtLocalizationResponse :datatype-) "perception_msgs/PtLocalizationResponse")
(setf (get perception_msgs::PtLocalizationResponse :definition-)
      "perception_msgs/Point pt

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
int32 s
int32 l
int32 p
")



(provide :perception_msgs/PtLocalization "8aef997f06107575271338a7eeacbecc")


