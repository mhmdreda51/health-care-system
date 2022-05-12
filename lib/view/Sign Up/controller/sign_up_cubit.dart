import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../constants/end_point.dart';
import '../../../core/Firebase/firebase_messaging_helper.dart';
import '../../../core/cacheHelper/cache_helper.dart';
import '../../../core/dioHelper/dio_helper.dart';
import '../../Login/model/user_model.dart';

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
  UserModel? userModel;

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
  Future<void> userSignUp({
    required String userName,
    required String email,
    required String password,
    required String passwordConfirm,
  }) async {
    emit(RegisterLoadingState());
    final token = await FirebaseMessagingHelper.getToken();
    final response = await DioHelper.postData(
      url: register,
      data: {
        'user_name': userName,
        'email': email.toLowerCase(),
        'password': password,
        'password_confirmation': passwordConfirm,
      },
    );
    try {
      userModel = UserModel.fromJson(response.data as Map<String, dynamic>);
      if (userModel!.data!.token != null) {
        CacheHelper.cacheUserInfo(
            token: userModel!.data!.token.toString(), userModel: userModel!);
      }
      emit(RegisterSuccessState(userModel: userModel!));
    } on DioError catch (e) {
      emit(RegisterLErrorState(error: e.toString()));
    } catch (e) {
      debugPrint(e.toString());
      emit(RegisterLErrorState(error: e.toString()));
    }
  }
}
