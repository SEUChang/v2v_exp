;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Object)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Object (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OBJECT")
  (make-package "PERCEPTION_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html


(defclass perception_msgs::Object
  :super ros::object
  :slots (_Pts _id _type _relative_dir _relative_speed ))

(defmethod perception_msgs::Object
  (:init
   (&key
    ((:Pts __Pts) (let (r) (dotimes (i 0) (push (instance perception_msgs::Pt :init) r)) r))
    ((:id __id) 0)
    ((:type __type) 0)
    ((:relative_dir __relative_dir) 0.0)
    ((:relative_speed __relative_speed) 0.0)
    )
   (send-super :init)
   (setq _Pts __Pts)
   (setq _id (round __id))
   (setq _type (round __type))
   (setq _relative_dir (float __relative_dir))
   (setq _relative_speed (float __relative_speed))
   self)
  (:Pts
   (&rest __Pts)
   (if (keywordp (car __Pts))
       (send* _Pts __Pts)
     (progn
       (if __Pts (setq _Pts (car __Pts)))
       _Pts)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:relative_dir
   (&optional __relative_dir)
   (if __relative_dir (setq _relative_dir __relative_dir)) _relative_dir)
  (:relative_speed
   (&optional __relative_speed)
   (if __relative_speed (setq _relative_speed __relative_speed)) _relative_speed)
  (:serialization-length
   ()
   (+
    ;; perception_msgs/Pt[] _Pts
    (apply #'+ (send-all _Pts :serialization-length)) 4
    ;; int8 _id
    1
    ;; int8 _type
    1
    ;; float64 _relative_dir
    8
    ;; float64 _relative_speed
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; perception_msgs/Pt[] _Pts
     (write-long (length _Pts) s)
     (dolist (elem _Pts)
       (send elem :serialize s)
       )
     ;; int8 _id
       (write-byte _id s)
     ;; int8 _type
       (write-byte _type s)
     ;; float64 _relative_dir
       (sys::poke _relative_dir (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_speed
       (sys::poke _relative_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; perception_msgs/Pt[] _Pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Pts (let (r) (dotimes (i n) (push (instance perception_msgs::Pt :init) r)) r))
     (dolist (elem- _Pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _id 127) (setq _id (- _id 256)))
   ;; int8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _type 127) (setq _type (- _type 256)))
   ;; float64 _relative_dir
     (setq _relative_dir (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_speed
     (setq _relative_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get perception_msgs::Object :md5sum-) "3112ad4cbb7a5e67aa53306c9d9e3b67")
(setf (get perception_msgs::Object :datatype-) "perception_msgs/Object")
(setf (get perception_msgs::Object :definition-)
      "#
#


perception_msgs/Pt[] Pts

int8 id
int8 type

float64  relative_dir
float64  relative_speed


###  add gridcells info  ###



================================================================================
MSG: perception_msgs/Pt
####
###


float32 x
float32 y

")



(provide :perception_msgs/Object "3112ad4cbb7a5e67aa53306c9d9e3b67")


