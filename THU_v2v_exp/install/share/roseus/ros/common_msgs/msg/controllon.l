;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::controllon)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'controllon (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::CONTROLLON")
  (make-package "COMMON_MSGS::CONTROLLON"))

(in-package "ROS")
;;//! \htmlinclude controllon.msg.html


(defclass common_msgs::controllon
  :super ros::object
  :slots (_method _pedal _mode _objdis _objrel _parkdis _isvalid _geer _timestamp _gasPedal _brakePedal _targetSpeed ))

(defmethod common_msgs::controllon
  (:init
   (&key
    ((:method __method) 0)
    ((:pedal __pedal) 0)
    ((:mode __mode) 0)
    ((:objdis __objdis) 0.0)
    ((:objrel __objrel) 0.0)
    ((:parkdis __parkdis) 0.0)
    ((:isvalid __isvalid) 0)
    ((:geer __geer) 0)
    ((:timestamp __timestamp) 0)
    ((:gasPedal __gasPedal) 0)
    ((:brakePedal __brakePedal) 0)
    ((:targetSpeed __targetSpeed) 0)
    )
   (send-super :init)
   (setq _method (round __method))
   (setq _pedal (round __pedal))
   (setq _mode (round __mode))
   (setq _objdis (float __objdis))
   (setq _objrel (float __objrel))
   (setq _parkdis (float __parkdis))
   (setq _isvalid (round __isvalid))
   (setq _geer (round __geer))
   (setq _timestamp (round __timestamp))
   (setq _gasPedal (round __gasPedal))
   (setq _brakePedal (round __brakePedal))
   (setq _targetSpeed (round __targetSpeed))
   self)
  (:method
   (&optional __method)
   (if __method (setq _method __method)) _method)
  (:pedal
   (&optional __pedal)
   (if __pedal (setq _pedal __pedal)) _pedal)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:objdis
   (&optional __objdis)
   (if __objdis (setq _objdis __objdis)) _objdis)
  (:objrel
   (&optional __objrel)
   (if __objrel (setq _objrel __objrel)) _objrel)
  (:parkdis
   (&optional __parkdis)
   (if __parkdis (setq _parkdis __parkdis)) _parkdis)
  (:isvalid
   (&optional __isvalid)
   (if __isvalid (setq _isvalid __isvalid)) _isvalid)
  (:geer
   (&optional __geer)
   (if __geer (setq _geer __geer)) _geer)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:gasPedal
   (&optional __gasPedal)
   (if __gasPedal (setq _gasPedal __gasPedal)) _gasPedal)
  (:brakePedal
   (&optional __brakePedal)
   (if __brakePedal (setq _brakePedal __brakePedal)) _brakePedal)
  (:targetSpeed
   (&optional __targetSpeed)
   (if __targetSpeed (setq _targetSpeed __targetSpeed)) _targetSpeed)
  (:serialization-length
   ()
   (+
    ;; uint8 _method
    1
    ;; int8 _pedal
    1
    ;; uint8 _mode
    1
    ;; float32 _objdis
    4
    ;; float32 _objrel
    4
    ;; float32 _parkdis
    4
    ;; uint8 _isvalid
    1
    ;; uint8 _geer
    1
    ;; int64 _timestamp
    8
    ;; uint8 _gasPedal
    1
    ;; uint8 _brakePedal
    1
    ;; uint8 _targetSpeed
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _method
       (write-byte _method s)
     ;; int8 _pedal
       (write-byte _pedal s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float32 _objdis
       (sys::poke _objdis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _objrel
       (sys::poke _objrel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _parkdis
       (sys::poke _parkdis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _isvalid
       (write-byte _isvalid s)
     ;; uint8 _geer
       (write-byte _geer s)
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
     ;; uint8 _gasPedal
       (write-byte _gasPedal s)
     ;; uint8 _brakePedal
       (write-byte _brakePedal s)
     ;; uint8 _targetSpeed
       (write-byte _targetSpeed s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _method
     (setq _method (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int8 _pedal
     (setq _pedal (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _pedal 127) (setq _pedal (- _pedal 256)))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _objdis
     (setq _objdis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _objrel
     (setq _objrel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _parkdis
     (setq _parkdis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _isvalid
     (setq _isvalid (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _geer
     (setq _geer (sys::peek buf ptr- :char)) (incf ptr- 1)
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
   ;; uint8 _gasPedal
     (setq _gasPedal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brakePedal
     (setq _brakePedal (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _targetSpeed
     (setq _targetSpeed (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get common_msgs::controllon :md5sum-) "50c02c1f1bee67af253cc975ea95407b")
(setf (get common_msgs::controllon :datatype-) "common_msgs/controllon")
(setf (get common_msgs::controllon :definition-)
      "uint8    method     #使能位
int8     pedal      #输出量
uint8    mode       #mode
float32  objdis     #
float32  objrel     #
float32  parkdis
uint8    isvalid    #有效位
uint8    geer       #
int64    timestamp  #时间戳 
uint8    gasPedal
uint8    brakePedal
uint8    targetSpeed
")



(provide :common_msgs/controllon "50c02c1f1bee67af253cc975ea95407b")


