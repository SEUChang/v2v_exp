;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::trajectorypoints)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'trajectorypoints (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::TRAJECTORYPOINTS")
  (make-package "COMMON_MSGS::TRAJECTORYPOINTS"))

(in-package "ROS")
;;//! \htmlinclude trajectorypoints.msg.html


(defclass common_msgs::trajectorypoints
  :super ros::object
  :slots (_points _source _isvalid _timestamp ))

(defmethod common_msgs::trajectorypoints
  (:init
   (&key
    ((:points __points) (let (r) (dotimes (i 0) (push (instance common_msgs::roadpoint :init) r)) r))
    ((:source __source) 0)
    ((:isvalid __isvalid) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _points __points)
   (setq _source (round __source))
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
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
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
    ;; uint8 _source
    1
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
     ;; uint8 _source
       (write-byte _source s)
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
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get common_msgs::trajectorypoints :md5sum-) "cfaabbf8c8417d8085a59ee8759b9a8c")
(setf (get common_msgs::trajectorypoints :datatype-) "common_msgs/trajectorypoints")
(setf (get common_msgs::trajectorypoints :definition-)
      "roadpoint[] points  #轨迹点
uint8 source        #source from where                                       
uint8 isvalid       #有效位
int64 timestamp     #时间戳
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



(provide :common_msgs/trajectorypoints "cfaabbf8c8417d8085a59ee8759b9a8c")


