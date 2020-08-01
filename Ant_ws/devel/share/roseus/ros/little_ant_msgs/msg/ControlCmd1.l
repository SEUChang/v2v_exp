;; Auto-generated. Do not edit!


(when (boundp 'little_ant_msgs::ControlCmd1)
  (if (not (find-package "LITTLE_ANT_MSGS"))
    (make-package "LITTLE_ANT_MSGS"))
  (shadow 'ControlCmd1 (find-package "LITTLE_ANT_MSGS")))
(unless (find-package "LITTLE_ANT_MSGS::CONTROLCMD1")
  (make-package "LITTLE_ANT_MSGS::CONTROLCMD1"))

(in-package "ROS")
;;//! \htmlinclude ControlCmd1.msg.html


(defclass little_ant_msgs::ControlCmd1
  :super ros::object
  :slots (_set_driverlessMode _set_remoteStart _set_handBrake _set_turnLight_R _set_turnLight_L _set_lowBeam _set_reverseLight _set_brakeLight _set_horn ))

(defmethod little_ant_msgs::ControlCmd1
  (:init
   (&key
    ((:set_driverlessMode __set_driverlessMode) nil)
    ((:set_remoteStart __set_remoteStart) nil)
    ((:set_handBrake __set_handBrake) nil)
    ((:set_turnLight_R __set_turnLight_R) nil)
    ((:set_turnLight_L __set_turnLight_L) nil)
    ((:set_lowBeam __set_lowBeam) nil)
    ((:set_reverseLight __set_reverseLight) nil)
    ((:set_brakeLight __set_brakeLight) nil)
    ((:set_horn __set_horn) nil)
    )
   (send-super :init)
   (setq _set_driverlessMode __set_driverlessMode)
   (setq _set_remoteStart __set_remoteStart)
   (setq _set_handBrake __set_handBrake)
   (setq _set_turnLight_R __set_turnLight_R)
   (setq _set_turnLight_L __set_turnLight_L)
   (setq _set_lowBeam __set_lowBeam)
   (setq _set_reverseLight __set_reverseLight)
   (setq _set_brakeLight __set_brakeLight)
   (setq _set_horn __set_horn)
   self)
  (:set_driverlessMode
   (&optional __set_driverlessMode)
   (if __set_driverlessMode (setq _set_driverlessMode __set_driverlessMode)) _set_driverlessMode)
  (:set_remoteStart
   (&optional __set_remoteStart)
   (if __set_remoteStart (setq _set_remoteStart __set_remoteStart)) _set_remoteStart)
  (:set_handBrake
   (&optional __set_handBrake)
   (if __set_handBrake (setq _set_handBrake __set_handBrake)) _set_handBrake)
  (:set_turnLight_R
   (&optional __set_turnLight_R)
   (if __set_turnLight_R (setq _set_turnLight_R __set_turnLight_R)) _set_turnLight_R)
  (:set_turnLight_L
   (&optional __set_turnLight_L)
   (if __set_turnLight_L (setq _set_turnLight_L __set_turnLight_L)) _set_turnLight_L)
  (:set_lowBeam
   (&optional __set_lowBeam)
   (if __set_lowBeam (setq _set_lowBeam __set_lowBeam)) _set_lowBeam)
  (:set_reverseLight
   (&optional __set_reverseLight)
   (if __set_reverseLight (setq _set_reverseLight __set_reverseLight)) _set_reverseLight)
  (:set_brakeLight
   (&optional __set_brakeLight)
   (if __set_brakeLight (setq _set_brakeLight __set_brakeLight)) _set_brakeLight)
  (:set_horn
   (&optional __set_horn)
   (if __set_horn (setq _set_horn __set_horn)) _set_horn)
  (:serialization-length
   ()
   (+
    ;; bool _set_driverlessMode
    1
    ;; bool _set_remoteStart
    1
    ;; bool _set_handBrake
    1
    ;; bool _set_turnLight_R
    1
    ;; bool _set_turnLight_L
    1
    ;; bool _set_lowBeam
    1
    ;; bool _set_reverseLight
    1
    ;; bool _set_brakeLight
    1
    ;; bool _set_horn
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _set_driverlessMode
       (if _set_driverlessMode (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_remoteStart
       (if _set_remoteStart (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_handBrake
       (if _set_handBrake (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_turnLight_R
       (if _set_turnLight_R (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_turnLight_L
       (if _set_turnLight_L (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_lowBeam
       (if _set_lowBeam (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_reverseLight
       (if _set_reverseLight (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_brakeLight
       (if _set_brakeLight (write-byte -1 s) (write-byte 0 s))
     ;; bool _set_horn
       (if _set_horn (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _set_driverlessMode
     (setq _set_driverlessMode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_remoteStart
     (setq _set_remoteStart (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_handBrake
     (setq _set_handBrake (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_turnLight_R
     (setq _set_turnLight_R (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_turnLight_L
     (setq _set_turnLight_L (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_lowBeam
     (setq _set_lowBeam (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_reverseLight
     (setq _set_reverseLight (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_brakeLight
     (setq _set_brakeLight (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _set_horn
     (setq _set_horn (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get little_ant_msgs::ControlCmd1 :md5sum-) "f587e931e6927c2a0aadae434268a15b")
(setf (get little_ant_msgs::ControlCmd1 :datatype-) "little_ant_msgs/ControlCmd1")
(setf (get little_ant_msgs::ControlCmd1 :definition-)
      "#IDM_1  0x2C5

bool set_driverlessMode
bool set_remoteStart
bool set_handBrake
bool set_turnLight_R
bool set_turnLight_L
bool set_lowBeam
bool set_reverseLight
bool set_brakeLight
bool set_horn


")



(provide :little_ant_msgs/ControlCmd1 "f587e931e6927c2a0aadae434268a15b")


