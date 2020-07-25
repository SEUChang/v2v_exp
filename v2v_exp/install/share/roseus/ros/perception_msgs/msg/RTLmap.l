;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::RTLmap)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'RTLmap (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::RTLMAP")
  (make-package "PERCEPTION_MSGS::RTLMAP"))

(in-package "ROS")
;;//! \htmlinclude RTLmap.msg.html


(defclass perception_msgs::RTLmap
  :super ros::object
  :slots (_occ_grid _grid_obs ))

(defmethod perception_msgs::RTLmap
  (:init
   (&key
    ((:occ_grid __occ_grid) (instance perception_msgs::ObsOccGrid :init))
    ((:grid_obs __grid_obs) (instance perception_msgs::GridObs :init))
    )
   (send-super :init)
   (setq _occ_grid __occ_grid)
   (setq _grid_obs __grid_obs)
   self)
  (:occ_grid
   (&rest __occ_grid)
   (if (keywordp (car __occ_grid))
       (send* _occ_grid __occ_grid)
     (progn
       (if __occ_grid (setq _occ_grid (car __occ_grid)))
       _occ_grid)))
  (:grid_obs
   (&rest __grid_obs)
   (if (keywordp (car __grid_obs))
       (send* _grid_obs __grid_obs)
     (progn
       (if __grid_obs (setq _grid_obs (car __grid_obs)))
       _grid_obs)))
  (:serialization-length
   ()
   (+
    ;; perception_msgs/ObsOccGrid _occ_grid
    (send _occ_grid :serialization-length)
    ;; perception_msgs/GridObs _grid_obs
    (send _grid_obs :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/ObsOccGrid _occ_grid
       (send _occ_grid :serialize s)
     ;; perception_msgs/GridObs _grid_obs
       (send _grid_obs :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/ObsOccGrid _occ_grid
     (send _occ_grid :deserialize buf ptr-) (incf ptr- (send _occ_grid :serialization-length))
   ;; perception_msgs/GridObs _grid_obs
     (send _grid_obs :deserialize buf ptr-) (incf ptr- (send _grid_obs :serialization-length))
   ;;
   self)
  )

(setf (get perception_msgs::RTLmap :md5sum-) "cad5159f0957a62d993fb789a686586c")
(setf (get perception_msgs::RTLmap :datatype-) "perception_msgs/RTLmap")
(setf (get perception_msgs::RTLmap :definition-)
      "#############################
###       SunHao          ###
#############################

# traditional #
perception_msgs/ObsOccGrid occ_grid

##  better  ##
perception_msgs/GridObs grid_obs
================================================================================
MSG: perception_msgs/ObsOccGrid
#################

std_msgs/Header header

int8[] occ
float32 gird_size
int32 col_num
int32 row_num

float32 x0
float32 y0


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
MSG: perception_msgs/GridObs

###

perception_msgs/Object[] obs
float32 grid_size
###
================================================================================
MSG: perception_msgs/Object
#
#


perception_msgs/Pt[] Pts

int8 id
int8 type

float64  relative_dir
float64  relative_speed


###  add gridcells info  ###



================================================================================
MSG: perception_msgs/Pt
####
###


float32 x
float32 y

")



(provide :perception_msgs/RTLmap "cad5159f0957a62d993fb789a686586c")


