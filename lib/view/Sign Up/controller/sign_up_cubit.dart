import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  static SignUpCubit get(context) => BlocProvider.of(context);
  bool isPassword = true;
  bool isPasswordConfirm = true;
  IconData passwordSuffix = Icons.visibility_outlined;

  IconData passwordConfirmSuffix = Icons.visibility_outlined;
  bool emailSuffix = true;
  bool userNameSuffix = true;

  void emailSuffixOnChange(String value) {
    value.contains("@") || value.isEmpty
        ? emailSuffix = true
        : emailSuffix = false;
    emit(SignUpEmailSuffixOnChange());
  }

  void userNameSuffixOnChange(String value) {
    value.length >= 6 || value.isEmpty
        ? userNameSuffix = true
        : userNameSuffix = false;
    emit(SignUpUserNameSuffixOnChange());
  }

  void changePasswordVisibility() {
    isPassword = !isPassword;
    passwordSuffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(SignUpChangePasswordVisibilityState());
  }

  void changePasswordConfirmVisibility() {
    isPasswordConfirm = !isPasswordConfirm;
    passwordConfirmSuffix = isPasswordConfirm
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(SignUpChangePasswordConfirmVisibilityState());
  }

  //===============================================================
  bool checkBoxValue = true;

  void checkBoxOnChange(bool? value) {
    checkBoxValue = value!;
    emit(SignUpChangeCheckBox());
  }

  //===============================================================

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordConfirmController = TextEditingController();
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();
//===============================================================

}
