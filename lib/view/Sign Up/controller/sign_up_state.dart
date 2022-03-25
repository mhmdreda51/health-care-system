part of 'sign_up_cubit.dart';

@immutable
abstract class SignUpState {}

class SignUpInitial extends SignUpState {}

class SignUpChangeCheckBox extends SignUpState {}

class SignUpChangePasswordVisibilityState extends SignUpState {}

class SignUpChangePasswordConfirmVisibilityState extends SignUpState {}

class SignUpEmailSuffixOnChange extends SignUpState {}

class SignUpUserNameSuffixOnChange extends SignUpState {}
