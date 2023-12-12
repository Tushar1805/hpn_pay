import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../data/data_provider/http/custom_http_exception.dart';
import '../../../data/model/get_all_company_model/get_all_company_model.dart';
import '../../../data/repositories/auth_repository.dart';
import '../Internet/internet_cubit.dart';

part 'get_all_company_state.dart';

class GetAllCompanyCubit extends Cubit<GetAllCompanyState> {
  final InternetCubit internetCubit;
  final AuthRepository authRepository;
  GetAllCompanyCubit(this.internetCubit, this.authRepository) : super(GetAllCompanyInitial());

  getAllCompanyCubit() async {
    if(!internetCubit.state){
      emit(GetAllCompanyError("Internet is not available!"));
    }else{
      try{
        emit(GetAllCompanyLoading());
        print("cubit print");
        final getAllCompanyModel = await authRepository.getAllCompanyRepo();
        // print("cubit print ${getAllCompanyModel.state}");
        if(getAllCompanyModel != []){
          emit(GetAllCompanySuccess(getAllCompanyModel));
        }else{
          emit(GetAllCompanyError("Something went wrong!"));
        }
      }catch(e){
        if(e is CustomHttpException){
          emit(GetAllCompanyError(e.message));
        }
        else{
          emit(GetAllCompanyError("Something went wrong!"));
        }
      }
    }
  }
}
