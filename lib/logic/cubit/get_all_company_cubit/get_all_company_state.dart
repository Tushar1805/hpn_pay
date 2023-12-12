part of 'get_all_company_cubit.dart';

@immutable
abstract class GetAllCompanyState {}

class GetAllCompanyInitial extends GetAllCompanyState {}
class GetAllCompanyLoading extends GetAllCompanyState {}
class GetAllCompanySuccess extends GetAllCompanyState {
  final GetAllCompanyModel getAllCompanyModel;
  GetAllCompanySuccess(this.getAllCompanyModel);
}
class GetAllCompanyError extends GetAllCompanyState {
  final String message;
  GetAllCompanyError(this.message);
}
