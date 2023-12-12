import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import '../../../core/constants/api_urls.dart';
import '../../../core/constants/constant_text.dart';
import '../../model/create_company_model/create_company_request_model.dart';
import '../../model/login_model/login_request_model.dart';
import '../../model/otp_model/otp_request_model.dart';

// all rest api hits in this class.
class HttpDataProvider {
  static final HttpDataProvider _singleton = HttpDataProvider._internal();

  factory HttpDataProvider() {
    return _singleton;
  }

  HttpDataProvider._internal();
  
  // Future<Response> deleteUser(String userId) async {
  //   // var requestBody = {"isDeleted": true,};
  //   // String requestBodyJson = jsonEncode(requestBody);
  //   var url = Uri.parse("$DELETE_USER_URL/$userId");
  //   var response = await http.delete(
  //       url,
  //     headers: {
  //         "Content-type" : "Application/json",
  //       "Authorization" : "Bearer $accessToken"
  //     },
  //     // body: requestBodyJson
  //   );
  //   return response;
  // }


  Future<http.Response> signIn(LoginRequestModel loginRequestModel) async {
    var url = Uri.parse("$baseUrl/verifyMobile");
    var response = await http.post(url,
        headers: {"Content-type": "application/json"},
        body: jsonEncode(loginRequestModel.toJson()));
    return response;
  }

  Future<http.Response> otp(OtpRequestModel otpRequestModel) async {
    var url = Uri.parse("$baseUrl/verifyOtp");
    var response = await http.post(url,
        headers: {"Content-type": "application/json"},
        body: jsonEncode(otpRequestModel.toJson()));
    return response;
  }

  Future<http.Response> createCompany(CreateCompanyRequestModel createCompanyRequestModel) async {
    var url = Uri.parse("$baseUrl/createCompany");
    var response = await http.post(url,
        headers: {"Content-type": "application/json"},
        body: jsonEncode(createCompanyRequestModel.toJson()));
    print("response create company ${response.body}");
    return response;
  }

  Future<http.Response> getAllCompany() async {
    var url = Uri.parse("$baseUrl/getAllCompanies");
    var response = await http.get(
        url,
        headers: {
          "Content-type" : "Application/json",
        }
    );
    return response;
  }
}


