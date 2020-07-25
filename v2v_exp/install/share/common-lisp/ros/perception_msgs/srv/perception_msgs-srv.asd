
(cl:in-package :asdf)

(defsystem "perception_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :perception_msgs-msg
)
  :components ((:file "_package")
    (:file "GlobalMap" :depends-on ("_package_GlobalMap"))
    (:file "_package_GlobalMap" :depends-on ("_package"))
    (:file "GlobalPath" :depends-on ("_package_GlobalPath"))
    (:file "_package_GlobalPath" :depends-on ("_package"))
    (:file "PtLocalization" :depends-on ("_package_PtLocalization"))
    (:file "_package_PtLocalization" :depends-on ("_package"))
  ))