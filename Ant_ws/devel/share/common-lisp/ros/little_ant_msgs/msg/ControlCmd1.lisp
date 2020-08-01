; Auto-generated. Do not edit!


(cl:in-package little_ant_msgs-msg)


;//! \htmlinclude ControlCmd1.msg.html

(cl:defclass <ControlCmd1> (roslisp-msg-protocol:ros-message)
  ((set_driverlessMode
    :reader set_driverlessMode
    :initarg :set_driverlessMode
    :type cl:boolean
    :initform cl:nil)
   (set_remoteStart
    :reader set_remoteStart
    :initarg :set_remoteStart
    :type cl:boolean
    :initform cl:nil)
   (set_handBrake
    :reader set_handBrake
    :initarg :set_handBrake
    :type cl:boolean
    :initform cl:nil)
   (set_turnLight_R
    :reader set_turnLight_R
    :initarg :set_turnLight_R
    :type cl:boolean
    :initform cl:nil)
   (set_turnLight_L
    :reader set_turnLight_L
    :initarg :set_turnLight_L
    :type cl:boolean
    :initform cl:nil)
   (set_lowBeam
    :reader set_lowBeam
    :initarg :set_lowBeam
    :type cl:boolean
    :initform cl:nil)
   (set_reverseLight
    :reader set_reverseLight
    :initarg :set_reverseLight
    :type cl:boolean
    :initform cl:nil)
   (set_brakeLight
    :reader set_brakeLight
    :initarg :set_brakeLight
    :type cl:boolean
    :initform cl:nil)
   (set_horn
    :reader set_horn
    :initarg :set_horn
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ControlCmd1 (<ControlCmd1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCmd1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCmd1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name little_ant_msgs-msg:<ControlCmd1> is deprecated: use little_ant_msgs-msg:ControlCmd1 instead.")))

(cl:ensure-generic-function 'set_driverlessMode-val :lambda-list '(m))
(cl:defmethod set_driverlessMode-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_driverlessMode-val is deprecated.  Use little_ant_msgs-msg:set_driverlessMode instead.")
  (set_driverlessMode m))

(cl:ensure-generic-function 'set_remoteStart-val :lambda-list '(m))
(cl:defmethod set_remoteStart-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_remoteStart-val is deprecated.  Use little_ant_msgs-msg:set_remoteStart instead.")
  (set_remoteStart m))

(cl:ensure-generic-function 'set_handBrake-val :lambda-list '(m))
(cl:defmethod set_handBrake-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_handBrake-val is deprecated.  Use little_ant_msgs-msg:set_handBrake instead.")
  (set_handBrake m))

(cl:ensure-generic-function 'set_turnLight_R-val :lambda-list '(m))
(cl:defmethod set_turnLight_R-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_turnLight_R-val is deprecated.  Use little_ant_msgs-msg:set_turnLight_R instead.")
  (set_turnLight_R m))

(cl:ensure-generic-function 'set_turnLight_L-val :lambda-list '(m))
(cl:defmethod set_turnLight_L-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_turnLight_L-val is deprecated.  Use little_ant_msgs-msg:set_turnLight_L instead.")
  (set_turnLight_L m))

(cl:ensure-generic-function 'set_lowBeam-val :lambda-list '(m))
(cl:defmethod set_lowBeam-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_lowBeam-val is deprecated.  Use little_ant_msgs-msg:set_lowBeam instead.")
  (set_lowBeam m))

(cl:ensure-generic-function 'set_reverseLight-val :lambda-list '(m))
(cl:defmethod set_reverseLight-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_reverseLight-val is deprecated.  Use little_ant_msgs-msg:set_reverseLight instead.")
  (set_reverseLight m))

(cl:ensure-generic-function 'set_brakeLight-val :lambda-list '(m))
(cl:defmethod set_brakeLight-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_brakeLight-val is deprecated.  Use little_ant_msgs-msg:set_brakeLight instead.")
  (set_brakeLight m))

(cl:ensure-generic-function 'set_horn-val :lambda-list '(m))
(cl:defmethod set_horn-val ((m <ControlCmd1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader little_ant_msgs-msg:set_horn-val is deprecated.  Use little_ant_msgs-msg:set_horn instead.")
  (set_horn m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCmd1>) ostream)
  "Serializes a message object of type '<ControlCmd1>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_driverlessMode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_remoteStart) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_handBrake) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_turnLight_R) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_turnLight_L) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_lowBeam) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_reverseLight) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_brakeLight) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'set_horn) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCmd1>) istream)
  "Deserializes a message object of type '<ControlCmd1>"
    (cl:setf (cl:slot-value msg 'set_driverlessMode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_remoteStart) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_handBrake) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_turnLight_R) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_turnLight_L) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_lowBeam) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_reverseLight) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_brakeLight) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'set_horn) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCmd1>)))
  "Returns string type for a message object of type '<ControlCmd1>"
  "little_ant_msgs/ControlCmd1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCmd1)))
  "Returns string type for a message object of type 'ControlCmd1"
  "little_ant_msgs/ControlCmd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCmd1>)))
  "Returns md5sum for a message object of type '<ControlCmd1>"
  "f587e931e6927c2a0aadae434268a15b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCmd1)))
  "Returns md5sum for a message object of type 'ControlCmd1"
  "f587e931e6927c2a0aadae434268a15b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCmd1>)))
  "Returns full string definition for message of type '<ControlCmd1>"
  (cl:format cl:nil "#IDM_1  0x2C5~%~%bool set_driverlessMode~%bool set_remoteStart~%bool set_handBrake~%bool set_turnLight_R~%bool set_turnLight_L~%bool set_lowBeam~%bool set_reverseLight~%bool set_brakeLight~%bool set_horn~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCmd1)))
  "Returns full string definition for message of type 'ControlCmd1"
  (cl:format cl:nil "#IDM_1  0x2C5~%~%bool set_driverlessMode~%bool set_remoteStart~%bool set_handBrake~%bool set_turnLight_R~%bool set_turnLight_L~%bool set_lowBeam~%bool set_reverseLight~%bool set_brakeLight~%bool set_horn~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCmd1>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCmd1>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCmd1
    (cl:cons ':set_driverlessMode (set_driverlessMode msg))
    (cl:cons ':set_remoteStart (set_remoteStart msg))
    (cl:cons ':set_handBrake (set_handBrake msg))
    (cl:cons ':set_turnLight_R (set_turnLight_R msg))
    (cl:cons ':set_turnLight_L (set_turnLight_L msg))
    (cl:cons ':set_lowBeam (set_lowBeam msg))
    (cl:cons ':set_reverseLight (set_reverseLight msg))
    (cl:cons ':set_brakeLight (set_brakeLight msg))
    (cl:cons ':set_horn (set_horn msg))
))
