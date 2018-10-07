
(cl:in-package :asdf)

(defsystem "readmarker-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "markermsg" :depends-on ("_package_markermsg"))
    (:file "_package_markermsg" :depends-on ("_package"))
  ))