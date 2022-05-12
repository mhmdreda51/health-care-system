part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}
//===============================================================

class SignUpChangeCheckBox extends SignUpState {}
//===============================================================

class SignUpChangePasswordVisibilityState extends SignUpState {}

class SignUpChangePasswordConfirmVisibilityState extends SignUpState {}
//===============================================================

class SignUpEmailSuffixOnChange extends SignUpState {}

class SignUpUserNameSuffixOnChange extends SignUpState {}
//===============================================================

class RegisterLoadingState extends SignUpState {}

class RegisterSuccessState extends SignUpState {
  final UserModel userModel;

  RegisterSuccessState({required this.userModel});
}

class RegisterLErrorState extends SignUpState {
  final String error;

  RegisterLErrorState({required this.error});
}
//===============================================================
//===============================================================
