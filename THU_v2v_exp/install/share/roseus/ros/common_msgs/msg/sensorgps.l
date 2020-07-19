;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::sensorgps)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'sensorgps (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::SENSORGPS")
  (make-package "COMMON_MSGS::SENSORGPS"))

(in-package "ROS")
;;//! \htmlinclude sensorgps.msg.html


(defclass common_msgs::sensorgps
  :super ros::object
  :slots (_lon _lat _roadtype _lanetype _heading _pitch _roll _velocity _status _satenum _gpstime _isvalid _timestamp ))

(defmethod common_msgs::sensorgps
  (:init
   (&key
    ((:lon __lon) 0.0)
    ((:lat __lat) 0.0)
    ((:roadtype __roadtype) 0)
    ((:lanetype __lanetype) 0)
    ((:heading __heading) 0.0)
    ((:pitch __pitch) 0.0)
    ((:roll __roll) 0.0)
    ((:velocity __velocity) 0.0)
    ((:status __status) 0)
    ((:satenum __satenum) 0)
    ((:gpstime __gpstime) 0)
    ((:isvalid __isvalid) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _lon (float __lon))
   (setq _lat (float __lat))
   (setq _roadtype (round __roadtype))
   (setq _lanetype (round __lanetype))
   (setq _heading (float __heading))
   (setq _pitch (float __pitch))
   (setq _roll (float __roll))
   (setq _velocity (float __velocity))
   (setq _status (round __status))
   (setq _satenum (round __satenum))
   (setq _gpstime (round __gpstime))
   (setq _isvalid (round __isvalid))
   (setq _timestamp (round __timestamp))
   self)
  (:lon
   (&optional __lon)
   (if __lon (setq _lon __lon)) _lon)
  (:lat
   (&optional __lat)
   (if __lat (setq _lat __lat)) _lat)
  (:roadtype
   (&optional __roadtype)
   (if __roadtype (setq _roadtype __roadtype)) _roadtype)
  (:lanetype
   (&optional __lanetype)
   (if __lanetype (setq _lanetype __lanetype)) _lanetype)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:satenum
   (&optional __satenum)
   (if __satenum (setq _satenum __satenum)) _satenum)
  (:gpstime
   (&optional __gpstime)
   (if __gpstime (setq _gpstime __gpstime)) _gpstime)
  (:isvalid
   (&optional __isvalid)
   (if __isvalid (setq _isvalid __isvalid)) _isvalid)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; float64 _lon
    8
    ;; float64 _lat
    8
    ;; uint8 _roadtype
    1
    ;; uint8 _lanetype
    1
    ;; float64 _heading
    8
    ;; float64 _pitch
    8
    ;; float64 _roll
    8
    ;; float64 _velocity
    8
    ;; uint8 _status
    1
    ;; uint8 _satenum
    1
    ;; int32 _gpstime
    4
    ;; uint8 _isvalid
    1
    ;; int64 _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lon
       (sys::poke _lon (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lat
       (sys::poke _lat (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _roadtype
       (write-byte _roadtype s)
     ;; uint8 _lanetype
       (write-byte _lanetype s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8 _satenum
       (write-byte _satenum s)
     ;; int32 _gpstime
       (write-long _gpstime s)
     ;; uint8 _isvalid
       (write-byte _isvalid s)
     ;; int64 _timestamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timestamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timestamp) (= (length (_timestamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timestamp . bv) 0) 0) s)
              (write-long (ash (elt (_timestamp . bv) 1) -1) s))
             ((and (class _timestamp) (= (length (_timestamp . bv)) 1)) ;; big1
              (write-long (elt (_timestamp . bv) 0) s)
              (write-long (if (>= _timestamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timestamp s)(write-long (if (>= _timestamp 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lon
     (setq _lon (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lat
     (setq _lat (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _roadtype
     (setq _roadtype (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lanetype
     (setq _lanetype (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _satenum
     (setq _satenum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _gpstime
     (setq _gpstime (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _isvalid
     (setq _isvalid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int64 _timestamp
#+(or :alpha :irix6 :x86_64)
      (setf _timestamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timestamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get common_msgs::sensorgps :md5sum-) "942117abbdd2207c4cfc57759afd9a93")
(setf (get common_msgs::sensorgps :datatype-) "common_msgs/sensorgps")
(setf (get common_msgs::sensorgps :definition-)
      "float64 lon          #纬度
float64 lat          #经度
uint8 roadtype       #道路属性
uint8 lanetype       #当前车道|总车道(4|4)
float64 heading      #航向角
float64 pitch        #俯仰角
float64 roll         #横滚角
float64 velocity     #速度
uint8 status         #导航状态
uint8 satenum        #卫星个数
int32 gpstime        #gps时间
uint8 isvalid        #有效位
int64 timestamp      #时间戳
")



(provide :common_msgs/sensorgps "942117abbdd2207c4cfc57759afd9a93")


