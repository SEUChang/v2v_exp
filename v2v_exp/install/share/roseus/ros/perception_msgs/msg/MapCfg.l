;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::MapCfg)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'MapCfg (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::MAPCFG")
  (make-package "PERCEPTION_MSGS::MAPCFG"))

(in-package "ROS")
;;//! \htmlinclude MapCfg.msg.html


(defclass perception_msgs::MapCfg
  :super ros::object
  :slots (_start_or_pause _stop_and_save _closed _speed_limit_kph _bag_name _tpk_name _rtk_mode _driving_mode _special_mode _obs_search_strategy _speed_mode _obs_strategy _follow_strategy _cross_option _reserved_option ))

(defmethod perception_msgs::MapCfg
  (:init
   (&key
    ((:start_or_pause __start_or_pause) nil)
    ((:stop_and_save __stop_and_save) nil)
    ((:closed __closed) nil)
    ((:speed_limit_kph __speed_limit_kph) 0.0)
    ((:bag_name __bag_name) "")
    ((:tpk_name __tpk_name) "")
    ((:rtk_mode __rtk_mode) 0)
    ((:driving_mode __driving_mode) 0)
    ((:special_mode __special_mode) 0)
    ((:obs_search_strategy __obs_search_strategy) 0)
    ((:speed_mode __speed_mode) 0)
    ((:obs_strategy __obs_strategy) 0)
    ((:follow_strategy __follow_strategy) 0)
    ((:cross_option __cross_option) 0)
    ((:reserved_option __reserved_option) 0)
    )
   (send-super :init)
   (setq _start_or_pause __start_or_pause)
   (setq _stop_and_save __stop_and_save)
   (setq _closed __closed)
   (setq _speed_limit_kph (float __speed_limit_kph))
   (setq _bag_name (string __bag_name))
   (setq _tpk_name (string __tpk_name))
   (setq _rtk_mode (round __rtk_mode))
   (setq _driving_mode (round __driving_mode))
   (setq _special_mode (round __special_mode))
   (setq _obs_search_strategy (round __obs_search_strategy))
   (setq _speed_mode (round __speed_mode))
   (setq _obs_strategy (round __obs_strategy))
   (setq _follow_strategy (round __follow_strategy))
   (setq _cross_option (round __cross_option))
   (setq _reserved_option (round __reserved_option))
   self)
  (:start_or_pause
   (&optional __start_or_pause)
   (if __start_or_pause (setq _start_or_pause __start_or_pause)) _start_or_pause)
  (:stop_and_save
   (&optional __stop_and_save)
   (if __stop_and_save (setq _stop_and_save __stop_and_save)) _stop_and_save)
  (:closed
   (&optional __closed)
   (if __closed (setq _closed __closed)) _closed)
  (:speed_limit_kph
   (&optional __speed_limit_kph)
   (if __speed_limit_kph (setq _speed_limit_kph __speed_limit_kph)) _speed_limit_kph)
  (:bag_name
   (&optional __bag_name)
   (if __bag_name (setq _bag_name __bag_name)) _bag_name)
  (:tpk_name
   (&optional __tpk_name)
   (if __tpk_name (setq _tpk_name __tpk_name)) _tpk_name)
  (:rtk_mode
   (&optional __rtk_mode)
   (if __rtk_mode (setq _rtk_mode __rtk_mode)) _rtk_mode)
  (:driving_mode
   (&optional __driving_mode)
   (if __driving_mode (setq _driving_mode __driving_mode)) _driving_mode)
  (:special_mode
   (&optional __special_mode)
   (if __special_mode (setq _special_mode __special_mode)) _special_mode)
  (:obs_search_strategy
   (&optional __obs_search_strategy)
   (if __obs_search_strategy (setq _obs_search_strategy __obs_search_strategy)) _obs_search_strategy)
  (:speed_mode
   (&optional __speed_mode)
   (if __speed_mode (setq _speed_mode __speed_mode)) _speed_mode)
  (:obs_strategy
   (&optional __obs_strategy)
   (if __obs_strategy (setq _obs_strategy __obs_strategy)) _obs_strategy)
  (:follow_strategy
   (&optional __follow_strategy)
   (if __follow_strategy (setq _follow_strategy __follow_strategy)) _follow_strategy)
  (:cross_option
   (&optional __cross_option)
   (if __cross_option (setq _cross_option __cross_option)) _cross_option)
  (:reserved_option
   (&optional __reserved_option)
   (if __reserved_option (setq _reserved_option __reserved_option)) _reserved_option)
  (:serialization-length
   ()
   (+
    ;; bool _start_or_pause
    1
    ;; bool _stop_and_save
    1
    ;; bool _closed
    1
    ;; float32 _speed_limit_kph
    4
    ;; string _bag_name
    4 (length _bag_name)
    ;; string _tpk_name
    4 (length _tpk_name)
    ;; int32 _rtk_mode
    4
    ;; int32 _driving_mode
    4
    ;; int32 _special_mode
    4
    ;; int32 _obs_search_strategy
    4
    ;; int32 _speed_mode
    4
    ;; int32 _obs_strategy
    4
    ;; int32 _follow_strategy
    4
    ;; int32 _cross_option
    4
    ;; int32 _reserved_option
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _start_or_pause
       (if _start_or_pause (write-byte -1 s) (write-byte 0 s))
     ;; bool _stop_and_save
       (if _stop_and_save (write-byte -1 s) (write-byte 0 s))
     ;; bool _closed
       (if _closed (write-byte -1 s) (write-byte 0 s))
     ;; float32 _speed_limit_kph
       (sys::poke _speed_limit_kph (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _bag_name
       (write-long (length _bag_name) s) (princ _bag_name s)
     ;; string _tpk_name
       (write-long (length _tpk_name) s) (princ _tpk_name s)
     ;; int32 _rtk_mode
       (write-long _rtk_mode s)
     ;; int32 _driving_mode
       (write-long _driving_mode s)
     ;; int32 _special_mode
       (write-long _special_mode s)
     ;; int32 _obs_search_strategy
       (write-long _obs_search_strategy s)
     ;; int32 _speed_mode
       (write-long _speed_mode s)
     ;; int32 _obs_strategy
       (write-long _obs_strategy s)
     ;; int32 _follow_strategy
       (write-long _follow_strategy s)
     ;; int32 _cross_option
       (write-long _cross_option s)
     ;; int32 _reserved_option
       (write-long _reserved_option s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _start_or_pause
     (setq _start_or_pause (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _stop_and_save
     (setq _stop_and_save (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _closed
     (setq _closed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _speed_limit_kph
     (setq _speed_limit_kph (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _bag_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bag_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _tpk_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _tpk_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _rtk_mode
     (setq _rtk_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _driving_mode
     (setq _driving_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _special_mode
     (setq _special_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _obs_search_strategy
     (setq _obs_search_strategy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _speed_mode
     (setq _speed_mode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _obs_strategy
     (setq _obs_strategy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _follow_strategy
     (setq _follow_strategy (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _cross_option
     (setq _cross_option (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reserved_option
     (setq _reserved_option (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get perception_msgs::MapCfg :md5sum-) "114743d989eebb15f931732b39a7a0f5")
(setf (get perception_msgs::MapCfg :datatype-) "perception_msgs/MapCfg")
(setf (get perception_msgs::MapCfg :definition-)
      "





bool start_or_pause
bool stop_and_save
bool closed
float32 speed_limit_kph

string bag_name
string tpk_name
####################################33

int32 rtk_mode
int32 driving_mode # acc or collision avoidance
int32 special_mode  #

####################################33
int32 obs_search_strategy  # 0: donot search obs
int32 speed_mode  #
int32 obs_strategy  #
int32 follow_strategy  #
int32 cross_option  #
int32 reserved_option  #

")



(provide :perception_msgs/MapCfg "114743d989eebb15f931732b39a7a0f5")


