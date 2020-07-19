;; Auto-generated. Do not edit!


(when (boundp 'common_msgs::nextproperty)
  (if (not (find-package "COMMON_MSGS"))
    (make-package "COMMON_MSGS"))
  (shadow 'nextproperty (find-package "COMMON_MSGS")))
(unless (find-package "COMMON_MSGS::NEXTPROPERTY")
  (make-package "COMMON_MSGS::NEXTPROPERTY"))

(in-package "ROS")
;;//! \htmlinclude nextproperty.msg.html


(defclass common_msgs::nextproperty
  :super ros::object
  :slots (_property _dis ))

(defmethod common_msgs::nextproperty
  (:init
   (&key
    ((:property __property) 0)
    ((:dis __dis) 0.0)
    )
   (send-super :init)
   (setq _property (round __property))
   (setq _dis (float __dis))
   self)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:dis
   (&optional __dis)
   (if __dis (setq _dis __dis)) _dis)
  (:serialization-length
   ()
   (+
    ;; uint8 _property
    1
    ;; float32 _dis
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _property
       (write-byte _property s)
     ;; float32 _dis
       (sys::poke _dis (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _property
     (setq _property (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _dis
     (setq _dis (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get common_msgs::nextproperty :md5sum-) "4f8c856bdc1737cae020d1e8afae80d8")
(setf (get common_msgs::nextproperty :datatype-) "common_msgs/nextproperty")
(setf (get common_msgs::nextproperty :definition-)
      "uint8 property
float32 dis
")



(provide :common_msgs/nextproperty "4f8c856bdc1737cae020d1e8afae80d8")


