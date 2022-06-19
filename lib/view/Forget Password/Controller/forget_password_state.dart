part of 'forget_password_cubit.dart';

@immutable
abstract class ForgetPasswordState {}

class ForgetPasswordInitial extends ForgetPasswordState {}

class ChangePasswordVisibilityState extends ForgetPasswordState {}

class ChangePasswordConfirmVisibilityState extends ForgetPasswordState {}
