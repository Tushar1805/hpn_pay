import 'dart:convert';
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
/// license : [{"licenseName":"company license","licenseNumber":"license123"}]
/// panCardNumber : "pan123"

CreateCompanyRequestModel createCompanyRequestModelFromJson(String str) => CreateCompanyRequestModel.fromJson(json.decode(str));
String createCompanyRequestModelToJson(CreateCompanyRequestModel data) => json.encode(data.toJson());
class CreateCompanyRequestModel {
  CreateCompanyRequestModel({
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
      List<License>? license, 
      String? panCardNumber,}){
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
    _license = license;
    _panCardNumber = panCardNumber;
}

  CreateCompanyRequestModel.fromJson(dynamic json) {
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
    if (json['license'] != null) {
      _license = [];
      json['license'].forEach((v) {
        _license?.add(License.fromJson(v));
      });
    }
    _panCardNumber = json['panCardNumber'];
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
  List<License>? _license;
  String? _panCardNumber;
CreateCompanyRequestModel copyWith({  String? companyName,
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
  List<License>? license,
  String? panCardNumber,
}) => CreateCompanyRequestModel(  companyName: companyName ?? _companyName,
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
  license: license ?? _license,
  panCardNumber: panCardNumber ?? _panCardNumber,
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
  List<License>? get license => _license;
  String? get panCardNumber => _panCardNumber;

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
    if (_license != null) {
      map['license'] = _license?.map((v) => v.toJson()).toList();
    }
    map['panCardNumber'] = _panCardNumber;
    return map;
  }

}

/// licenseName : "company license"
/// licenseNumber : "license123"

License licenseFromJson(String str) => License.fromJson(json.decode(str));
String licenseToJson(License data) => json.encode(data.toJson());
class License {
  License({
      String? licenseName, 
      String? licenseNumber,}){
    _licenseName = licenseName;
    _licenseNumber = licenseNumber;
}

  License.fromJson(dynamic json) {
    _licenseName = json['licenseName'];
    _licenseNumber = json['licenseNumber'];
  }
  String? _licenseName;
  String? _licenseNumber;
License copyWith({  String? licenseName,
  String? licenseNumber,
}) => License(  licenseName: licenseName ?? _licenseName,
  licenseNumber: licenseNumber ?? _licenseNumber,
);
  String? get licenseName => _licenseName;
  String? get licenseNumber => _licenseNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['licenseName'] = _licenseName;
    map['licenseNumber'] = _licenseNumber;
    return map;
  }

}