part of 'login_controller_cubit.dart';

@immutable
abstract class LoginControllerState {}

class LoginControllerInitial extends LoginControllerState {}

class ChangeCheckBox extends LoginControllerState {}

class LoginChangePasswordVisibilityState extends LoginControllerState {}

class EmailSuffixOnChange extends LoginControllerState {}

class LoginLoadingState extends LoginControllerState {}

class LoginSuccessState extends LoginControllerState {
  final UserModel userModel;

  LoginSuccessState({required this.userModel});
}

class LoginLErrorState extends LoginControllerState {
  final String error;

  LoginLErrorState({required this.error});
}
