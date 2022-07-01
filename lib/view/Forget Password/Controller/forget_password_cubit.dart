import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/core/cacheHelper/cache_helper.dart';
import 'package:meta/meta.dart';

import '../../../constants/end_point.dart';
import '../../../core/dioHelper/dio_helper.dart';
import '../../Reset Password/Model/ResetPasswordModel.dart';
import '../Model/forget_password_model.dart';

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

  //===============================================================
  ForgetPasswordModel? forgetPasswordModel;

  Future<void> sendEmailToGetPin({
    required String email,
  }) async {
    emit(UserPasswordUpdateLoadingState());
    final response = await DioHelper.postData(url: forgetPassword, data: {
      'email': email,
    });
    try {
      forgetPasswordModel = ForgetPasswordModel.fromJson(response.data);
      CacheHelper.cacheMailForReset(mailForReset: email);
      emit(UserPasswordUpdateSuccessState(
          forgetPasswordModel: forgetPasswordModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      emit(UserPasswordUpdateErrorState());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(UserPasswordUpdateErrorState());
    }
  }

  ResetPasswordModel? resetPasswordModel;

  Future<void> resetUserPassword({
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    emit(resetUserPasswordLoadingState());
    final response = await DioHelper.postData(url: new_Password, data: {
      "email": CacheHelper.getMailForReset,
      "pin_code": CacheHelper.getPin,
      'password': newPassword,
      'password_confirmation': confirmNewPassword,
    });
    try {
      print(response.statusCode);
      print(CacheHelper.getPin);
      print(CacheHelper.getMailForReset);
      resetPasswordModel =
          ResetPasswordModel.fromJson(response.data as Map<String, dynamic>);
      emit(resetUserPasswordSuccessState(
          resetPasswordModel: resetPasswordModel!));
    } on DioError catch (e) {
      emit(resetUserPasswordErrorState());

      debugPrint(e.error.toString());
    } catch (e, s) {
      emit(resetUserPasswordErrorState());

      debugPrint(e.toString());
      debugPrint(s.toString());
    }
  }
}
