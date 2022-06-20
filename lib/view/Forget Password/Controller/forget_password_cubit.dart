import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit() : super(ForgetPasswordInitial()) {}

  //===============================================================
  static ForgetPasswordCubit get(context) => BlocProvider.of(context);

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> confirmationCodeFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController ConfirmationCodeController = TextEditingController();

  //===============================================================

  showDialog(Widget page, BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        child: page,
        color: Colors.white,
      ),
    );
  }

//===============================================================
  bool isPassword = true;
  bool isConfirmPassword = true;
  IconData suffix = Icons.visibility_outlined;
  IconData suffixConfirm = Icons.visibility_outlined;
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordVisibilityState());
  } //===============================================================

  void changeConfirmPasswordVisibility() {
    isConfirmPassword = !isConfirmPassword;
    suffixConfirm = isConfirmPassword
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(ChangePasswordConfirmVisibilityState());
  }

  // void dispose() {
  //   ConfirmationCodeController.dispose();
  // }
}
