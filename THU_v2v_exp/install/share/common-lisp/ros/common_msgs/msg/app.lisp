; Auto-generated. Do not edit!


(cl:in-package common_msgs-msg)


;//! \htmlinclude app.msg.html

(cl:defclass <app> (roslisp-msg-protocol:ros-message)
  ((stopgo
    :reader stopgo
    :initarg :stopgo
    :type cl:fixnum
    :initform 0)
   (mapnum
    :reader mapnum
    :initarg :mapnum
    :type cl:fixnum
    :initform 0))
)

(cl:defclass app (<app>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <app>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'app)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name common_msgs-msg:<app> is deprecated: use common_msgs-msg:app instead.")))

(cl:ensure-generic-function 'stopgo-val :lambda-list '(m))
(cl:defmethod stopgo-val ((m <app>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:stopgo-val is deprecated.  Use common_msgs-msg:stopgo instead.")
  (stopgo m))

(cl:ensure-generic-function 'mapnum-val :lambda-list '(m))
(cl:defmethod mapnum-val ((m <app>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader common_msgs-msg:mapnum-val is deprecated.  Use common_msgs-msg:mapnum instead.")
  (mapnum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <app>) ostream)
  "Serializes a message object of type '<app>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopgo)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mapnum)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <app>) istream)
  "Deserializes a message object of type '<app>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stopgo)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mapnum)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<app>)))
  "Returns string type for a message object of type '<app>"
  "common_msgs/app")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'app)))
  "Returns string type for a message object of type 'app"
  "common_msgs/app")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<app>)))
  "Returns md5sum for a message object of type '<app>"
  "c51ad9d6e175af3548f31dad6a82baf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'app)))
  "Returns md5sum for a message object of type 'app"
  "c51ad9d6e175af3548f31dad6a82baf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<app>)))
  "Returns full string definition for message of type '<app>"
  (cl:format cl:nil "uint8 stopgo~%uint8 mapnum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'app)))
  "Returns full string definition for message of type 'app"
  (cl:format cl:nil "uint8 stopgo~%uint8 mapnum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <app>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <app>))
  "Converts a ROS message object to a list"
  (cl:list 'app
    (cl:cons ':stopgo (stopgo msg))
    (cl:cons ':mapnum (mapnum msg))
))
