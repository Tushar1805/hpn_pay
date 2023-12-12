import 'dart:convert';
/// success : true
/// message : "Company created successfully!"
/// company : {"companyName":"new company pvt ltd","mailingName":"XYZ","address":"nagpur","state":"Maharashtra.","city":"Nagpur","pinCode":440022,"telephoneNumber":1234567890,"mobileNumber":1234567890,"email":"abc@abc.com","websiteAddress":"https://abc.com","gstNumber":"gst123","licenses":[],"panCardNumber":"pan123","_id":"656ecfdf3a3f789b2d86ad95","createdAt":"2023-12-05T07:23:11.063Z","updatedAt":"2023-12-05T07:23:11.063Z","__v":0}

CreateCompanyResponseModel createCompanyResponseModelFromJson(String str) => CreateCompanyResponseModel.fromJson(json.decode(str));
String createCompanyResponseModelToJson(CreateCompanyResponseModel data) => json.encode(data.toJson());
class CreateCompanyResponseModel {
  CreateCompanyResponseModel({
      bool? success, 
      String? message, 
      Company? company,}){
    _success = success;
    _message = message;
    _company = company;
}

  CreateCompanyResponseModel.fromJson(dynamic json) {
    _success = json['success'];
    _message = json['message'];
    _company = json['company'] != null ? Company.fromJson(json['company']) : null;
  }
  bool? _success;
  String? _message;
  Company? _company;
CreateCompanyResponseModel copyWith({  bool? success,
  String? message,
  Company? company,
}) => CreateCompanyResponseModel(  success: success ?? _success,
  message: message ?? _message,
  company: company ?? _company,
);
  bool? get success => _success;
  String? get message => _message;
  Company? get company => _company;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = _success;
    map['message'] = _message;
    if (_company != null) {
      map['company'] = _company?.toJson();
    }
    return map;
  }

}

/// companyName : "new company pvt ltd"
/// mailingName : "XYZ"
/// address : "nagpur"
/// state : "Maharashtra."
/// city : "Nagpur"
/// pinCode : 440022
/// telephoneNumber : 1234567890
/// mobileNumber : 1234567890
/// email : "abc@abc.com"
/// websiteAddress : "https://abc.com"
/// gstNumber : "gst123"
/// licenses : []
/// panCardNumber : "pan123"
/// _id : "656ecfdf3a3f789b2d86ad95"
/// createdAt : "2023-12-05T07:23:11.063Z"
/// updatedAt : "2023-12-05T07:23:11.063Z"
/// __v : 0

Company companyFromJson(String str) => Company.fromJson(json.decode(str));
String companyToJson(Company data) => json.encode(data.toJson());
class Company {
  Company({
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
      List<dynamic>? licenses, 
      String? panCardNumber, 
      String? id, 
      String? createdAt, 
      String? updatedAt, 
      num? v,}){
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
    _id = id;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _v = v;
}

  Company.fromJson(dynamic json) {
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
        _licenses?.add([]);
      });
    }
    _panCardNumber = json['panCardNumber'];
    _id = json['_id'];
    _createdAt = json['createdAt'];
    _updatedAt = json['updatedAt'];
    _v = json['__v'];
  }
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
  List<dynamic>? _licenses;
  String? _panCardNumber;
  String? _id;
  String? _createdAt;
  String? _updatedAt;
  num? _v;
Company copyWith({  String? companyName,
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
  List<dynamic>? licenses,
  String? panCardNumber,
  String? id,
  String? createdAt,
  String? updatedAt,
  num? v,
}) => Company(  companyName: companyName ?? _companyName,
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
  id: id ?? _id,
  createdAt: createdAt ?? _createdAt,
  updatedAt: updatedAt ?? _updatedAt,
  v: v ?? _v,
);
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
  List<dynamic>? get licenses => _licenses;
  String? get panCardNumber => _panCardNumber;
  String? get id => _id;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  num? get v => _v;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
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
    map['_id'] = _id;
    map['createdAt'] = _createdAt;
    map['updatedAt'] = _updatedAt;
    map['__v'] = _v;
    return map;
  }

}