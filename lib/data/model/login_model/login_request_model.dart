import 'dart:convert';
/// mobileNumber : 9021738421

LoginRequestModel loginRequestModelFromJson(String str) => LoginRequestModel.fromJson(json.decode(str));
String loginRequestModelToJson(LoginRequestModel data) => json.encode(data.toJson());
class LoginRequestModel {
  LoginRequestModel({
      num? mobileNumber,}){
    _mobileNumber = mobileNumber;
}

  LoginRequestModel.fromJson(dynamic json) {
    _mobileNumber = json['mobileNumber'];
  }
  num? _mobileNumber;
LoginRequestModel copyWith({  num? mobileNumber,
}) => LoginRequestModel(  mobileNumber: mobileNumber ?? _mobileNumber,
);
  num? get mobileNumber => _mobileNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['mobileNumber'] = _mobileNumber;
    return map;
  }

}