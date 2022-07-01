part of 'forget_password_cubit.dart';

@immutable
abstract class ForgetPasswordState {}

class ForgetPasswordInitial extends ForgetPasswordState {}

class ChangePasswordVisibilityState extends ForgetPasswordState {}

class ChangePasswordConfirmVisibilityState extends ForgetPasswordState {}

class UserPasswordUpdateLoadingState extends ForgetPasswordState {}

class UserPasswordUpdateSuccessState extends ForgetPasswordState {
  final ForgetPasswordModel forgetPasswordModel;

  UserPasswordUpdateSuccessState({required this.forgetPasswordModel});
}

class UserPasswordUpdateErrorState extends ForgetPasswordState {}

class resetUserPasswordLoadingState extends ForgetPasswordState {}

class resetUserPasswordSuccessState extends ForgetPasswordState {
  final ResetPasswordModel resetPasswordModel;

  resetUserPasswordSuccessState({required this.resetPasswordModel});
}

class resetUserPasswordErrorState extends ForgetPasswordState {}
