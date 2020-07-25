
(cl:in-package :asdf)

(defsystem "simulator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "SimuSet" :depends-on ("_package_SimuSet"))
    (:file "_package_SimuSet" :depends-on ("_package"))
  ))