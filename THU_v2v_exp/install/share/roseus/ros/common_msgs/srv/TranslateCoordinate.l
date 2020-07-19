;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::TranslateCoordinate)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'TranslateCoordinate (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::TRANSLATECOORDINATE")
  (make-package "COMMON_MSGS::TRANSLATECOORDINATE"))
(unless (find-package "COMMON_MSGS::TRANSLATECOORDINATEREQUEST")
  (make-package "COMMON_MSGS::TRANSLATECOORDINATEREQUEST"))
(unless (find-package "COMMON_MSGS::TRANSLATECOORDINATERESPONSE")
  (make-package "COMMON_MSGS::TRANSLATECOORDINATERESPONSE"))

(in-package "ROS")





(defclass common_msgs::TranslateCoordinateRequest
  :super ros::object
  :slots (_originx _originy ))

(defmethod common_msgs::TranslateCoordinateRequest
  (:init
   (&key
    ((:originx __originx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:originy __originy) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _originx __originx)
   (setq _originy __originy)
   self)
  (:originx
   (&optional __originx)
   (if __originx (setq _originx __originx)) _originx)
  (:originy
   (&optional __originy)
   (if __originy (setq _originy __originy)) _originy)
  (:serialization-length
   ()
   (+
    ;; float64[] _originx
    (* 8    (length _originx)) 4
    ;; float64[] _originy
    (* 8    (length _originy)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _originx
     (write-long (length _originx) s)
     (dotimes (i (length _originx))
       (sys::poke (elt _originx i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _originy
     (write-long (length _originy) s)
     (dotimes (i (length _originy))
       (sys::poke (elt _originy i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _originx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _originx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _originx i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _originy
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _originy (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _originy i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass common_msgs::TranslateCoordinateResponse
  :super ros::object
  :slots (_resultx _resulty ))

(defmethod common_msgs::TranslateCoordinateResponse
  (:init
   (&key
    ((:resultx __resultx) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:resulty __resulty) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _resultx __resultx)
   (setq _resulty __resulty)
   self)
  (:resultx
   (&optional __resultx)
   (if __resultx (setq _resultx __resultx)) _resultx)
  (:resulty
   (&optional __resulty)
   (if __resulty (setq _resulty __resulty)) _resulty)
  (:serialization-length
   ()
   (+
    ;; float64[] _resultx
    (* 8    (length _resultx)) 4
    ;; float64[] _resulty
    (* 8    (length _resulty)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _resultx
     (write-long (length _resultx) s)
     (dotimes (i (length _resultx))
       (sys::poke (elt _resultx i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _resulty
     (write-long (length _resulty) s)
     (dotimes (i (length _resulty))
       (sys::poke (elt _resulty i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _resultx
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resultx (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _resultx i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _resulty
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _resulty (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _resulty i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(defclass common_msgs::TranslateCoordinate
  :super ros::object
  :slots ())

(setf (get common_msgs::TranslateCoordinate :md5sum-) "2c886e6e452bf022836f0a1ebec240f3")
(setf (get common_msgs::TranslateCoordinate :datatype-) "common_msgs/TranslateCoordinate")
(setf (get common_msgs::TranslateCoordinate :request) common_msgs::TranslateCoordinateRequest)
(setf (get common_msgs::TranslateCoordinate :response) common_msgs::TranslateCoordinateResponse)

(defmethod common_msgs::TranslateCoordinateRequest
  (:response () (instance common_msgs::TranslateCoordinateResponse :init)))

(setf (get common_msgs::TranslateCoordinateRequest :md5sum-) "2c886e6e452bf022836f0a1ebec240f3")
(setf (get common_msgs::TranslateCoordinateRequest :datatype-) "common_msgs/TranslateCoordinateRequest")
(setf (get common_msgs::TranslateCoordinateRequest :definition-)
      "float64[] originx
float64[] originy
---
float64[] resultx
float64[] resulty
")

(setf (get common_msgs::TranslateCoordinateResponse :md5sum-) "2c886e6e452bf022836f0a1ebec240f3")
(setf (get common_msgs::TranslateCoordinateResponse :datatype-) "common_msgs/TranslateCoordinateResponse")
(setf (get common_msgs::TranslateCoordinateResponse :definition-)
      "float64[] originx
float64[] originy
---
float64[] resultx
float64[] resulty
")



(provide :common_msgs/TranslateCoordinate "2c886e6e452bf022836f0a1ebec240f3")


