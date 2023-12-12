import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/data_provider/http/custom_http_exception.dart';
import '../../../data/model/otp_model/otp_request_model.dart';
import '../../../data/repositories/auth_repository.dart';
import '../Internet/internet_cubit.dart';

part 'otp_state.dart';

class OtpCubit extends Cubit<OtpState> {
  final AuthRepository authRepository;
  final InternetCubit internetCubit;
  OtpCubit(this.authRepository, this.internetCubit) : super(OtpInitial());
  otpCubit({required otp}) async {
    print(otp);
    if (!internetCubit.state) {
      emit(OtpError("Internet is not available!."));
    } else if(otp.isEmpty){
      emit(OtpError("Please enter OTP!"));
    }  else {
      try {
        emit(OtpLoading());
        final otpModel = OtpRequestModel(otp: int.parse(otp));
        final userResponseModel = await authRepository.otpRepo(otpModel);
        // final user = userResponseModel.data;
        if (userResponseModel.success == true) {
          emit(OtpSuccess());
        } else {
          emit(OtpError("Something went wrong!"));
        }
      } catch (e) {
        if (e is CustomHttpException) {
          emit(OtpError(e.message));
        } else {
          emit(OtpError("Something went wrong!"));
        }
      }
    }
  }
}
