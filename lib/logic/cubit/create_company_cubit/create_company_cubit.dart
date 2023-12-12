import 'package:bloc/bloc.dart';
import 'package:hpn_pay/data/model/create_company_model/create_company_request_model.dart';
import 'package:meta/meta.dart';

import '../../../data/data_provider/http/custom_http_exception.dart';
import '../../../data/repositories/auth_repository.dart';
import '../Internet/internet_cubit.dart';

part 'create_company_state.dart';

class CreateCompanyCubit extends Cubit<CreateCompanyState> {
  final AuthRepository authRepository;
  final InternetCubit internetCubit;
  CreateCompanyCubit(this.authRepository, this.internetCubit) : super(CreateCompanyInitial());

  createCompanyCubit({
    required name,
    required mailName,
    required address,
    required state,
    required city,
    required pinCode,
    required telephone,
    required mobile,
    required email,
    required website,
    required gstNumber,
    required licenseName,
    required licenseNumber,
    required panNumber,

}) async {
    print(panNumber);
    if (!internetCubit.state) {
      emit(CreateCompanyError("Internet is not available!."));
    }else {
      try {
        emit(CreateCompanyLoading());
        final createCompanyModel = CreateCompanyRequestModel(
          companyName: name,
          mailingName: mailName,
          address: address,
          state: state,
          city: city,
          pinCode: int.parse(pinCode),
          telephoneNumber: int.parse(telephone),
          mobileNumber: int.parse(mobile),
          email: email,
          websiteAddress: website,
          gstNumber: gstNumber,
            license: [],
            // license: [licenseName, licenseNumber],
          panCardNumber: panNumber
        );
        final userResponseModel = await authRepository.creteCompanyRepo(createCompanyModel);
        // final user = userResponseModel.data;
        if (userResponseModel.success == true) {
          emit(CreateCompanySuccess());
        } else {
          emit(CreateCompanyError("Something went wrong!"));
        }
      } catch (e) {
        if (e is CustomHttpException) {
          emit(CreateCompanyError(e.message));
        } else {
          emit(CreateCompanyError("Something went wrong!"));
        }
      }
    }
  }

  createCompanyFirstPage({
    required name,
    required mailName,
    required address,
    required state,
    required city,
    required pinCode,
    required telephone,
    required mobile
}){
    if(name.isEmpty){
      CreateCompanyError("Please enter name");
    }else if(mailName == ""){
      CreateCompanyError("Please enter mail name");
    }else if(address == ""){
      CreateCompanyError("Please enter address");
    }else if(state == ""){
      CreateCompanyError("Please enter state");
    }else if(city == ""){
      CreateCompanyError("Please enter city");
    }else if(pinCode == ""){
      CreateCompanyError("Please enter pincode");
    }else if(telephone == ""){
      CreateCompanyError("Please enter telephone number");
    }else if(mobile == ""){
      CreateCompanyError("Please enter mobile number");
    }
  }
}
