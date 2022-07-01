import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../../constants/end_point.dart';
import '../../../core/dioHelper/dio_helper.dart';
import '../Model/changePasswordModel.dart';

part 'change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  ChangePasswordCubit() : super(ChangePasswordInitial());

  //===============================================================

  static ChangePasswordCubit get(context) => BlocProvider.of(context);
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //===============================================================

  bool isPassword = true;
  bool isOldPassword = true;
  GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();

  bool isPasswordConfirm = true;
  IconData passwordSuffix = Icons.visibility_outlined;
  IconData oldPasswordSuffix = Icons.visibility_outlined;

  IconData passwordConfirmSuffix = Icons.visibility_outlined;

  //===============================================================

  void changePasswordConfirmVisibility() {
    isPasswordConfirm = !isPasswordConfirm;
    passwordConfirmSuffix = isPasswordConfirm
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(ChangePasswordConfirmVisibilityState());
  }

  //===============================================================

  void changeOldPasswordVisibility() {
    isOldPassword = !isOldPassword;
    oldPasswordSuffix = isOldPassword
        ? Icons.visibility_outlined
        : Icons.visibility_off_outlined;
    emit(ChangeOldPasswordVisibilityState());
  }

//===============================================================

  void changePasswordVisibility() {
    isPassword = !isPassword;
    passwordSuffix =
        isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined;
    emit(ChangePasswordVisibilityState());
  }

  //===============================================================
  ChangePasswordModel? changePasswordModel;

  Future<void> updateUserPassword({
    required String oldPassword,
    required String newPassword,
    required String confirmNewPassword,
  }) async {
    emit(UserPasswordUpdateLoadingState());
    final response = await DioHelper.postData(url: change_password, data: {
      'old_password': oldPassword,
      'password': newPassword,
      'password_confirmation': confirmNewPassword,
    });
    try {
      changePasswordModel = ChangePasswordModel.fromJson(response.data);
      emit(UserPasswordUpdateSuccessState(
          changePasswordModel: changePasswordModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      emit(UserPasswordUpdateErrorState());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(UserPasswordUpdateErrorState());
    }
  }
}
