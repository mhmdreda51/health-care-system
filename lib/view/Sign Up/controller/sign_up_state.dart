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
class PostLocationLoadingState extends SignUpState {}

class PostLocationSuccessState extends SignUpState {
  final LocationModel locationModel;

  PostLocationSuccessState({required this.locationModel});
}

class PostLocationLErrorState extends SignUpState {
  final String error;

  PostLocationLErrorState({required this.error});
}

class GetMyAddressNameLoading extends SignUpState {}

class GetMyAddressNameSuccess extends SignUpState {}

class GetMyAddressNameError extends SignUpState {}

//===============================================================
//===============================================================

class LocationLoading extends SignUpState {}

class LocationSuccess extends SignUpState {
  final Position position;

  LocationSuccess({required this.position});
}

class LocationError extends SignUpState {}
//===============================================================

class LocationIsEnabled extends SignUpState {}

class LocationIsDisable extends SignUpState {}
