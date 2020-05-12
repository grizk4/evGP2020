; Auto-generated. Do not edit!


(cl:in-package cepton_ros-msg)


;//! \htmlinclude SensorInformation.msg.html

(cl:defclass <SensorInformation> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (handle
    :reader handle
    :initarg :handle
    :type cl:integer
    :initform 0)
   (serial_number
    :reader serial_number
    :initarg :serial_number
    :type cl:integer
    :initform 0)
   (model_name
    :reader model_name
    :initarg :model_name
    :type cl:string
    :initform "")
   (model
    :reader model
    :initarg :model
    :type cl:fixnum
    :initform 0)
   (firmware_version
    :reader firmware_version
    :initarg :firmware_version
    :type cl:string
    :initform "")
   (last_reported_temperature
    :reader last_reported_temperature
    :initarg :last_reported_temperature
    :type cl:float
    :initform 0.0)
   (last_reported_humidity
    :reader last_reported_humidity
    :initarg :last_reported_humidity
    :type cl:float
    :initform 0.0)
   (last_reported_age
    :reader last_reported_age
    :initarg :last_reported_age
    :type cl:float
    :initform 0.0)
   (measurement_period
    :reader measurement_period
    :initarg :measurement_period
    :type cl:float
    :initform 0.0)
   (ptp_ts
    :reader ptp_ts
    :initarg :ptp_ts
    :type cl:integer
    :initform 0)
   (gps_ts_year
    :reader gps_ts_year
    :initarg :gps_ts_year
    :type cl:fixnum
    :initform 0)
   (gps_ts_month
    :reader gps_ts_month
    :initarg :gps_ts_month
    :type cl:fixnum
    :initform 0)
   (gps_ts_day
    :reader gps_ts_day
    :initarg :gps_ts_day
    :type cl:fixnum
    :initform 0)
   (gps_ts_hour
    :reader gps_ts_hour
    :initarg :gps_ts_hour
    :type cl:fixnum
    :initform 0)
   (gps_ts_min
    :reader gps_ts_min
    :initarg :gps_ts_min
    :type cl:fixnum
    :initform 0)
   (gps_ts_sec
    :reader gps_ts_sec
    :initarg :gps_ts_sec
    :type cl:fixnum
    :initform 0)
   (return_count
    :reader return_count
    :initarg :return_count
    :type cl:fixnum
    :initform 0)
   (segment_count
    :reader segment_count
    :initarg :segment_count
    :type cl:fixnum
    :initform 0)
   (is_mocked
    :reader is_mocked
    :initarg :is_mocked
    :type cl:boolean
    :initform cl:nil)
   (is_pps_connected
    :reader is_pps_connected
    :initarg :is_pps_connected
    :type cl:boolean
    :initform cl:nil)
   (is_nmea_connected
    :reader is_nmea_connected
    :initarg :is_nmea_connected
    :type cl:boolean
    :initform cl:nil)
   (is_ptp_connected
    :reader is_ptp_connected
    :initarg :is_ptp_connected
    :type cl:boolean
    :initform cl:nil)
   (is_calibrated
    :reader is_calibrated
    :initarg :is_calibrated
    :type cl:boolean
    :initform cl:nil)
   (is_over_heated
    :reader is_over_heated
    :initarg :is_over_heated
    :type cl:boolean
    :initform cl:nil)
   (cepton_sdk_version
    :reader cepton_sdk_version
    :initarg :cepton_sdk_version
    :type cl:fixnum
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SensorInformation (<SensorInformation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SensorInformation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SensorInformation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cepton_ros-msg:<SensorInformation> is deprecated: use cepton_ros-msg:SensorInformation instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:header-val is deprecated.  Use cepton_ros-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'handle-val :lambda-list '(m))
(cl:defmethod handle-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:handle-val is deprecated.  Use cepton_ros-msg:handle instead.")
  (handle m))

(cl:ensure-generic-function 'serial_number-val :lambda-list '(m))
(cl:defmethod serial_number-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:serial_number-val is deprecated.  Use cepton_ros-msg:serial_number instead.")
  (serial_number m))

(cl:ensure-generic-function 'model_name-val :lambda-list '(m))
(cl:defmethod model_name-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:model_name-val is deprecated.  Use cepton_ros-msg:model_name instead.")
  (model_name m))

(cl:ensure-generic-function 'model-val :lambda-list '(m))
(cl:defmethod model-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:model-val is deprecated.  Use cepton_ros-msg:model instead.")
  (model m))

(cl:ensure-generic-function 'firmware_version-val :lambda-list '(m))
(cl:defmethod firmware_version-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:firmware_version-val is deprecated.  Use cepton_ros-msg:firmware_version instead.")
  (firmware_version m))

(cl:ensure-generic-function 'last_reported_temperature-val :lambda-list '(m))
(cl:defmethod last_reported_temperature-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:last_reported_temperature-val is deprecated.  Use cepton_ros-msg:last_reported_temperature instead.")
  (last_reported_temperature m))

(cl:ensure-generic-function 'last_reported_humidity-val :lambda-list '(m))
(cl:defmethod last_reported_humidity-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:last_reported_humidity-val is deprecated.  Use cepton_ros-msg:last_reported_humidity instead.")
  (last_reported_humidity m))

(cl:ensure-generic-function 'last_reported_age-val :lambda-list '(m))
(cl:defmethod last_reported_age-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:last_reported_age-val is deprecated.  Use cepton_ros-msg:last_reported_age instead.")
  (last_reported_age m))

(cl:ensure-generic-function 'measurement_period-val :lambda-list '(m))
(cl:defmethod measurement_period-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:measurement_period-val is deprecated.  Use cepton_ros-msg:measurement_period instead.")
  (measurement_period m))

(cl:ensure-generic-function 'ptp_ts-val :lambda-list '(m))
(cl:defmethod ptp_ts-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:ptp_ts-val is deprecated.  Use cepton_ros-msg:ptp_ts instead.")
  (ptp_ts m))

(cl:ensure-generic-function 'gps_ts_year-val :lambda-list '(m))
(cl:defmethod gps_ts_year-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:gps_ts_year-val is deprecated.  Use cepton_ros-msg:gps_ts_year instead.")
  (gps_ts_year m))

(cl:ensure-generic-function 'gps_ts_month-val :lambda-list '(m))
(cl:defmethod gps_ts_month-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:gps_ts_month-val is deprecated.  Use cepton_ros-msg:gps_ts_month instead.")
  (gps_ts_month m))

(cl:ensure-generic-function 'gps_ts_day-val :lambda-list '(m))
(cl:defmethod gps_ts_day-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:gps_ts_day-val is deprecated.  Use cepton_ros-msg:gps_ts_day instead.")
  (gps_ts_day m))

(cl:ensure-generic-function 'gps_ts_hour-val :lambda-list '(m))
(cl:defmethod gps_ts_hour-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:gps_ts_hour-val is deprecated.  Use cepton_ros-msg:gps_ts_hour instead.")
  (gps_ts_hour m))

(cl:ensure-generic-function 'gps_ts_min-val :lambda-list '(m))
(cl:defmethod gps_ts_min-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:gps_ts_min-val is deprecated.  Use cepton_ros-msg:gps_ts_min instead.")
  (gps_ts_min m))

(cl:ensure-generic-function 'gps_ts_sec-val :lambda-list '(m))
(cl:defmethod gps_ts_sec-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:gps_ts_sec-val is deprecated.  Use cepton_ros-msg:gps_ts_sec instead.")
  (gps_ts_sec m))

(cl:ensure-generic-function 'return_count-val :lambda-list '(m))
(cl:defmethod return_count-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:return_count-val is deprecated.  Use cepton_ros-msg:return_count instead.")
  (return_count m))

(cl:ensure-generic-function 'segment_count-val :lambda-list '(m))
(cl:defmethod segment_count-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:segment_count-val is deprecated.  Use cepton_ros-msg:segment_count instead.")
  (segment_count m))

(cl:ensure-generic-function 'is_mocked-val :lambda-list '(m))
(cl:defmethod is_mocked-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:is_mocked-val is deprecated.  Use cepton_ros-msg:is_mocked instead.")
  (is_mocked m))

(cl:ensure-generic-function 'is_pps_connected-val :lambda-list '(m))
(cl:defmethod is_pps_connected-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:is_pps_connected-val is deprecated.  Use cepton_ros-msg:is_pps_connected instead.")
  (is_pps_connected m))

(cl:ensure-generic-function 'is_nmea_connected-val :lambda-list '(m))
(cl:defmethod is_nmea_connected-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:is_nmea_connected-val is deprecated.  Use cepton_ros-msg:is_nmea_connected instead.")
  (is_nmea_connected m))

(cl:ensure-generic-function 'is_ptp_connected-val :lambda-list '(m))
(cl:defmethod is_ptp_connected-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:is_ptp_connected-val is deprecated.  Use cepton_ros-msg:is_ptp_connected instead.")
  (is_ptp_connected m))

(cl:ensure-generic-function 'is_calibrated-val :lambda-list '(m))
(cl:defmethod is_calibrated-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:is_calibrated-val is deprecated.  Use cepton_ros-msg:is_calibrated instead.")
  (is_calibrated m))

(cl:ensure-generic-function 'is_over_heated-val :lambda-list '(m))
(cl:defmethod is_over_heated-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:is_over_heated-val is deprecated.  Use cepton_ros-msg:is_over_heated instead.")
  (is_over_heated m))

(cl:ensure-generic-function 'cepton_sdk_version-val :lambda-list '(m))
(cl:defmethod cepton_sdk_version-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:cepton_sdk_version-val is deprecated.  Use cepton_ros-msg:cepton_sdk_version instead.")
  (cepton_sdk_version m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <SensorInformation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cepton_ros-msg:data-val is deprecated.  Use cepton_ros-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SensorInformation>) ostream)
  "Serializes a message object of type '<SensorInformation>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'handle)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'serial_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'serial_number)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'model_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'model_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'model)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'model)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'firmware_version))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'firmware_version))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'last_reported_temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'last_reported_humidity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'last_reported_age))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'measurement_period))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'ptp_ts)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_hour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_min)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_sec)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'return_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'segment_count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_mocked) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_pps_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_nmea_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_ptp_connected) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_calibrated) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_over_heated) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'cepton_sdk_version)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SensorInformation>) istream)
  "Deserializes a message object of type '<SensorInformation>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'handle)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'serial_number)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'model_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'model_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'model)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'model)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'firmware_version) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'firmware_version) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_reported_temperature) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_reported_humidity) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'last_reported_age) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measurement_period) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ptp_ts) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_hour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_min)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_ts_sec)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'return_count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'segment_count)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_mocked) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_pps_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_nmea_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_ptp_connected) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_calibrated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'is_over_heated) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cepton_sdk_version) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SensorInformation>)))
  "Returns string type for a message object of type '<SensorInformation>"
  "cepton_ros/SensorInformation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SensorInformation)))
  "Returns string type for a message object of type 'SensorInformation"
  "cepton_ros/SensorInformation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SensorInformation>)))
  "Returns md5sum for a message object of type '<SensorInformation>"
  "17a2d5b6ea6272b0e293aadb5010d209")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SensorInformation)))
  "Returns md5sum for a message object of type 'SensorInformation"
  "17a2d5b6ea6272b0e293aadb5010d209")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SensorInformation>)))
  "Returns full string definition for message of type '<SensorInformation>"
  (cl:format cl:nil "Header header~%~%uint64 handle~%uint64 serial_number~%string model_name~%uint16 model~%string firmware_version~%~%float32 last_reported_temperature       ~%float32 last_reported_humidity          ~%float32 last_reported_age              ~%~%float32 measurement_period  ~%~%int64 ptp_ts  ~%~%uint8 gps_ts_year  ~%uint8 gps_ts_month  ~%uint8 gps_ts_day    ~%uint8 gps_ts_hour   ~%uint8 gps_ts_min    ~%uint8 gps_ts_sec    ~%~%uint8 return_count~%uint8 segment_count  ~%~%bool is_mocked~%bool is_pps_connected~%bool is_nmea_connected~%bool is_ptp_connected~%bool is_calibrated~%bool is_over_heated~%~%int16 cepton_sdk_version~%uint8[] data # `cepton_sdk::SensorInformation` bytes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SensorInformation)))
  "Returns full string definition for message of type 'SensorInformation"
  (cl:format cl:nil "Header header~%~%uint64 handle~%uint64 serial_number~%string model_name~%uint16 model~%string firmware_version~%~%float32 last_reported_temperature       ~%float32 last_reported_humidity          ~%float32 last_reported_age              ~%~%float32 measurement_period  ~%~%int64 ptp_ts  ~%~%uint8 gps_ts_year  ~%uint8 gps_ts_month  ~%uint8 gps_ts_day    ~%uint8 gps_ts_hour   ~%uint8 gps_ts_min    ~%uint8 gps_ts_sec    ~%~%uint8 return_count~%uint8 segment_count  ~%~%bool is_mocked~%bool is_pps_connected~%bool is_nmea_connected~%bool is_ptp_connected~%bool is_calibrated~%bool is_over_heated~%~%int16 cepton_sdk_version~%uint8[] data # `cepton_sdk::SensorInformation` bytes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SensorInformation>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4 (cl:length (cl:slot-value msg 'model_name))
     2
     4 (cl:length (cl:slot-value msg 'firmware_version))
     4
     4
     4
     4
     8
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SensorInformation>))
  "Converts a ROS message object to a list"
  (cl:list 'SensorInformation
    (cl:cons ':header (header msg))
    (cl:cons ':handle (handle msg))
    (cl:cons ':serial_number (serial_number msg))
    (cl:cons ':model_name (model_name msg))
    (cl:cons ':model (model msg))
    (cl:cons ':firmware_version (firmware_version msg))
    (cl:cons ':last_reported_temperature (last_reported_temperature msg))
    (cl:cons ':last_reported_humidity (last_reported_humidity msg))
    (cl:cons ':last_reported_age (last_reported_age msg))
    (cl:cons ':measurement_period (measurement_period msg))
    (cl:cons ':ptp_ts (ptp_ts msg))
    (cl:cons ':gps_ts_year (gps_ts_year msg))
    (cl:cons ':gps_ts_month (gps_ts_month msg))
    (cl:cons ':gps_ts_day (gps_ts_day msg))
    (cl:cons ':gps_ts_hour (gps_ts_hour msg))
    (cl:cons ':gps_ts_min (gps_ts_min msg))
    (cl:cons ':gps_ts_sec (gps_ts_sec msg))
    (cl:cons ':return_count (return_count msg))
    (cl:cons ':segment_count (segment_count msg))
    (cl:cons ':is_mocked (is_mocked msg))
    (cl:cons ':is_pps_connected (is_pps_connected msg))
    (cl:cons ':is_nmea_connected (is_nmea_connected msg))
    (cl:cons ':is_ptp_connected (is_ptp_connected msg))
    (cl:cons ':is_calibrated (is_calibrated msg))
    (cl:cons ':is_over_heated (is_over_heated msg))
    (cl:cons ':cepton_sdk_version (cepton_sdk_version msg))
    (cl:cons ':data (data msg))
))
