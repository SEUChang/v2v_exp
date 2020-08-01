
(cl:in-package :asdf)

(defsystem "little_ant_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControlCmd1" :depends-on ("_package_ControlCmd1"))
    (:file "_package_ControlCmd1" :depends-on ("_package"))
    (:file "ControlCmd2" :depends-on ("_package_ControlCmd2"))
    (:file "_package_ControlCmd2" :depends-on ("_package"))
    (:file "State1" :depends-on ("_package_State1"))
    (:file "_package_State1" :depends-on ("_package"))
    (:file "State2" :depends-on ("_package_State2"))
    (:file "_package_State2" :depends-on ("_package"))
    (:file "State3" :depends-on ("_package_State3"))
    (:file "_package_State3" :depends-on ("_package"))
    (:file "State4" :depends-on ("_package_State4"))
    (:file "_package_State4" :depends-on ("_package"))
  ))