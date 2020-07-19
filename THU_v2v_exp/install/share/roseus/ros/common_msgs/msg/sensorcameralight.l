;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::sensorcameralight)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'sensorcameralight (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::SENSORCAMERALIGHT")
  (make-package "COMMON_MSGS::SENSORCAMERALIGHT"))

(in-package "ROS")
;;//! \htmlinclude sensorcameralight.msg.html


(defclass common_msgs::sensorcameralight
  :super ros::object
  :slots (_start _isvalid _timestamp ))

(defmethod common_msgs::sensorcameralight
  (:init
   (&key
    ((:start __start) 0)
    ((:isvalid __isvalid) 0)
    ((:timestamp __timestamp) 0)
    )
   (send-super :init)
   (setq _start (round __start))
   (setq _isvalid (round __isvalid))
   (setq _timestamp (round __timestamp))
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:isvalid
   (&optional __isvalid)
   (if __isvalid (setq _isvalid __isvalid)) _isvalid)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _start
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
     ;; uint8 _start
       (write-byte _start s)
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
   ;; uint8 _start
     (setq _start (sys::peek buf ptr- :char)) (incf ptr- 1)
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

(setf (get common_msgs::sensorcameralight :md5sum-) "8d176b03612ab6796db2be50106ee8c1")
(setf (get common_msgs::sensorcameralight :datatype-) "common_msgs/sensorcameralight")
(setf (get common_msgs::sensorcameralight :definition-)
      "uint8 start
uint8 isvalid
int64 timestamp
")



(provide :common_msgs/sensorcameralight "8d176b03612ab6796db2be50106ee8c1")


