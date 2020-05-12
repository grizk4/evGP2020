
(cl:in-package :asdf)

(defsystem "cepton_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SensorInformation" :depends-on ("_package_SensorInformation"))
    (:file "_package_SensorInformation" :depends-on ("_package"))
  ))