;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::actuator)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'actuator (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::ACTUATOR")
  (make-package "COMMON_MSGS::ACTUATOR"))

(in-package "ROS")
;;//! \htmlinclude actuator.msg.html


(defclass common_msgs::actuator
  :super ros::object
  :slots (_epsmethod _epstorque _epserror _epsangle _escbrakepress _gaspedal _sysstatus _speed _lights _turnLight _geer _epb _isvalid _timestamp ))

(defmethod common_msgs::actuator
  (:init
   (&key
    ((:epsmethod __epsmethod) 0)
    ((:epstorque __epstorque) 0)
    ((:epserror __epserror) 0)
    ((:epsangle __epsangle) 0)
    ((:escbrakepress __escbrakepress) 0)
    ((:gaspedal __gaspedal) 0)
    ((:sysstatus __sysstatus) 0)
    ((:speed __speed) 0.0)
    ((:lights __lights) 0)
    ((:turnLight __turnLight) 0)
    ((:geer __geer) 0)
    ((:epb __epb) 0)
    ((:isvalid __isvalid) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _epsmethod (round __epsmethod))
   (setq _epstorque (round __epstorque))
   (setq _epserror (round __epserror))
   (setq _epsangle (round __epsangle))
   (setq _escbrakepress (round __escbrakepress))
   (setq _gaspedal (round __gaspedal))
   (setq _sysstatus (round __sysstatus))
   (setq _speed (float __speed))
   (setq _lights (round __lights))
   (setq _turnLight (round __turnLight))
   (setq _geer (round __geer))
   (setq _epb (round __epb))
   (setq _isvalid (round __isvalid))
   (setq _timestamp (round __timestamp))
   self)
  (:epsmethod
   (&optional __epsmethod)
   (if __epsmethod (setq _epsmethod __epsmethod)) _epsmethod)
  (:epstorque
   (&optional __epstorque)
   (if __epstorque (setq _epstorque __epstorque)) _epstorque)
  (:epserror
   (&optional __epserror)
   (if __epserror (setq _epserror __epserror)) _epserror)
  (:epsangle
   (&optional __epsangle)
   (if __epsangle (setq _epsangle __epsangle)) _epsangle)
  (:escbrakepress
   (&optional __escbrakepress)
   (if __escbrakepress (setq _escbrakepress __escbrakepress)) _escbrakepress)
  (:gaspedal
   (&optional __gaspedal)
   (if __gaspedal (setq _gaspedal __gaspedal)) _gaspedal)
  (:sysstatus
   (&optional __sysstatus)
   (if __sysstatus (setq _sysstatus __sysstatus)) _sysstatus)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:lights
   (&optional __lights)
   (if __lights (setq _lights __lights)) _lights)
  (:turnLight
   (&optional __turnLight)
   (if __turnLight (setq _turnLight __turnLight)) _turnLight)
  (:geer
   (&optional __geer)
   (if __geer (setq _geer __geer)) _geer)
  (:epb
   (&optional __epb)
   (if __epb (setq _epb __epb)) _epb)
  (:isvalid
   (&optional __isvalid)
   (if __isvalid (setq _isvalid __isvalid)) _isvalid)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _epsmethod
    1
    ;; uint8 _epstorque
    1
    ;; uint8 _epserror
    1
    ;; int16 _epsangle
    2
    ;; uint8 _escbrakepress
    1
    ;; uint8 _gaspedal
    1
    ;; uint8 _sysstatus
    1
    ;; float32 _speed
    4
    ;; uint8 _lights
    1
    ;; uint8 _turnLight
    1
    ;; uint8 _geer
    1
    ;; uint8 _epb
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
     ;; uint8 _epsmethod
       (write-byte _epsmethod s)
     ;; uint8 _epstorque
       (write-byte _epstorque s)
     ;; uint8 _epserror
       (write-byte _epserror s)
     ;; int16 _epsangle
       (write-word _epsangle s)
     ;; uint8 _escbrakepress
       (write-byte _escbrakepress s)
     ;; uint8 _gaspedal
       (write-byte _gaspedal s)
     ;; uint8 _sysstatus
       (write-byte _sysstatus s)
     ;; float32 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _lights
       (write-byte _lights s)
     ;; uint8 _turnLight
       (write-byte _turnLight s)
     ;; uint8 _geer
       (write-byte _geer s)
     ;; uint8 _epb
       (write-byte _epb s)
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
   ;; uint8 _epsmethod
     (setq _epsmethod (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _epstorque
     (setq _epstorque (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _epserror
     (setq _epserror (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _epsangle
     (setq _epsangle (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _escbrakepress
     (setq _escbrakepress (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gaspedal
     (setq _gaspedal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sysstatus
     (setq _sysstatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed
     (setq _speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _lights
     (setq _lights (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _turnLight
     (setq _turnLight (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _geer
     (setq _geer (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _epb
     (setq _epb (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get common_msgs::actuator :md5sum-) "f5ae8b7fd4f1392f2d669cd9134bb652")
(setf (get common_msgs::actuator :datatype-) "common_msgs/actuator")
(setf (get common_msgs::actuator :definition-)
      "uint8 epsmethod          #方向盘模式位
uint8 epstorque          #方向盘扭矩
uint8 epserror           #方向盘故障码
int16 epsangle           #放向盘角度
uint8 escbrakepress      #刹车压力
uint8 gaspedal           #油门开度
uint8 sysstatus          #系统状态
float32 speed              #车速
uint8 lights             #灯光
uint8 turnLight
uint8 geer
uint8 epb
uint8 isvalid            #有效位
int64 timestamp          #时间戳
")



(provide :common_msgs/actuator "f5ae8b7fd4f1392f2d669cd9134bb652")


