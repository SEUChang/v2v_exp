
(cl:in-package :asdf)

(defsystem "common_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TranslateCoordinate" :depends-on ("_package_TranslateCoordinate"))
    (:file "_package_TranslateCoordinate" :depends-on ("_package"))
  ))