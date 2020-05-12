// Auto-generated. Do not edit!

// (in-package cepton_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SensorInformation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.handle = null;
      this.serial_number = null;
      this.model_name = null;
      this.model = null;
      this.firmware_version = null;
      this.last_reported_temperature = null;
      this.last_reported_humidity = null;
      this.last_reported_age = null;
      this.measurement_period = null;
      this.ptp_ts = null;
      this.gps_ts_year = null;
      this.gps_ts_month = null;
      this.gps_ts_day = null;
      this.gps_ts_hour = null;
      this.gps_ts_min = null;
      this.gps_ts_sec = null;
      this.return_count = null;
      this.segment_count = null;
      this.is_mocked = null;
      this.is_pps_connected = null;
      this.is_nmea_connected = null;
      this.is_ptp_connected = null;
      this.is_calibrated = null;
      this.is_over_heated = null;
      this.cepton_sdk_version = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('handle')) {
        this.handle = initObj.handle
      }
      else {
        this.handle = 0;
      }
      if (initObj.hasOwnProperty('serial_number')) {
        this.serial_number = initObj.serial_number
      }
      else {
        this.serial_number = 0;
      }
      if (initObj.hasOwnProperty('model_name')) {
        this.model_name = initObj.model_name
      }
      else {
        this.model_name = '';
      }
      if (initObj.hasOwnProperty('model')) {
        this.model = initObj.model
      }
      else {
        this.model = 0;
      }
      if (initObj.hasOwnProperty('firmware_version')) {
        this.firmware_version = initObj.firmware_version
      }
      else {
        this.firmware_version = '';
      }
      if (initObj.hasOwnProperty('last_reported_temperature')) {
        this.last_reported_temperature = initObj.last_reported_temperature
      }
      else {
        this.last_reported_temperature = 0.0;
      }
      if (initObj.hasOwnProperty('last_reported_humidity')) {
        this.last_reported_humidity = initObj.last_reported_humidity
      }
      else {
        this.last_reported_humidity = 0.0;
      }
      if (initObj.hasOwnProperty('last_reported_age')) {
        this.last_reported_age = initObj.last_reported_age
      }
      else {
        this.last_reported_age = 0.0;
      }
      if (initObj.hasOwnProperty('measurement_period')) {
        this.measurement_period = initObj.measurement_period
      }
      else {
        this.measurement_period = 0.0;
      }
      if (initObj.hasOwnProperty('ptp_ts')) {
        this.ptp_ts = initObj.ptp_ts
      }
      else {
        this.ptp_ts = 0;
      }
      if (initObj.hasOwnProperty('gps_ts_year')) {
        this.gps_ts_year = initObj.gps_ts_year
      }
      else {
        this.gps_ts_year = 0;
      }
      if (initObj.hasOwnProperty('gps_ts_month')) {
        this.gps_ts_month = initObj.gps_ts_month
      }
      else {
        this.gps_ts_month = 0;
      }
      if (initObj.hasOwnProperty('gps_ts_day')) {
        this.gps_ts_day = initObj.gps_ts_day
      }
      else {
        this.gps_ts_day = 0;
      }
      if (initObj.hasOwnProperty('gps_ts_hour')) {
        this.gps_ts_hour = initObj.gps_ts_hour
      }
      else {
        this.gps_ts_hour = 0;
      }
      if (initObj.hasOwnProperty('gps_ts_min')) {
        this.gps_ts_min = initObj.gps_ts_min
      }
      else {
        this.gps_ts_min = 0;
      }
      if (initObj.hasOwnProperty('gps_ts_sec')) {
        this.gps_ts_sec = initObj.gps_ts_sec
      }
      else {
        this.gps_ts_sec = 0;
      }
      if (initObj.hasOwnProperty('return_count')) {
        this.return_count = initObj.return_count
      }
      else {
        this.return_count = 0;
      }
      if (initObj.hasOwnProperty('segment_count')) {
        this.segment_count = initObj.segment_count
      }
      else {
        this.segment_count = 0;
      }
      if (initObj.hasOwnProperty('is_mocked')) {
        this.is_mocked = initObj.is_mocked
      }
      else {
        this.is_mocked = false;
      }
      if (initObj.hasOwnProperty('is_pps_connected')) {
        this.is_pps_connected = initObj.is_pps_connected
      }
      else {
        this.is_pps_connected = false;
      }
      if (initObj.hasOwnProperty('is_nmea_connected')) {
        this.is_nmea_connected = initObj.is_nmea_connected
      }
      else {
        this.is_nmea_connected = false;
      }
      if (initObj.hasOwnProperty('is_ptp_connected')) {
        this.is_ptp_connected = initObj.is_ptp_connected
      }
      else {
        this.is_ptp_connected = false;
      }
      if (initObj.hasOwnProperty('is_calibrated')) {
        this.is_calibrated = initObj.is_calibrated
      }
      else {
        this.is_calibrated = false;
      }
      if (initObj.hasOwnProperty('is_over_heated')) {
        this.is_over_heated = initObj.is_over_heated
      }
      else {
        this.is_over_heated = false;
      }
      if (initObj.hasOwnProperty('cepton_sdk_version')) {
        this.cepton_sdk_version = initObj.cepton_sdk_version
      }
      else {
        this.cepton_sdk_version = 0;
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SensorInformation
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [handle]
    bufferOffset = _serializer.uint64(obj.handle, buffer, bufferOffset);
    // Serialize message field [serial_number]
    bufferOffset = _serializer.uint64(obj.serial_number, buffer, bufferOffset);
    // Serialize message field [model_name]
    bufferOffset = _serializer.string(obj.model_name, buffer, bufferOffset);
    // Serialize message field [model]
    bufferOffset = _serializer.uint16(obj.model, buffer, bufferOffset);
    // Serialize message field [firmware_version]
    bufferOffset = _serializer.string(obj.firmware_version, buffer, bufferOffset);
    // Serialize message field [last_reported_temperature]
    bufferOffset = _serializer.float32(obj.last_reported_temperature, buffer, bufferOffset);
    // Serialize message field [last_reported_humidity]
    bufferOffset = _serializer.float32(obj.last_reported_humidity, buffer, bufferOffset);
    // Serialize message field [last_reported_age]
    bufferOffset = _serializer.float32(obj.last_reported_age, buffer, bufferOffset);
    // Serialize message field [measurement_period]
    bufferOffset = _serializer.float32(obj.measurement_period, buffer, bufferOffset);
    // Serialize message field [ptp_ts]
    bufferOffset = _serializer.int64(obj.ptp_ts, buffer, bufferOffset);
    // Serialize message field [gps_ts_year]
    bufferOffset = _serializer.uint8(obj.gps_ts_year, buffer, bufferOffset);
    // Serialize message field [gps_ts_month]
    bufferOffset = _serializer.uint8(obj.gps_ts_month, buffer, bufferOffset);
    // Serialize message field [gps_ts_day]
    bufferOffset = _serializer.uint8(obj.gps_ts_day, buffer, bufferOffset);
    // Serialize message field [gps_ts_hour]
    bufferOffset = _serializer.uint8(obj.gps_ts_hour, buffer, bufferOffset);
    // Serialize message field [gps_ts_min]
    bufferOffset = _serializer.uint8(obj.gps_ts_min, buffer, bufferOffset);
    // Serialize message field [gps_ts_sec]
    bufferOffset = _serializer.uint8(obj.gps_ts_sec, buffer, bufferOffset);
    // Serialize message field [return_count]
    bufferOffset = _serializer.uint8(obj.return_count, buffer, bufferOffset);
    // Serialize message field [segment_count]
    bufferOffset = _serializer.uint8(obj.segment_count, buffer, bufferOffset);
    // Serialize message field [is_mocked]
    bufferOffset = _serializer.bool(obj.is_mocked, buffer, bufferOffset);
    // Serialize message field [is_pps_connected]
    bufferOffset = _serializer.bool(obj.is_pps_connected, buffer, bufferOffset);
    // Serialize message field [is_nmea_connected]
    bufferOffset = _serializer.bool(obj.is_nmea_connected, buffer, bufferOffset);
    // Serialize message field [is_ptp_connected]
    bufferOffset = _serializer.bool(obj.is_ptp_connected, buffer, bufferOffset);
    // Serialize message field [is_calibrated]
    bufferOffset = _serializer.bool(obj.is_calibrated, buffer, bufferOffset);
    // Serialize message field [is_over_heated]
    bufferOffset = _serializer.bool(obj.is_over_heated, buffer, bufferOffset);
    // Serialize message field [cepton_sdk_version]
    bufferOffset = _serializer.int16(obj.cepton_sdk_version, buffer, bufferOffset);
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SensorInformation
    let len;
    let data = new SensorInformation(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [handle]
    data.handle = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [serial_number]
    data.serial_number = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [model_name]
    data.model_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [model]
    data.model = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [firmware_version]
    data.firmware_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [last_reported_temperature]
    data.last_reported_temperature = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [last_reported_humidity]
    data.last_reported_humidity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [last_reported_age]
    data.last_reported_age = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [measurement_period]
    data.measurement_period = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ptp_ts]
    data.ptp_ts = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [gps_ts_year]
    data.gps_ts_year = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_ts_month]
    data.gps_ts_month = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_ts_day]
    data.gps_ts_day = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_ts_hour]
    data.gps_ts_hour = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_ts_min]
    data.gps_ts_min = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [gps_ts_sec]
    data.gps_ts_sec = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [return_count]
    data.return_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [segment_count]
    data.segment_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [is_mocked]
    data.is_mocked = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_pps_connected]
    data.is_pps_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_nmea_connected]
    data.is_nmea_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_ptp_connected]
    data.is_ptp_connected = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_calibrated]
    data.is_calibrated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_over_heated]
    data.is_over_heated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [cepton_sdk_version]
    data.cepton_sdk_version = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.model_name.length;
    length += object.firmware_version.length;
    length += object.data.length;
    return length + 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cepton_ros/SensorInformation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '17a2d5b6ea6272b0e293aadb5010d209';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SensorInformation(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.handle !== undefined) {
      resolved.handle = msg.handle;
    }
    else {
      resolved.handle = 0
    }

    if (msg.serial_number !== undefined) {
      resolved.serial_number = msg.serial_number;
    }
    else {
      resolved.serial_number = 0
    }

    if (msg.model_name !== undefined) {
      resolved.model_name = msg.model_name;
    }
    else {
      resolved.model_name = ''
    }

    if (msg.model !== undefined) {
      resolved.model = msg.model;
    }
    else {
      resolved.model = 0
    }

    if (msg.firmware_version !== undefined) {
      resolved.firmware_version = msg.firmware_version;
    }
    else {
      resolved.firmware_version = ''
    }

    if (msg.last_reported_temperature !== undefined) {
      resolved.last_reported_temperature = msg.last_reported_temperature;
    }
    else {
      resolved.last_reported_temperature = 0.0
    }

    if (msg.last_reported_humidity !== undefined) {
      resolved.last_reported_humidity = msg.last_reported_humidity;
    }
    else {
      resolved.last_reported_humidity = 0.0
    }

    if (msg.last_reported_age !== undefined) {
      resolved.last_reported_age = msg.last_reported_age;
    }
    else {
      resolved.last_reported_age = 0.0
    }

    if (msg.measurement_period !== undefined) {
      resolved.measurement_period = msg.measurement_period;
    }
    else {
      resolved.measurement_period = 0.0
    }

    if (msg.ptp_ts !== undefined) {
      resolved.ptp_ts = msg.ptp_ts;
    }
    else {
      resolved.ptp_ts = 0
    }

    if (msg.gps_ts_year !== undefined) {
      resolved.gps_ts_year = msg.gps_ts_year;
    }
    else {
      resolved.gps_ts_year = 0
    }

    if (msg.gps_ts_month !== undefined) {
      resolved.gps_ts_month = msg.gps_ts_month;
    }
    else {
      resolved.gps_ts_month = 0
    }

    if (msg.gps_ts_day !== undefined) {
      resolved.gps_ts_day = msg.gps_ts_day;
    }
    else {
      resolved.gps_ts_day = 0
    }

    if (msg.gps_ts_hour !== undefined) {
      resolved.gps_ts_hour = msg.gps_ts_hour;
    }
    else {
      resolved.gps_ts_hour = 0
    }

    if (msg.gps_ts_min !== undefined) {
      resolved.gps_ts_min = msg.gps_ts_min;
    }
    else {
      resolved.gps_ts_min = 0
    }

    if (msg.gps_ts_sec !== undefined) {
      resolved.gps_ts_sec = msg.gps_ts_sec;
    }
    else {
      resolved.gps_ts_sec = 0
    }

    if (msg.return_count !== undefined) {
      resolved.return_count = msg.return_count;
    }
    else {
      resolved.return_count = 0
    }

    if (msg.segment_count !== undefined) {
      resolved.segment_count = msg.segment_count;
    }
    else {
      resolved.segment_count = 0
    }

    if (msg.is_mocked !== undefined) {
      resolved.is_mocked = msg.is_mocked;
    }
    else {
      resolved.is_mocked = false
    }

    if (msg.is_pps_connected !== undefined) {
      resolved.is_pps_connected = msg.is_pps_connected;
    }
    else {
      resolved.is_pps_connected = false
    }

    if (msg.is_nmea_connected !== undefined) {
      resolved.is_nmea_connected = msg.is_nmea_connected;
    }
    else {
      resolved.is_nmea_connected = false
    }

    if (msg.is_ptp_connected !== undefined) {
      resolved.is_ptp_connected = msg.is_ptp_connected;
    }
    else {
      resolved.is_ptp_connected = false
    }

    if (msg.is_calibrated !== undefined) {
      resolved.is_calibrated = msg.is_calibrated;
    }
    else {
      resolved.is_calibrated = false
    }

    if (msg.is_over_heated !== undefined) {
      resolved.is_over_heated = msg.is_over_heated;
    }
    else {
      resolved.is_over_heated = false
    }

    if (msg.cepton_sdk_version !== undefined) {
      resolved.cepton_sdk_version = msg.cepton_sdk_version;
    }
    else {
      resolved.cepton_sdk_version = 0
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = []
    }

    return resolved;
    }
};

module.exports = SensorInformation;
