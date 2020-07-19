;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::ObsOccGrid)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'ObsOccGrid (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OBSOCCGRID")
  (make-package "PERCEPTION_MSGS::OBSOCCGRID"))

(in-package "ROS")
;;//! \htmlinclude ObsOccGrid.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::ObsOccGrid
  :super ros::object
  :slots (_header _occ _gird_size _col_num _row_num _x0 _y0 ))

(defmethod perception_msgs::ObsOccGrid
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:occ __occ) (make-array 0 :initial-element 0 :element-type :integer))
    ((:gird_size __gird_size) 0.0)
    ((:col_num __col_num) 0)
    ((:row_num __row_num) 0)
    ((:x0 __x0) 0.0)
    ((:y0 __y0) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _occ __occ)
   (setq _gird_size (float __gird_size))
   (setq _col_num (round __col_num))
   (setq _row_num (round __row_num))
   (setq _x0 (float __x0))
   (setq _y0 (float __y0))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:occ
   (&optional __occ)
   (if __occ (setq _occ __occ)) _occ)
  (:gird_size
   (&optional __gird_size)
   (if __gird_size (setq _gird_size __gird_size)) _gird_size)
  (:col_num
   (&optional __col_num)
   (if __col_num (setq _col_num __col_num)) _col_num)
  (:row_num
   (&optional __row_num)
   (if __row_num (setq _row_num __row_num)) _row_num)
  (:x0
   (&optional __x0)
   (if __x0 (setq _x0 __x0)) _x0)
  (:y0
   (&optional __y0)
   (if __y0 (setq _y0 __y0)) _y0)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int8[] _occ
    (* 1    (length _occ)) 4
    ;; float32 _gird_size
    4
    ;; int32 _col_num
    4
    ;; int32 _row_num
    4
    ;; float32 _x0
    4
    ;; float32 _y0
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int8[] _occ
     (write-long (length _occ) s)
     (dotimes (i (length _occ))
       (write-byte (elt _occ i) s)
       )
     ;; float32 _gird_size
       (sys::poke _gird_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _col_num
       (write-long _col_num s)
     ;; int32 _row_num
       (write-long _row_num s)
     ;; float32 _x0
       (sys::poke _x0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y0
       (sys::poke _y0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int8[] _occ
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _occ (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _occ i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _occ i) 127) (setf (elt _occ i) (- (elt _occ i) 256)))
     ))
   ;; float32 _gird_size
     (setq _gird_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _col_num
     (setq _col_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _row_num
     (setq _row_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _x0
     (setq _x0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y0
     (setq _y0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::ObsOccGrid :md5sum-) "ec189275c525cd48a9b9ba3f3290c5f6")
(setf (get perception_msgs::ObsOccGrid :datatype-) "perception_msgs/ObsOccGrid")
(setf (get perception_msgs::ObsOccGrid :definition-)
      "#################

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

")



(provide :perception_msgs/ObsOccGrid "ec189275c525cd48a9b9ba3f3290c5f6")


