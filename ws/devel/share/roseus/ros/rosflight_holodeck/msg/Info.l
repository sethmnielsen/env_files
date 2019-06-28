;; Auto-generated. Do not edit!


(when (boundp 'rosflight_holodeck::Info)
  (if (not (find-package "ROSFLIGHT_HOLODECK"))
    (make-package "ROSFLIGHT_HOLODECK"))
  (shadow 'Info (find-package "ROSFLIGHT_HOLODECK")))
(unless (find-package "ROSFLIGHT_HOLODECK::INFO")
  (make-package "ROSFLIGHT_HOLODECK::INFO"))

(in-package "ROS")
;;//! \htmlinclude Info.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rosflight_holodeck::Info
  :super ros::object
  :slots (_header _collision _holodeck_position _outputs ))

(defmethod rosflight_holodeck::Info
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:collision __collision) nil)
    ((:holodeck_position __holodeck_position) (instance geometry_msgs::Vector3 :init))
    ((:outputs __outputs) (make-array 4 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _collision __collision)
   (setq _holodeck_position __holodeck_position)
   (setq _outputs __outputs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:collision
   (&optional __collision)
   (if __collision (setq _collision __collision)) _collision)
  (:holodeck_position
   (&rest __holodeck_position)
   (if (keywordp (car __holodeck_position))
       (send* _holodeck_position __holodeck_position)
     (progn
       (if __holodeck_position (setq _holodeck_position (car __holodeck_position)))
       _holodeck_position)))
  (:outputs
   (&optional __outputs)
   (if __outputs (setq _outputs __outputs)) _outputs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _collision
    1
    ;; geometry_msgs/Vector3 _holodeck_position
    (send _holodeck_position :serialization-length)
    ;; float32[4] _outputs
    (* 4    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _collision
       (if _collision (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Vector3 _holodeck_position
       (send _holodeck_position :serialize s)
     ;; float32[4] _outputs
     (dotimes (i 4)
       (sys::poke (elt _outputs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _collision
     (setq _collision (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _holodeck_position
     (send _holodeck_position :deserialize buf ptr-) (incf ptr- (send _holodeck_position :serialization-length))
   ;; float32[4] _outputs
   (dotimes (i (length _outputs))
     (setf (elt _outputs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get rosflight_holodeck::Info :md5sum-) "104302e93cde498ce9b78f09171e075c")
(setf (get rosflight_holodeck::Info :datatype-) "rosflight_holodeck/Info")
(setf (get rosflight_holodeck::Info :definition-)
      "# rosflight_holodeck info message

Header header

bool collision         
geometry_msgs/Vector3 holodeck_position      
float32[4] outputs 
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
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rosflight_holodeck/Info "104302e93cde498ce9b78f09171e075c")


