import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_controller_state.dart';

class LoginControllerCubit extends Cubit<LoginControllerState> {
  LoginControllerCubit() : super(LoginControllerInitial());

  //===============================================================

  static LoginControllerCubit get(context) => BlocProvider.of(context);

  //===============================================================

  bool isPassword = true;
  IconData suffix = Icons.visibility_outlined;
  bool emailSuffix = true;

  void emailSuffixOnChange(String value) {
    value.contains("@") || value.isEmpty
        ? emailSuffix = true
        : emailSuffix = false;

    emit(EmailSuffixOnChange());
  }

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(LoginChangePasswordVisibilityState());
  }

  //===============================================================
  bool checkBoxValue = true;

  void checkBoxOnChange(bool? value) {
    checkBoxValue = value!;
    emit(ChangeCheckBox());
  }

  //===============================================================

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
//===============================================================

}
