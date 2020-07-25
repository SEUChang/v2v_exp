;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::sensorobjects)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'sensorobjects (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::SENSOROBJECTS")
  (make-package "COMMON_MSGS::SENSOROBJECTS"))

(in-package "ROS")
;;//! \htmlinclude sensorobjects.msg.html


(defclass common_msgs::sensorobjects
  :super ros::object
  :slots (_obs _isvalid _timestamp ))

(defmethod common_msgs::sensorobjects
  (:init
   (&key
    ((:obs __obs) (let (r) (dotimes (i 0) (push (instance common_msgs::sensorobject :init) r)) r))
    ((:isvalid __isvalid) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _obs __obs)
   (setq _isvalid (round __isvalid))
   (setq _timestamp (round __timestamp))
   self)
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
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; common_msgs/sensorobject[] _obs
    (apply #'+ (send-all _obs :serialization-length)) 4
    ;; uint8 _isvalid
    1
    ;; int64 _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; common_msgs/sensorobject[] _obs
     (write-long (length _obs) s)
     (dolist (elem _obs)
       (send elem :serialize s)
       )
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
   ;; common_msgs/sensorobject[] _obs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _obs (let (r) (dotimes (i n) (push (instance common_msgs::sensorobject :init) r)) r))
     (dolist (elem- _obs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
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

(setf (get common_msgs::sensorobjects :md5sum-) "d4e6052190baa67cdc532443b5d99ec9")
(setf (get common_msgs::sensorobjects :datatype-) "common_msgs/sensorobjects")
(setf (get common_msgs::sensorobjects :definition-)
      "sensorobject[] obs
uint8 isvalid
int64 timestamp
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



(provide :common_msgs/sensorobjects "d4e6052190baa67cdc532443b5d99ec9")


