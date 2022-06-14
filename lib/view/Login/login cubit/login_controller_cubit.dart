import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/end_point.dart';
import '../../../core/Firebase/firebase_messaging_helper.dart';
import '../../../core/cacheHelper/cache_helper.dart';
import '../../../core/dioHelper/dio_helper.dart';
import '../model/user_model.dart';

part 'login_controller_state.dart';

class LoginControllerCubit extends Cubit<LoginControllerState> {
  LoginControllerCubit() : super(LoginControllerInitial());

  //===============================================================

  static LoginControllerCubit get(context) => BlocProvider.of(context);

  //===============================================================

  bool isPassword = true;
  IconData suffix = Icons.visibility_outlined;
  bool emailSuffix = true;

  void emailSuffixOnChange({required String value}) {
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
  bool checkBoxValue = false;

  void checkBoxOnChange(bool? value) {
    checkBoxValue = value!;
    emit(ChangeCheckBox());
  }

  //===============================================================

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  UserModel? userModel;

//===============================================================
  Future<void> userLogin({
    required String email,
    required String password,
  }) async {
    emit(LoginLoadingState());
    final token = await FirebaseMessagingHelper.getToken();
    String os = Platform.operatingSystem;
    print(os);
    final response = await DioHelper.postData(
      url: login,
      data: {
        'email': email,
        'password': password,
        'token': token,
        'serial_number': token,
        'os': os,
      },
    );
    try {
      final data = response.data as Map;

      userModel = UserModel.fromJson(data);
      if (userModel!.data.token != null) {
        CacheHelper.cacheUserInfo(
            token: userModel!.data.token.toString(), userModel: userModel!);
      }
      emit(LoginSuccessState(userModel: userModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(LoginLErrorState(error: e.toString()));
    }
  }
}
