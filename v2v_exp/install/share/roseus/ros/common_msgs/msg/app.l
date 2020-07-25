;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::app)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'app (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::APP")
  (make-package "COMMON_MSGS::APP"))

(in-package "ROS")
;;//! \htmlinclude app.msg.html


(defclass common_msgs::app
  :super ros::object
  :slots (_stopgo _mapnum ))

(defmethod common_msgs::app
  (:init
   (&key
    ((:stopgo __stopgo) 0)
    ((:mapnum __mapnum) 0)
    )
   (send-super :init)
   (setq _stopgo (round __stopgo))
   (setq _mapnum (round __mapnum))
   self)
  (:stopgo
   (&optional __stopgo)
   (if __stopgo (setq _stopgo __stopgo)) _stopgo)
  (:mapnum
   (&optional __mapnum)
   (if __mapnum (setq _mapnum __mapnum)) _mapnum)
  (:serialization-length
   ()
   (+
    ;; uint8 _stopgo
    1
    ;; uint8 _mapnum
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _stopgo
       (write-byte _stopgo s)
     ;; uint8 _mapnum
       (write-byte _mapnum s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _stopgo
     (setq _stopgo (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _mapnum
     (setq _mapnum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get common_msgs::app :md5sum-) "c51ad9d6e175af3548f31dad6a82baf4")
(setf (get common_msgs::app :datatype-) "common_msgs/app")
(setf (get common_msgs::app :definition-)
      "uint8 stopgo
uint8 mapnum

")



(provide :common_msgs/app "c51ad9d6e175af3548f31dad6a82baf4")


