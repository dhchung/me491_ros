;; Auto-generated. Do not edit!


(when (boundp 'readmarker::markermsg)
  (if (not (find-package "READMARKER"))
    (make-package "READMARKER"))
  (shadow 'markermsg (find-package "READMARKER")))
(unless (find-package "READMARKER::MARKERMSG")
  (make-package "READMARKER::MARKERMSG"))

(in-package "ROS")
;;//! \htmlinclude markermsg.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass readmarker::markermsg
  :super ros::object
  :slots (_image1_available _image2_available _cimage1 _cimage2 ))

(defmethod readmarker::markermsg
  (:init
   (&key
    ((:image1_available __image1_available) 0)
    ((:image2_available __image2_available) 0)
    ((:cimage1 __cimage1) (instance sensor_msgs::CompressedImage :init))
    ((:cimage2 __cimage2) (instance sensor_msgs::CompressedImage :init))
    )
   (send-super :init)
   (setq _image1_available (round __image1_available))
   (setq _image2_available (round __image2_available))
   (setq _cimage1 __cimage1)
   (setq _cimage2 __cimage2)
   self)
  (:image1_available
   (&optional __image1_available)
   (if __image1_available (setq _image1_available __image1_available)) _image1_available)
  (:image2_available
   (&optional __image2_available)
   (if __image2_available (setq _image2_available __image2_available)) _image2_available)
  (:cimage1
   (&rest __cimage1)
   (if (keywordp (car __cimage1))
       (send* _cimage1 __cimage1)
     (progn
       (if __cimage1 (setq _cimage1 (car __cimage1)))
       _cimage1)))
  (:cimage2
   (&rest __cimage2)
   (if (keywordp (car __cimage2))
       (send* _cimage2 __cimage2)
     (progn
       (if __cimage2 (setq _cimage2 (car __cimage2)))
       _cimage2)))
  (:serialization-length
   ()
   (+
    ;; int32 _image1_available
    4
    ;; int32 _image2_available
    4
    ;; sensor_msgs/CompressedImage _cimage1
    (send _cimage1 :serialization-length)
    ;; sensor_msgs/CompressedImage _cimage2
    (send _cimage2 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _image1_available
       (write-long _image1_available s)
     ;; int32 _image2_available
       (write-long _image2_available s)
     ;; sensor_msgs/CompressedImage _cimage1
       (send _cimage1 :serialize s)
     ;; sensor_msgs/CompressedImage _cimage2
       (send _cimage2 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _image1_available
     (setq _image1_available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _image2_available
     (setq _image2_available (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; sensor_msgs/CompressedImage _cimage1
     (send _cimage1 :deserialize buf ptr-) (incf ptr- (send _cimage1 :serialization-length))
   ;; sensor_msgs/CompressedImage _cimage2
     (send _cimage2 :deserialize buf ptr-) (incf ptr- (send _cimage2 :serialization-length))
   ;;
   self)
  )

(setf (get readmarker::markermsg :md5sum-) "0f6a25db09d6960650631e475fb0ec55")
(setf (get readmarker::markermsg :datatype-) "readmarker/markermsg")
(setf (get readmarker::markermsg :definition-)
      "int32 image1_available
int32 image2_available
sensor_msgs/CompressedImage cimage1
sensor_msgs/CompressedImage cimage2

================================================================================
MSG: sensor_msgs/CompressedImage
# This message contains a compressed image

Header header        # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of cameara
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into to plane of the image

string format        # Specifies the format of the data
                     #   Acceptable values:
                     #     jpeg, png
uint8[] data         # Compressed image buffer

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :readmarker/markermsg "0f6a25db09d6960650631e475fb0ec55")


