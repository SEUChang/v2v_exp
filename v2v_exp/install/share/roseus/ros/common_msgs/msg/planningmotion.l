;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::planningmotion)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'planningmotion (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::PLANNINGMOTION")
  (make-package "COMMON_MSGS::PLANNINGMOTION"))

(in-package "ROS")
;;//! \htmlinclude planningmotion.msg.html


(defclass common_msgs::planningmotion
  :super ros::object
  :slots (_points _guidespeed _guideangle _changelanedis _isvalid _timestamp ))

(defmethod common_msgs::planningmotion
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance common_msgs::roadpoint :init) r)) r))
    ((:guidespeed __guidespeed) 0.0)
    ((:guideangle __guideangle) 0.0)
    ((:changelanedis __changelanedis) 0.0)
    ((:isvalid __isvalid) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _points __points)
   (setq _guidespeed (float __guidespeed))
   (setq _guideangle (float __guideangle))
   (setq _changelanedis (float __changelanedis))
   (setq _isvalid (round __isvalid))
   (setq _timestamp (round __timestamp))
   self)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:guidespeed
   (&optional __guidespeed)
   (if __guidespeed (setq _guidespeed __guidespeed)) _guidespeed)
  (:guideangle
   (&optional __guideangle)
   (if __guideangle (setq _guideangle __guideangle)) _guideangle)
  (:changelanedis
   (&optional __changelanedis)
   (if __changelanedis (setq _changelanedis __changelanedis)) _changelanedis)
  (:isvalid
   (&optional __isvalid)
   (if __isvalid (setq _isvalid __isvalid)) _isvalid)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; common_msgs/roadpoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ;; float32 _guidespeed
    4
    ;; float32 _guideangle
    4
    ;; float32 _changelanedis
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
     ;; common_msgs/roadpoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;; float32 _guidespeed
       (sys::poke _guidespeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _guideangle
       (sys::poke _guideangle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _changelanedis
       (sys::poke _changelanedis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; common_msgs/roadpoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance common_msgs::roadpoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32 _guidespeed
     (setq _guidespeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _guideangle
     (setq _guideangle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _changelanedis
     (setq _changelanedis (sys::peek buf ptr- :float)) (incf ptr- 4)
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

(setf (get common_msgs::planningmotion :md5sum-) "60c4de7218f80a33e433e83c3d8c4fcb")
(setf (get common_msgs::planningmotion :datatype-) "common_msgs/planningmotion")
(setf (get common_msgs::planningmotion :definition-)
      "roadpoint[] points   #轨迹点
float32 guidespeed   #指导速度 m/s
float32 guideangle
float32 changelanedis
uint8  isvalid
int64 timestamp
================================================================================
MSG: common_msgs/roadpoint
int16 x                  #局部横坐标   cm
int16 y                  #局部纵坐标   cm
int32 gx                 #全局横坐标   cm
int32 gy                 #全局纵坐标   cm
uint8 roadtype           #道路属性
uint8 lanetype           #当前车道|总车道(4|4)
float32 heading          #heading
float32 curvature
")



(provide :common_msgs/planningmotion "60c4de7218f80a33e433e83c3d8c4fcb")


