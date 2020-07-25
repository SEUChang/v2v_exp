;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::decisionbehavior)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'decisionbehavior (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::DECISIONBEHAVIOR")
  (make-package "COMMON_MSGS::DECISIONBEHAVIOR"))

(in-package "ROS")
;;//! \htmlinclude decisionbehavior.msg.html


(defclass common_msgs::decisionbehavior
  :super ros::object
  :slots (_drivebehavior _obs _isvalid _turnlights _laneblock _adjustspeed _timestamp ))

(defmethod common_msgs::decisionbehavior
  (:init
   (&key
    ((:drivebehavior __drivebehavior) 0)
    ((:obs __obs) (let (r) (dotimes (i 0) (push (instance common_msgs::sensorobject :init) r)) r))
    ((:isvalid __isvalid) 0)
    ((:turnlights __turnlights) 0)
    ((:laneblock __laneblock) 0)
    ((:adjustspeed __adjustspeed) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _drivebehavior (round __drivebehavior))
   (setq _obs __obs)
   (setq _isvalid (round __isvalid))
   (setq _turnlights (round __turnlights))
   (setq _laneblock (round __laneblock))
   (setq _adjustspeed (round __adjustspeed))
   (setq _timestamp (round __timestamp))
   self)
  (:drivebehavior
   (&optional __drivebehavior)
   (if __drivebehavior (setq _drivebehavior __drivebehavior)) _drivebehavior)
  (:obs
   (&rest __obs)
   (if (keywordp (car __obs))
       (send* _obs __obs)
     (progn
       (if __obs (setq _obs (car __obs)))
       _obs)))
  (:isvalid
   (&optional __isvalid)
   (if __isvalid (setq _isvalid __isvalid)) _isvalid)
  (:turnlights
   (&optional __turnlights)
   (if __turnlights (setq _turnlights __turnlights)) _turnlights)
  (:laneblock
   (&optional __laneblock)
   (if __laneblock (setq _laneblock __laneblock)) _laneblock)
  (:adjustspeed
   (&optional __adjustspeed)
   (if __adjustspeed (setq _adjustspeed __adjustspeed)) _adjustspeed)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _drivebehavior
    1
    ;; common_msgs/sensorobject[] _obs
    (apply #'+ (send-all _obs :serialization-length)) 4
    ;; uint8 _isvalid
    1
    ;; uint8 _turnlights
    1
    ;; uint8 _laneblock
    1
    ;; uint8 _adjustspeed
    1
    ;; int64 _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _drivebehavior
       (write-byte _drivebehavior s)
     ;; common_msgs/sensorobject[] _obs
     (write-long (length _obs) s)
     (dolist (elem _obs)
       (send elem :serialize s)
       )
     ;; uint8 _isvalid
       (write-byte _isvalid s)
     ;; uint8 _turnlights
       (write-byte _turnlights s)
     ;; uint8 _laneblock
       (write-byte _laneblock s)
     ;; uint8 _adjustspeed
       (write-byte _adjustspeed s)
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
   ;; uint8 _drivebehavior
     (setq _drivebehavior (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; common_msgs/sensorobject[] _obs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs (let (r) (dotimes (i n) (push (instance common_msgs::sensorobject :init) r)) r))
     (dolist (elem- _obs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _isvalid
     (setq _isvalid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _turnlights
     (setq _turnlights (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _laneblock
     (setq _laneblock (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _adjustspeed
     (setq _adjustspeed (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get common_msgs::decisionbehavior :md5sum-) "39bd5187cf8d5459e943d2531dd4d87e")
(setf (get common_msgs::decisionbehavior :datatype-) "common_msgs/decisionbehavior")
(setf (get common_msgs::decisionbehavior :definition-)
      "uint8 drivebehavior   #驾驶行为
sensorobject[] obs    #障碍物
uint8 isvalid         #有效位
uint8 turnlights      #转向灯
uint8 laneblock
uint8 adjustspeed     #调整速度　１　调整　０　不变
int64 timestamp       #时间戳
================================================================================
MSG: common_msgs/sensorobject
uint8   id                     #跟踪的ID
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



(provide :common_msgs/decisionbehavior "39bd5187cf8d5459e943d2531dd4d87e")


