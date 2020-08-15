
(cl:in-package :asdf)

(defsystem "gnss_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GNHDT" :depends-on ("_package_GNHDT"))
    (:file "_package_GNHDT" :depends-on ("_package"))
    (:file "GPFPD" :depends-on ("_package_GPFPD"))
    (:file "_package_GPFPD" :depends-on ("_package"))
    (:file "GPGGA" :depends-on ("_package_GPGGA"))
    (:file "_package_GPGGA" :depends-on ("_package"))
    (:file "GPRMC" :depends-on ("_package_GPRMC"))
    (:file "_package_GPRMC" :depends-on ("_package"))
    (:file "GPTRA" :depends-on ("_package_GPTRA"))
    (:file "_package_GPTRA" :depends-on ("_package"))
    (:file "GPVTG" :depends-on ("_package_GPVTG"))
    (:file "_package_GPVTG" :depends-on ("_package"))
    (:file "GTIMU" :depends-on ("_package_GTIMU"))
    (:file "_package_GTIMU" :depends-on ("_package"))
    (:file "PSAT" :depends-on ("_package_PSAT"))
    (:file "_package_PSAT" :depends-on ("_package"))
    (:file "UTM" :depends-on ("_package_UTM"))
    (:file "_package_UTM" :depends-on ("_package"))
    (:file "VehStat" :depends-on ("_package_VehStat"))
    (:file "_package_VehStat" :depends-on ("_package"))
  ))