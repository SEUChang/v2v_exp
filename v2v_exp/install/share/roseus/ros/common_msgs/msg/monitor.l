;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::monitor)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'monitor (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::MONITOR")
  (make-package "COMMON_MSGS::MONITOR"))

(in-package "ROS")
;;//! \htmlinclude monitor.msg.html


(defclass common_msgs::monitor
  :super ros::object
  :slots (_valuelight _deslight _valuetext _destext _dotcnt _timestamp _status ))

(defmethod common_msgs::monitor
  (:init
   (&key
    ((:valuelight __valuelight) (make-array 0 :initial-element 0 :element-type :integer))
    ((:deslight __deslight) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:valuetext __valuetext) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:destext __destext) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:dotcnt __dotcnt) (make-array 0 :initial-element 0 :element-type :integer))
    ((:timestamp __timestamp) 0)
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _valuelight __valuelight)
   (setq _deslight __deslight)
   (setq _valuetext __valuetext)
   (setq _destext __destext)
   (setq _dotcnt __dotcnt)
   (setq _timestamp (round __timestamp))
   (setq _status (round __status))
   self)
  (:valuelight
   (&optional __valuelight)
   (if __valuelight (setq _valuelight __valuelight)) _valuelight)
  (:deslight
   (&optional __deslight)
   (if __deslight (setq _deslight __deslight)) _deslight)
  (:valuetext
   (&optional __valuetext)
   (if __valuetext (setq _valuetext __valuetext)) _valuetext)
  (:destext
   (&optional __destext)
   (if __destext (setq _destext __destext)) _destext)
  (:dotcnt
   (&optional __dotcnt)
   (if __dotcnt (setq _dotcnt __dotcnt)) _dotcnt)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; byte[] _valuelight
    (* 1    (length _valuelight)) 4
    ;; string[] _deslight
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _deslight)) 4
    ;; float64[] _valuetext
    (* 8    (length _valuetext)) 4
    ;; string[] _destext
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _destext)) 4
    ;; byte[] _dotcnt
    (* 1    (length _dotcnt)) 4
    ;; int64 _timestamp
    8
    ;; int64 _status
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; byte[] _valuelight
     (write-long (length _valuelight) s)
     (dotimes (i (length _valuelight))
       (write-byte (elt _valuelight i) s)
       )
     ;; string[] _deslight
     (write-long (length _deslight) s)
     (dolist (elem _deslight)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _valuetext
     (write-long (length _valuetext) s)
     (dotimes (i (length _valuetext))
       (sys::poke (elt _valuetext i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; string[] _destext
     (write-long (length _destext) s)
     (dolist (elem _destext)
       (write-long (length elem) s) (princ elem s)
       )
     ;; byte[] _dotcnt
     (write-long (length _dotcnt) s)
     (dotimes (i (length _dotcnt))
       (write-byte (elt _dotcnt i) s)
       )
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
     ;; int64 _status
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _status (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _status) (= (length (_status . bv)) 2)) ;; bignum
              (write-long (ash (elt (_status . bv) 0) 0) s)
              (write-long (ash (elt (_status . bv) 1) -1) s))
             ((and (class _status) (= (length (_status . bv)) 1)) ;; big1
              (write-long (elt (_status . bv) 0) s)
              (write-long (if (>= _status 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _status s)(write-long (if (>= _status 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; byte[] _valuelight
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valuelight (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _valuelight i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _valuelight i) 127) (setf (elt _valuelight i) (- (elt _valuelight i) 256)))
     ))
   ;; string[] _deslight
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _deslight (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _deslight i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _valuetext
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _valuetext (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _valuetext i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; string[] _destext
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _destext (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _destext i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; byte[] _dotcnt
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dotcnt (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _dotcnt i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _dotcnt i) 127) (setf (elt _dotcnt i) (- (elt _dotcnt i) 256)))
     ))
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
   ;; int64 _status
#+(or :alpha :irix6 :x86_64)
      (setf _status (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _status (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
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

(setf (get common_msgs::monitor :md5sum-) "dec2db79b03f82b53f8552b76488299a")
(setf (get common_msgs::monitor :datatype-) "common_msgs/monitor")
(setf (get common_msgs::monitor :definition-)
      "byte[] valuelight
string[] deslight
float64[] valuetext
string[] destext
byte[] dotcnt
int64 timestamp
int64 status
")



(provide :common_msgs/monitor "dec2db79b03f82b53f8552b76488299a")


