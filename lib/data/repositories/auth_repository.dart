import 'dart:convert';

//import 'package:http/http.dart' as http;

import '../data_provider/http/custom_http_exception.dart';
import '../data_provider/http/http_auth_provider.dart';
import '../model/create_company_model/create_company_request_model.dart';
import '../model/create_company_model/create_company_response_model.dart';
import '../model/get_all_company_model/get_all_company_model.dart';
import '../model/login_model/login_request_model.dart';
import '../model/login_model/login_response_model.dart';
import '../model/otp_model/otp_request_model.dart';
import '../model/otp_model/otp_response_model.dart';

class AuthRepository {
  Future<LoginResponseModel> signInAuthRepo(LoginRequestModel loginRequestModel) async {
    final response = await HttpDataProvider().signIn(loginRequestModel);
    var res = loginResponseModelFromJson(response.body);
    if (response.statusCode == 200) {
      return res;
    } else {
      throw CustomHttpException(
          message: res.message ?? "Something went wrong!");
    }
  }

  Future<OtpResponseModel> otpRepo(OtpRequestModel otpRequestModel) async {
    final response = await HttpDataProvider().otp(otpRequestModel);
    var res = otpResponseModelFromJson(response.body);
    if (response.statusCode == 200) {
      return res;
    } else {
      throw CustomHttpException(
          message: res.message ?? "Something went wrong!");
    }
  }

  Future<CreateCompanyResponseModel> creteCompanyRepo(CreateCompanyRequestModel createCompanyRequestModel) async {
    final response = await HttpDataProvider().createCompany(createCompanyRequestModel);
    var res = createCompanyResponseModelFromJson(response.body);
    if (response.statusCode == 200) {
      return res;
    } else {
      throw CustomHttpException(message: res.message ?? "Something went wrong!");
    }
  }

  Future<GetAllCompanyModel> getAllCompanyRepo() async {
    final response = await HttpDataProvider().getAllCompany();
    print("responseeeeeeee ${response.statusCode}");
    var res = getAllCompanyModelFromJson(response.body);
    print("res $res");
    if (response.statusCode == 200) {
      return res;
    } else {
      throw CustomHttpException(message: "Something went wrong!");
    }
  }

}
