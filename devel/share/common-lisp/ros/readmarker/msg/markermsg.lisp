; Auto-generated. Do not edit!


(cl:in-package readmarker-msg)


;//! \htmlinclude markermsg.msg.html

(cl:defclass <markermsg> (roslisp-msg-protocol:ros-message)
  ((image1_available
    :reader image1_available
    :initarg :image1_available
    :type cl:integer
    :initform 0)
   (image2_available
    :reader image2_available
    :initarg :image2_available
    :type cl:integer
    :initform 0)
   (cimage1
    :reader cimage1
    :initarg :cimage1
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage))
   (cimage2
    :reader cimage2
    :initarg :cimage2
    :type sensor_msgs-msg:CompressedImage
    :initform (cl:make-instance 'sensor_msgs-msg:CompressedImage)))
)

(cl:defclass markermsg (<markermsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <markermsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'markermsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name readmarker-msg:<markermsg> is deprecated: use readmarker-msg:markermsg instead.")))

(cl:ensure-generic-function 'image1_available-val :lambda-list '(m))
(cl:defmethod image1_available-val ((m <markermsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader readmarker-msg:image1_available-val is deprecated.  Use readmarker-msg:image1_available instead.")
  (image1_available m))

(cl:ensure-generic-function 'image2_available-val :lambda-list '(m))
(cl:defmethod image2_available-val ((m <markermsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader readmarker-msg:image2_available-val is deprecated.  Use readmarker-msg:image2_available instead.")
  (image2_available m))

(cl:ensure-generic-function 'cimage1-val :lambda-list '(m))
(cl:defmethod cimage1-val ((m <markermsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader readmarker-msg:cimage1-val is deprecated.  Use readmarker-msg:cimage1 instead.")
  (cimage1 m))

(cl:ensure-generic-function 'cimage2-val :lambda-list '(m))
(cl:defmethod cimage2-val ((m <markermsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader readmarker-msg:cimage2-val is deprecated.  Use readmarker-msg:cimage2 instead.")
  (cimage2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <markermsg>) ostream)
  "Serializes a message object of type '<markermsg>"
  (cl:let* ((signed (cl:slot-value msg 'image1_available)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'image2_available)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cimage1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cimage2) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <markermsg>) istream)
  "Deserializes a message object of type '<markermsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image1_available) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image2_available) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cimage1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cimage2) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<markermsg>)))
  "Returns string type for a message object of type '<markermsg>"
  "readmarker/markermsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'markermsg)))
  "Returns string type for a message object of type 'markermsg"
  "readmarker/markermsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<markermsg>)))
  "Returns md5sum for a message object of type '<markermsg>"
  "0f6a25db09d6960650631e475fb0ec55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'markermsg)))
  "Returns md5sum for a message object of type 'markermsg"
  "0f6a25db09d6960650631e475fb0ec55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<markermsg>)))
  "Returns full string definition for message of type '<markermsg>"
  (cl:format cl:nil "int32 image1_available~%int32 image2_available~%sensor_msgs/CompressedImage cimage1~%sensor_msgs/CompressedImage cimage2~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'markermsg)))
  "Returns full string definition for message of type 'markermsg"
  (cl:format cl:nil "int32 image1_available~%int32 image2_available~%sensor_msgs/CompressedImage cimage1~%sensor_msgs/CompressedImage cimage2~%~%================================================================================~%MSG: sensor_msgs/CompressedImage~%# This message contains a compressed image~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of cameara~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%~%string format        # Specifies the format of the data~%                     #   Acceptable values:~%                     #     jpeg, png~%uint8[] data         # Compressed image buffer~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <markermsg>))
  (cl:+ 0
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cimage1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cimage2))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <markermsg>))
  "Converts a ROS message object to a list"
  (cl:list 'markermsg
    (cl:cons ':image1_available (image1_available msg))
    (cl:cons ':image2_available (image2_available msg))
    (cl:cons ':cimage1 (cimage1 msg))
    (cl:cons ':cimage2 (cimage2 msg))
))
