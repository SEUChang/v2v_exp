;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::sensorobject)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'sensorobject (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::SENSOROBJECT")
  (make-package "COMMON_MSGS::SENSOROBJECT"))

(in-package "ROS")
;;//! \htmlinclude sensorobject.msg.html


(defclass common_msgs::sensorobject
  :super ros::object
  :slots (_id _x _y _relspeedy _relspeedx _azimuth _width _length _height _classification _value _points ))

(defmethod common_msgs::sensorobject
  (:init
   (&key
    ((:id __id) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:relspeedy __relspeedy) 0.0)
    ((:relspeedx __relspeedx) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:width __width) 0.0)
    ((:length __length) 0.0)
    ((:height __height) 0.0)
    ((:classification __classification) 0)
    ((:value __value) 0)
    ((:points __points) (let (r) (dotimes (i 0) (push (instance common_msgs::point3d :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _relspeedy (float __relspeedy))
   (setq _relspeedx (float __relspeedx))
   (setq _azimuth (float __azimuth))
   (setq _width (float __width))
   (setq _length (float __length))
   (setq _height (float __height))
   (setq _classification (round __classification))
   (setq _value (round __value))
   (setq _points __points)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:relspeedy
   (&optional __relspeedy)
   (if __relspeedy (setq _relspeedy __relspeedy)) _relspeedy)
  (:relspeedx
   (&optional __relspeedx)
   (if __relspeedx (setq _relspeedx __relspeedx)) _relspeedx)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _relspeedy
    4
    ;; float32 _relspeedx
    4
    ;; float32 _azimuth
    4
    ;; float32 _width
    4
    ;; float32 _length
    4
    ;; float32 _height
    4
    ;; uint8 _classification
    1
    ;; uint8 _value
    1
    ;; common_msgs/point3d[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relspeedy
       (sys::poke _relspeedy (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _relspeedx
       (sys::poke _relspeedx (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _length
       (sys::poke _length (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _height
       (sys::poke _height (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _classification
       (write-byte _classification s)
     ;; uint8 _value
       (write-byte _value s)
     ;; common_msgs/point3d[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relspeedy
     (setq _relspeedy (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _relspeedx
     (setq _relspeedx (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _length
     (setq _length (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _height
     (setq _height (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _classification
     (setq _classification (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; common_msgs/point3d[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance common_msgs::point3d :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get common_msgs::sensorobject :md5sum-) "ad57f5cd9081dfdd52f43461a66c76f4")
(setf (get common_msgs::sensorobject :datatype-) "common_msgs/sensorobject")
(setf (get common_msgs::sensorobject :definition-)
      "uint8   id                     #跟踪的ID
float32 x                      #横坐标
float32 y                      #纵坐标
float32 relspeedy              #纵轴相对速度
float32 relspeedx              #横轴相对速度
float32 azimuth                #航向
float32 width                  #宽度
float32 length                 #长度
float32 height                 #高度
uint8   classification         #类别
uint8   value                  #置信度
point3d[] points #轮廓点数据 
================================================================================
MSG: common_msgs/point3d
float32 x
float32 y
float32 z
")



(provide :common_msgs/sensorobject "ad57f5cd9081dfdd52f43461a66c76f4")


