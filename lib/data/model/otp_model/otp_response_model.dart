import 'dart:convert';
/// success : true
/// user : "653e5ddc00dcd2624d5281e8"
/// token : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyIjoiNjUzZTVkZGMwMGRjZDI2MjRkNTI4MWU4IiwiaWF0IjoxNzAxNjgyMzkyfQ.m_6-iUCGzn3ybT8A-41qxg9SSDv2W86TyXLfHH8r2mE"
/// user_type : "admin"
/// message : "OTP matched successfully!"

OtpResponseModel otpResponseModelFromJson(String str) => OtpResponseModel.fromJson(json.decode(str));
String otpResponseModelToJson(OtpResponseModel data) => json.encode(data.toJson());
class OtpResponseModel {
  OtpResponseModel({
      bool? success, 
      String? user, 
      String? token, 
      String? userType, 
      String? message,}){
    _success = success;
    _user = user;
    _token = token;
    _userType = userType;
    _message = message;
}

  OtpResponseModel.fromJson(dynamic json) {
    _success = json['success'];
    _user = json['user'];
    _token = json['token'];
    _userType = json['user_type'];
    _message = json['message'];
  }
  bool? _success;
  String? _user;
  String? _token;
  String? _userType;
  String? _message;
OtpResponseModel copyWith({  bool? success,
  String? user,
  String? token,
  String? userType,
  String? message,
}) => OtpResponseModel(  success: success ?? _success,
  user: user ?? _user,
  token: token ?? _token,
  userType: userType ?? _userType,
  message: message ?? _message,
);
  bool? get success => _success;
  String? get user => _user;
  String? get token => _token;
  String? get userType => _userType;
  String? get message => _message;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['user'] = _user;
    map['token'] = _token;
    map['user_type'] = _userType;
    map['message'] = _message;
    return map;
  }

}