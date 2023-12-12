import 'dart:convert';
/// _id : "656053d2aa269ae8c9551885"
/// companyName : "Allied Waste Industries, Inc."
/// mailingName : "Payless Shoesource Inc"
/// address : "1513 Vavtu Center"
/// state : "SD"
/// city : "Mazovdoj"
/// pinCode : 937527
/// telephoneNumber : 5318891904
/// mobileNumber : 8448225919
/// email : "dorra@micogbo.ua"
/// websiteAddress : "http://umuiso.kz/enruvciw"
/// gstNumber : "dQYaogY"
/// licenses : [{"licenseName":"apagapcag","licenseNumber":"bisaim","_id":"656053d2aa269ae8c9551886"}]
/// panCardNumber : "ZTcMFIRj7l"
/// createdAt : "2023-11-24T07:42:10.183Z"
/// updatedAt : "2023-11-24T07:42:10.183Z"
/// __v : 0

GetAllCompanyModel getAllCompanyModelFromJson(String str) => GetAllCompanyModel.fromJson(json.decode(str));
String getAllCompanyModelToJson(GetAllCompanyModel data) => json.encode(data.toJson());
class GetAllCompanyModel {
  GetAllCompanyModel({
      String? id, 
      String? companyName, 
      String? mailingName, 
      String? address, 
      String? state, 
      String? city, 
      num? pinCode, 
      num? telephoneNumber, 
      num? mobileNumber, 
      String? email, 
      String? websiteAddress, 
      String? gstNumber, 
      List<Licenses>? licenses, 
      String? panCardNumber, 
      String? createdAt,
      String? updatedAt, 
      num? v,}){
    _id = id;
    _companyName = companyName;
    _mailingName = mailingName;
    _address = address;
    _state = state;
    _city = city;
    _pinCode = pinCode;
    _telephoneNumber = telephoneNumber;
    _mobileNumber = mobileNumber;
    _email = email;
    _websiteAddress = websiteAddress;
    _gstNumber = gstNumber;
    _licenses = licenses;
    _panCardNumber = panCardNumber;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  GetAllCompanyModel.fromJson(dynamic json) {
    _id = json['_id'];
    _companyName = json['companyName'];
    _mailingName = json['mailingName'];
    _address = json['address'];
    _state = json['state'];
    _city = json['city'];
    _pinCode = json['pinCode'];
    _telephoneNumber = json['telephoneNumber'];
    _mobileNumber = json['mobileNumber'];
    _email = json['email'];
    _websiteAddress = json['websiteAddress'];
    _gstNumber = json['gstNumber'];
    if (json['licenses'] != null) {
      _licenses = [];
      json['licenses'].forEach((v) {
        _licenses?.add(Licenses.fromJson(v));
      });
    }
    _panCardNumber = json['panCardNumber'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
  String? _id;
  String? _companyName;
  String? _mailingName;
  String? _address;
  String? _state;
  String? _city;
  num? _pinCode;
  num? _telephoneNumber;
  num? _mobileNumber;
  String? _email;
  String? _websiteAddress;
  String? _gstNumber;
  List<Licenses>? _licenses;
  String? _panCardNumber;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
GetAllCompanyModel copyWith({  String? id,
  String? companyName,
  String? mailingName,
  String? address,
  String? state,
  String? city,
  num? pinCode,
  num? telephoneNumber,
  num? mobileNumber,
  String? email,
  String? websiteAddress,
  String? gstNumber,
  List<Licenses>? licenses,
  String? panCardNumber,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => GetAllCompanyModel(  id: id ?? _id,
  companyName: companyName ?? _companyName,
  mailingName: mailingName ?? _mailingName,
  address: address ?? _address,
  state: state ?? _state,
  city: city ?? _city,
  pinCode: pinCode ?? _pinCode,
  telephoneNumber: telephoneNumber ?? _telephoneNumber,
  mobileNumber: mobileNumber ?? _mobileNumber,
  email: email ?? _email,
  websiteAddress: websiteAddress ?? _websiteAddress,
  gstNumber: gstNumber ?? _gstNumber,
  licenses: licenses ?? _licenses,
  panCardNumber: panCardNumber ?? _panCardNumber,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
  String? get id => _id;
  String? get companyName => _companyName;
  String? get mailingName => _mailingName;
  String? get address => _address;
  String? get state => _state;
  String? get city => _city;
  num? get pinCode => _pinCode;
  num? get telephoneNumber => _telephoneNumber;
  num? get mobileNumber => _mobileNumber;
  String? get email => _email;
  String? get websiteAddress => _websiteAddress;
  String? get gstNumber => _gstNumber;
  List<Licenses>? get licenses => _licenses;
  String? get panCardNumber => _panCardNumber;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['companyName'] = _companyName;
    map['mailingName'] = _mailingName;
    map['address'] = _address;
    map['state'] = _state;
    map['city'] = _city;
    map['pinCode'] = _pinCode;
    map['telephoneNumber'] = _telephoneNumber;
    map['mobileNumber'] = _mobileNumber;
    map['email'] = _email;
    map['websiteAddress'] = _websiteAddress;
    map['gstNumber'] = _gstNumber;
    if (_licenses != null) {
      map['licenses'] = _licenses?.map((v) => v.toJson()).toList();
    }
    map['panCardNumber'] = _panCardNumber;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}

/// licenseName : "apagapcag"
/// licenseNumber : "bisaim"
/// _id : "656053d2aa269ae8c9551886"

Licenses licensesFromJson(String str) => Licenses.fromJson(json.decode(str));
String licensesToJson(Licenses data) => json.encode(data.toJson());
class Licenses {
  Licenses({
      String? licenseName, 
      String? licenseNumber, 
      String? id,}){
    _licenseName = licenseName;
    _licenseNumber = licenseNumber;
    _id = id;
}

  Licenses.fromJson(dynamic json) {
    _licenseName = json['licenseName'];
    _licenseNumber = json['licenseNumber'];
    _id = json['_id'];
  }
  String? _licenseName;
  String? _licenseNumber;
  String? _id;
Licenses copyWith({  String? licenseName,
  String? licenseNumber,
  String? id,
}) => Licenses(  licenseName: licenseName ?? _licenseName,
  licenseNumber: licenseNumber ?? _licenseNumber,
  id: id ?? _id,
);
  String? get licenseName => _licenseName;
  String? get licenseNumber => _licenseNumber;
  String? get id => _id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['licenseName'] = _licenseName;
    map['licenseNumber'] = _licenseNumber;
    map['_id'] = _id;
    return map;
  }

}