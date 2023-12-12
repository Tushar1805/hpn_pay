import 'dart:convert';
/// otp : 922322

OtpRequestModel otpRequestModelFromJson(String str) => OtpRequestModel.fromJson(json.decode(str));
String otpRequestModelToJson(OtpRequestModel data) => json.encode(data.toJson());
class OtpRequestModel {
  OtpRequestModel({
      num? otp,}){
    _otp = otp;
}

  OtpRequestModel.fromJson(dynamic json) {
    _otp = json['otp'];
  }
  num? _otp;
OtpRequestModel copyWith({  num? otp,
}) => OtpRequestModel(  otp: otp ?? _otp,
);
  num? get otp => _otp;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['otp'] = _otp;
    return map;
  }

}