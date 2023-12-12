part of 'create_company_cubit.dart';

@immutable
abstract class CreateCompanyState {}

class CreateCompanyInitial extends CreateCompanyState {}
class CreateCompanyLoading extends CreateCompanyState {}
class CreateCompanySuccess extends CreateCompanyState {}
class CreateCompanyError extends CreateCompanyState {
  final String message;
  CreateCompanyError(this.message);
}
