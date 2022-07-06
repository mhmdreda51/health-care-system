part of 'change_password_cubit.dart';

@immutable
abstract class ChangePasswordState {}

class ChangePasswordInitial extends ChangePasswordState {}

class ChangeOldPasswordVisibilityState extends ChangePasswordState {}

class ChangePasswordVisibilityState extends ChangePasswordState {}

class ChangePasswordConfirmVisibilityState extends ChangePasswordState {}

class UserPasswordUpdateLoadingState extends ChangePasswordState {}

class UserPasswordUpdateSuccessState extends ChangePasswordState {
  final ChangePasswordModel changePasswordModel;

  UserPasswordUpdateSuccessState({required this.changePasswordModel});
}

class UserPasswordUpdateErrorState extends ChangePasswordState {
  final String error;

  UserPasswordUpdateErrorState({required this.error});
}
