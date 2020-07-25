;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::controllat)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'controllat (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::CONTROLLAT")
  (make-package "COMMON_MSGS::CONTROLLAT"))

(in-package "ROS")
;;//! \htmlinclude controllat.msg.html


(defclass common_msgs::controllat
  :super ros::object
  :slots (_epsmethod _epsangle _limitspeed _epstorque _lights _isvalid _deviation _timestamp ))

(defmethod common_msgs::controllat
  (:init
   (&key
    ((:epsmethod __epsmethod) 0)
    ((:epsangle __epsangle) 0)
    ((:limitspeed __limitspeed) 0.0)
    ((:epstorque __epstorque) 0.0)
    ((:lights __lights) 0)
    ((:isvalid __isvalid) 0)
    ((:deviation __deviation) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _epsmethod (round __epsmethod))
   (setq _epsangle (round __epsangle))
   (setq _limitspeed (float __limitspeed))
   (setq _epstorque (float __epstorque))
   (setq _lights (round __lights))
   (setq _isvalid (round __isvalid))
   (setq _deviation (round __deviation))
   (setq _timestamp (round __timestamp))
   self)
  (:epsmethod
   (&optional __epsmethod)
   (if __epsmethod (setq _epsmethod __epsmethod)) _epsmethod)
  (:epsangle
   (&optional __epsangle)
   (if __epsangle (setq _epsangle __epsangle)) _epsangle)
  (:limitspeed
   (&optional __limitspeed)
   (if __limitspeed (setq _limitspeed __limitspeed)) _limitspeed)
  (:epstorque
   (&optional __epstorque)
   (if __epstorque (setq _epstorque __epstorque)) _epstorque)
  (:lights
   (&optional __lights)
   (if __lights (setq _lights __lights)) _lights)
  (:isvalid
   (&optional __isvalid)
   (if __isvalid (setq _isvalid __isvalid)) _isvalid)
  (:deviation
   (&optional __deviation)
   (if __deviation (setq _deviation __deviation)) _deviation)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _epsmethod
    1
    ;; int16 _epsangle
    2
    ;; float32 _limitspeed
    4
    ;; float32 _epstorque
    4
    ;; uint8 _lights
    1
    ;; uint8 _isvalid
    1
    ;; int16 _deviation
    2
    ;; int64 _timestamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _epsmethod
       (write-byte _epsmethod s)
     ;; int16 _epsangle
       (write-word _epsangle s)
     ;; float32 _limitspeed
       (sys::poke _limitspeed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _epstorque
       (sys::poke _epstorque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _lights
       (write-byte _lights s)
     ;; uint8 _isvalid
       (write-byte _isvalid s)
     ;; int16 _deviation
       (write-word _deviation s)
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
   ;; uint8 _epsmethod
     (setq _epsmethod (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _epsangle
     (setq _epsangle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _limitspeed
     (setq _limitspeed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _epstorque
     (setq _epstorque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _lights
     (setq _lights (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _isvalid
     (setq _isvalid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _deviation
     (setq _deviation (sys::peek buf ptr- :short)) (incf ptr- 2)
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

(setf (get common_msgs::controllat :md5sum-) "0c1639e4c92c3d89dd4c0c14d08ef839")
(setf (get common_msgs::controllat :datatype-) "common_msgs/controllat")
(setf (get common_msgs::controllat :definition-)
      "uint8    epsmethod   #使能位
int16    epsangle    #目标角度
float32  limitspeed  #限速
float32  epstorque   #扭矩
uint8    lights      #目标灯光
uint8    isvalid     #有效位
int16    deviation   #deviation
int64    timestamp   #时间戳
")



(provide :common_msgs/controllat "0c1639e4c92c3d89dd4c0c14d08ef839")


