part of 'login_controller_cubit.dart';

@immutable
abstract class LoginControllerState {}

class LoginControllerInitial extends LoginControllerState {}

class ChangeCheckBox extends LoginControllerState {}

class LoginChangePasswordVisibilityState extends LoginControllerState {}

class EmailSuffixOnChange extends LoginControllerState {}
