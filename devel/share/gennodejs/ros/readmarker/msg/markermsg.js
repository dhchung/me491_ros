// Auto-generated. Do not edit!

// (in-package readmarker.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

class markermsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image1_available = null;
      this.image2_available = null;
      this.cimage1 = null;
      this.cimage2 = null;
    }
    else {
      if (initObj.hasOwnProperty('image1_available')) {
        this.image1_available = initObj.image1_available
      }
      else {
        this.image1_available = 0;
      }
      if (initObj.hasOwnProperty('image2_available')) {
        this.image2_available = initObj.image2_available
      }
      else {
        this.image2_available = 0;
      }
      if (initObj.hasOwnProperty('cimage1')) {
        this.cimage1 = initObj.cimage1
      }
      else {
        this.cimage1 = new sensor_msgs.msg.CompressedImage();
      }
      if (initObj.hasOwnProperty('cimage2')) {
        this.cimage2 = initObj.cimage2
      }
      else {
        this.cimage2 = new sensor_msgs.msg.CompressedImage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type markermsg
    // Serialize message field [image1_available]
    bufferOffset = _serializer.int32(obj.image1_available, buffer, bufferOffset);
    // Serialize message field [image2_available]
    bufferOffset = _serializer.int32(obj.image2_available, buffer, bufferOffset);
    // Serialize message field [cimage1]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.cimage1, buffer, bufferOffset);
    // Serialize message field [cimage2]
    bufferOffset = sensor_msgs.msg.CompressedImage.serialize(obj.cimage2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type markermsg
    let len;
    let data = new markermsg(null);
    // Deserialize message field [image1_available]
    data.image1_available = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [image2_available]
    data.image2_available = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cimage1]
    data.cimage1 = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    // Deserialize message field [cimage2]
    data.cimage2 = sensor_msgs.msg.CompressedImage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.cimage1);
    length += sensor_msgs.msg.CompressedImage.getMessageSize(object.cimage2);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'readmarker/markermsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f6a25db09d6960650631e475fb0ec55';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 image1_available
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new markermsg(null);
    if (msg.image1_available !== undefined) {
      resolved.image1_available = msg.image1_available;
    }
    else {
      resolved.image1_available = 0
    }

    if (msg.image2_available !== undefined) {
      resolved.image2_available = msg.image2_available;
    }
    else {
      resolved.image2_available = 0
    }

    if (msg.cimage1 !== undefined) {
      resolved.cimage1 = sensor_msgs.msg.CompressedImage.Resolve(msg.cimage1)
    }
    else {
      resolved.cimage1 = new sensor_msgs.msg.CompressedImage()
    }

    if (msg.cimage2 !== undefined) {
      resolved.cimage2 = sensor_msgs.msg.CompressedImage.Resolve(msg.cimage2)
    }
    else {
      resolved.cimage2 = new sensor_msgs.msg.CompressedImage()
    }

    return resolved;
    }
};

module.exports = markermsg;
