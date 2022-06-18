part of 'personal_info_cubit.dart';

@immutable
abstract class PersonalInfoState {}

class PersonalInfoInitial extends PersonalInfoState {}
//===============================================================

class UploadUserImageLoadingState extends PersonalInfoState {}

class UploadUserImageSuccessState extends PersonalInfoState {
  final ImageUpdatedModel imageUpdatedModel;

  UploadUserImageSuccessState({required this.imageUpdatedModel});
}

class UploadUserImageErrorState extends PersonalInfoState {}
//===============================================================

class UserPasswordUpdateLoadingState extends PersonalInfoState {}

class UserPasswordUpdateSuccessState extends PersonalInfoState {
  final UpdatePasswordModel updatePasswordModel;

  UserPasswordUpdateSuccessState({required this.updatePasswordModel});
}

class UserPasswordUpdateErrorState extends PersonalInfoState {}

//===============================================================
class UserDetailsUpdateLoadingState extends PersonalInfoState {}

class UserDetailsUpdateSuccessState extends PersonalInfoState {
  final UserModel userModel;

  UserDetailsUpdateSuccessState({required this.userModel});
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
class ChangeCountryState extends PersonalInfoState {}

//===============================================================
class GetMyAddressNameLoading extends PersonalInfoState {}

class GetMyAddressNameSuccess extends PersonalInfoState {}

class GetMyAddressNameError extends PersonalInfoState {}
