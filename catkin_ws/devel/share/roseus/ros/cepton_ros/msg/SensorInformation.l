;; Auto-generated. Do not edit!


(when (boundp 'cepton_ros::SensorInformation)
  (if (not (find-package "CEPTON_ROS"))
    (make-package "CEPTON_ROS"))
  (shadow 'SensorInformation (find-package "CEPTON_ROS")))
(unless (find-package "CEPTON_ROS::SENSORINFORMATION")
  (make-package "CEPTON_ROS::SENSORINFORMATION"))

(in-package "ROS")
;;//! \htmlinclude SensorInformation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cepton_ros::SensorInformation
  :super ros::object
  :slots (_header _handle _serial_number _model_name _model _firmware_version _last_reported_temperature _last_reported_humidity _last_reported_age _measurement_period _ptp_ts _gps_ts_year _gps_ts_month _gps_ts_day _gps_ts_hour _gps_ts_min _gps_ts_sec _return_count _segment_count _is_mocked _is_pps_connected _is_nmea_connected _is_ptp_connected _is_calibrated _is_over_heated _cepton_sdk_version _data ))

(defmethod cepton_ros::SensorInformation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:handle __handle) 0)
    ((:serial_number __serial_number) 0)
    ((:model_name __model_name) "")
    ((:model __model) 0)
    ((:firmware_version __firmware_version) "")
    ((:last_reported_temperature __last_reported_temperature) 0.0)
    ((:last_reported_humidity __last_reported_humidity) 0.0)
    ((:last_reported_age __last_reported_age) 0.0)
    ((:measurement_period __measurement_period) 0.0)
    ((:ptp_ts __ptp_ts) 0)
    ((:gps_ts_year __gps_ts_year) 0)
    ((:gps_ts_month __gps_ts_month) 0)
    ((:gps_ts_day __gps_ts_day) 0)
    ((:gps_ts_hour __gps_ts_hour) 0)
    ((:gps_ts_min __gps_ts_min) 0)
    ((:gps_ts_sec __gps_ts_sec) 0)
    ((:return_count __return_count) 0)
    ((:segment_count __segment_count) 0)
    ((:is_mocked __is_mocked) nil)
    ((:is_pps_connected __is_pps_connected) nil)
    ((:is_nmea_connected __is_nmea_connected) nil)
    ((:is_ptp_connected __is_ptp_connected) nil)
    ((:is_calibrated __is_calibrated) nil)
    ((:is_over_heated __is_over_heated) nil)
    ((:cepton_sdk_version __cepton_sdk_version) 0)
    ((:data __data) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _handle (round __handle))
   (setq _serial_number (round __serial_number))
   (setq _model_name (string __model_name))
   (setq _model (round __model))
   (setq _firmware_version (string __firmware_version))
   (setq _last_reported_temperature (float __last_reported_temperature))
   (setq _last_reported_humidity (float __last_reported_humidity))
   (setq _last_reported_age (float __last_reported_age))
   (setq _measurement_period (float __measurement_period))
   (setq _ptp_ts (round __ptp_ts))
   (setq _gps_ts_year (round __gps_ts_year))
   (setq _gps_ts_month (round __gps_ts_month))
   (setq _gps_ts_day (round __gps_ts_day))
   (setq _gps_ts_hour (round __gps_ts_hour))
   (setq _gps_ts_min (round __gps_ts_min))
   (setq _gps_ts_sec (round __gps_ts_sec))
   (setq _return_count (round __return_count))
   (setq _segment_count (round __segment_count))
   (setq _is_mocked __is_mocked)
   (setq _is_pps_connected __is_pps_connected)
   (setq _is_nmea_connected __is_nmea_connected)
   (setq _is_ptp_connected __is_ptp_connected)
   (setq _is_calibrated __is_calibrated)
   (setq _is_over_heated __is_over_heated)
   (setq _cepton_sdk_version (round __cepton_sdk_version))
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:handle
   (&optional __handle)
   (if __handle (setq _handle __handle)) _handle)
  (:serial_number
   (&optional __serial_number)
   (if __serial_number (setq _serial_number __serial_number)) _serial_number)
  (:model_name
   (&optional __model_name)
   (if __model_name (setq _model_name __model_name)) _model_name)
  (:model
   (&optional __model)
   (if __model (setq _model __model)) _model)
  (:firmware_version
   (&optional __firmware_version)
   (if __firmware_version (setq _firmware_version __firmware_version)) _firmware_version)
  (:last_reported_temperature
   (&optional __last_reported_temperature)
   (if __last_reported_temperature (setq _last_reported_temperature __last_reported_temperature)) _last_reported_temperature)
  (:last_reported_humidity
   (&optional __last_reported_humidity)
   (if __last_reported_humidity (setq _last_reported_humidity __last_reported_humidity)) _last_reported_humidity)
  (:last_reported_age
   (&optional __last_reported_age)
   (if __last_reported_age (setq _last_reported_age __last_reported_age)) _last_reported_age)
  (:measurement_period
   (&optional __measurement_period)
   (if __measurement_period (setq _measurement_period __measurement_period)) _measurement_period)
  (:ptp_ts
   (&optional __ptp_ts)
   (if __ptp_ts (setq _ptp_ts __ptp_ts)) _ptp_ts)
  (:gps_ts_year
   (&optional __gps_ts_year)
   (if __gps_ts_year (setq _gps_ts_year __gps_ts_year)) _gps_ts_year)
  (:gps_ts_month
   (&optional __gps_ts_month)
   (if __gps_ts_month (setq _gps_ts_month __gps_ts_month)) _gps_ts_month)
  (:gps_ts_day
   (&optional __gps_ts_day)
   (if __gps_ts_day (setq _gps_ts_day __gps_ts_day)) _gps_ts_day)
  (:gps_ts_hour
   (&optional __gps_ts_hour)
   (if __gps_ts_hour (setq _gps_ts_hour __gps_ts_hour)) _gps_ts_hour)
  (:gps_ts_min
   (&optional __gps_ts_min)
   (if __gps_ts_min (setq _gps_ts_min __gps_ts_min)) _gps_ts_min)
  (:gps_ts_sec
   (&optional __gps_ts_sec)
   (if __gps_ts_sec (setq _gps_ts_sec __gps_ts_sec)) _gps_ts_sec)
  (:return_count
   (&optional __return_count)
   (if __return_count (setq _return_count __return_count)) _return_count)
  (:segment_count
   (&optional __segment_count)
   (if __segment_count (setq _segment_count __segment_count)) _segment_count)
  (:is_mocked
   (&optional __is_mocked)
   (if __is_mocked (setq _is_mocked __is_mocked)) _is_mocked)
  (:is_pps_connected
   (&optional __is_pps_connected)
   (if __is_pps_connected (setq _is_pps_connected __is_pps_connected)) _is_pps_connected)
  (:is_nmea_connected
   (&optional __is_nmea_connected)
   (if __is_nmea_connected (setq _is_nmea_connected __is_nmea_connected)) _is_nmea_connected)
  (:is_ptp_connected
   (&optional __is_ptp_connected)
   (if __is_ptp_connected (setq _is_ptp_connected __is_ptp_connected)) _is_ptp_connected)
  (:is_calibrated
   (&optional __is_calibrated)
   (if __is_calibrated (setq _is_calibrated __is_calibrated)) _is_calibrated)
  (:is_over_heated
   (&optional __is_over_heated)
   (if __is_over_heated (setq _is_over_heated __is_over_heated)) _is_over_heated)
  (:cepton_sdk_version
   (&optional __cepton_sdk_version)
   (if __cepton_sdk_version (setq _cepton_sdk_version __cepton_sdk_version)) _cepton_sdk_version)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _handle
    8
    ;; uint64 _serial_number
    8
    ;; string _model_name
    4 (length _model_name)
    ;; uint16 _model
    2
    ;; string _firmware_version
    4 (length _firmware_version)
    ;; float32 _last_reported_temperature
    4
    ;; float32 _last_reported_humidity
    4
    ;; float32 _last_reported_age
    4
    ;; float32 _measurement_period
    4
    ;; int64 _ptp_ts
    8
    ;; uint8 _gps_ts_year
    1
    ;; uint8 _gps_ts_month
    1
    ;; uint8 _gps_ts_day
    1
    ;; uint8 _gps_ts_hour
    1
    ;; uint8 _gps_ts_min
    1
    ;; uint8 _gps_ts_sec
    1
    ;; uint8 _return_count
    1
    ;; uint8 _segment_count
    1
    ;; bool _is_mocked
    1
    ;; bool _is_pps_connected
    1
    ;; bool _is_nmea_connected
    1
    ;; bool _is_ptp_connected
    1
    ;; bool _is_calibrated
    1
    ;; bool _is_over_heated
    1
    ;; int16 _cepton_sdk_version
    2
    ;; uint8[] _data
    (* 1    (length _data)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _handle
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _handle (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _handle) (= (length (_handle . bv)) 2)) ;; bignum
              (write-long (ash (elt (_handle . bv) 0) 0) s)
              (write-long (ash (elt (_handle . bv) 1) -1) s))
             ((and (class _handle) (= (length (_handle . bv)) 1)) ;; big1
              (write-long (elt (_handle . bv) 0) s)
              (write-long (if (>= _handle 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _handle s)(write-long (if (>= _handle 0) 0 #xffffffff) s)))
     ;; uint64 _serial_number
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _serial_number (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _serial_number) (= (length (_serial_number . bv)) 2)) ;; bignum
              (write-long (ash (elt (_serial_number . bv) 0) 0) s)
              (write-long (ash (elt (_serial_number . bv) 1) -1) s))
             ((and (class _serial_number) (= (length (_serial_number . bv)) 1)) ;; big1
              (write-long (elt (_serial_number . bv) 0) s)
              (write-long (if (>= _serial_number 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _serial_number s)(write-long (if (>= _serial_number 0) 0 #xffffffff) s)))
     ;; string _model_name
       (write-long (length _model_name) s) (princ _model_name s)
     ;; uint16 _model
       (write-word _model s)
     ;; string _firmware_version
       (write-long (length _firmware_version) s) (princ _firmware_version s)
     ;; float32 _last_reported_temperature
       (sys::poke _last_reported_temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _last_reported_humidity
       (sys::poke _last_reported_humidity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _last_reported_age
       (sys::poke _last_reported_age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _measurement_period
       (sys::poke _measurement_period (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int64 _ptp_ts
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _ptp_ts (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _ptp_ts) (= (length (_ptp_ts . bv)) 2)) ;; bignum
              (write-long (ash (elt (_ptp_ts . bv) 0) 0) s)
              (write-long (ash (elt (_ptp_ts . bv) 1) -1) s))
             ((and (class _ptp_ts) (= (length (_ptp_ts . bv)) 1)) ;; big1
              (write-long (elt (_ptp_ts . bv) 0) s)
              (write-long (if (>= _ptp_ts 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _ptp_ts s)(write-long (if (>= _ptp_ts 0) 0 #xffffffff) s)))
     ;; uint8 _gps_ts_year
       (write-byte _gps_ts_year s)
     ;; uint8 _gps_ts_month
       (write-byte _gps_ts_month s)
     ;; uint8 _gps_ts_day
       (write-byte _gps_ts_day s)
     ;; uint8 _gps_ts_hour
       (write-byte _gps_ts_hour s)
     ;; uint8 _gps_ts_min
       (write-byte _gps_ts_min s)
     ;; uint8 _gps_ts_sec
       (write-byte _gps_ts_sec s)
     ;; uint8 _return_count
       (write-byte _return_count s)
     ;; uint8 _segment_count
       (write-byte _segment_count s)
     ;; bool _is_mocked
       (if _is_mocked (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_pps_connected
       (if _is_pps_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_nmea_connected
       (if _is_nmea_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_ptp_connected
       (if _is_ptp_connected (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_calibrated
       (if _is_calibrated (write-byte -1 s) (write-byte 0 s))
     ;; bool _is_over_heated
       (if _is_over_heated (write-byte -1 s) (write-byte 0 s))
     ;; int16 _cepton_sdk_version
       (write-word _cepton_sdk_version s)
     ;; uint8[] _data
     (write-long (length _data) s)
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _handle
     
#+(or :alpha :irix6 :x86_64)
      (setf _handle (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _handle (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _serial_number
     
#+(or :alpha :irix6 :x86_64)
      (setf _serial_number (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _serial_number (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _model_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _model_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint16 _model
     (setq _model (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _firmware_version
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _firmware_version (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _last_reported_temperature
     (setq _last_reported_temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _last_reported_humidity
     (setq _last_reported_humidity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _last_reported_age
     (setq _last_reported_age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _measurement_period
     (setq _measurement_period (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int64 _ptp_ts
#+(or :alpha :irix6 :x86_64)
      (setf _ptp_ts (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _ptp_ts (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint8 _gps_ts_year
     (setq _gps_ts_year (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gps_ts_month
     (setq _gps_ts_month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gps_ts_day
     (setq _gps_ts_day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gps_ts_hour
     (setq _gps_ts_hour (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gps_ts_min
     (setq _gps_ts_min (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _gps_ts_sec
     (setq _gps_ts_sec (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _return_count
     (setq _return_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _segment_count
     (setq _segment_count (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _is_mocked
     (setq _is_mocked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_pps_connected
     (setq _is_pps_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_nmea_connected
     (setq _is_nmea_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_ptp_connected
     (setq _is_ptp_connected (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_calibrated
     (setq _is_calibrated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _is_over_heated
     (setq _is_over_heated (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _cepton_sdk_version
     (setq _cepton_sdk_version (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8[] _data
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data (make-array n :element-type :char))
     (replace _data buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get cepton_ros::SensorInformation :md5sum-) "17a2d5b6ea6272b0e293aadb5010d209")
(setf (get cepton_ros::SensorInformation :datatype-) "cepton_ros/SensorInformation")
(setf (get cepton_ros::SensorInformation :definition-)
      "Header header

uint64 handle
uint64 serial_number
string model_name
uint16 model
string firmware_version

float32 last_reported_temperature       
float32 last_reported_humidity          
float32 last_reported_age              

float32 measurement_period  

int64 ptp_ts  

uint8 gps_ts_year  
uint8 gps_ts_month  
uint8 gps_ts_day    
uint8 gps_ts_hour   
uint8 gps_ts_min    
uint8 gps_ts_sec    

uint8 return_count
uint8 segment_count  

bool is_mocked
bool is_pps_connected
bool is_nmea_connected
bool is_ptp_connected
bool is_calibrated
bool is_over_heated

int16 cepton_sdk_version
uint8[] data # `cepton_sdk::SensorInformation` bytes
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



(provide :cepton_ros/SensorInformation "17a2d5b6ea6272b0e293aadb5010d209")


