
import 'package:bloc/bloc.dart';
import 'package:hpn_pay/data/model/login_model/login_request_model.dart';
import 'package:meta/meta.dart';

import '../../../data/data_provider/http/custom_http_exception.dart';
import '../../../data/repositories/auth_repository.dart';
import '../Internet/internet_cubit.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final AuthRepository authRepository;
  final InternetCubit internetCubit;
  LoginCubit(this.authRepository, this.internetCubit) : super(LoginInitial());

  loginAuthCubit({required number}) async {
    if (!internetCubit.state) {
      emit(LoginError("Internet is not available!."));
    }else if(number.isEmpty){
      emit(LoginError("Please enter mobile number!"));
    }  else {
      try {
        emit(LoginLoading());
        final loginModel = LoginRequestModel(mobileNumber: int.parse(number));
        final userResponseModel = await authRepository.signInAuthRepo(loginModel);
        // final user = userResponseModel.data;
        if (userResponseModel.success == true) {
          emit(LoginSuccess());
        } else {
          emit(LoginError("Something went wrong!"));
        }
      } catch (e) {
        if (e is CustomHttpException) {
          emit(LoginError(e.message));
        } else {
          emit(LoginError("Something went wrong!"));
        }
      }
    }
  }
}
