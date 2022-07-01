part of 'personal_info_cubit.dart';

@immutable
abstract class PersonalInfoState {}

class PersonalInfoInitial extends PersonalInfoState {}
//===============================================================

class UploadUserImageLoadingState extends PersonalInfoState {}

class UploadUserImageSuccessState extends PersonalInfoState {}

class UploadUserImageErrorState extends PersonalInfoState {}
//===============================================================

//===============================================================
class UserDetailsUpdateLoadingState extends PersonalInfoState {}

class UserDetailsUpdateSuccessState extends PersonalInfoState {
  final PersonalModel personalModel;

  UserDetailsUpdateSuccessState({required this.personalModel});
}

class UserDetailsUpdateErrorState extends PersonalInfoState {}
//===============================================================
//===============================================================

class RefreshUserLoading extends PersonalInfoState {}

class RefreshUserSuccess extends PersonalInfoState {
  final UserModel userModel;

  RefreshUserSuccess({required this.userModel});
}

class RefreshUserError extends PersonalInfoState {}

//===============================================================
class UpdateUserAreaLoading extends PersonalInfoState {}

class UpdateUserAreaSuccess extends PersonalInfoState {
  final UserModel userModel;

  UpdateUserAreaSuccess({required this.userModel});
}

class UpdateUserAreaError extends PersonalInfoState {}

//===============================================================
class ChangeOldPasswordVisibilityState extends PersonalInfoState {}

class ChangePasswordVisibilityState extends PersonalInfoState {}

class ChangePasswordConfirmVisibilityState extends PersonalInfoState {}

//===============================================================

//===============================================================
