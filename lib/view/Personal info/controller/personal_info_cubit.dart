import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

import '../../../constants/end_point.dart';
import '../../../core/cacheHelper/cache_helper.dart';
import '../../../core/dioHelper/dio_helper.dart';
import '../../Login/model/user_model.dart';
import '../Model/personal_model.dart';

part 'personal_info_state.dart';

class PersonalInfoCubit extends Cubit<PersonalInfoState> {
  PersonalInfoCubit() : super(PersonalInfoInitial());

  static PersonalInfoCubit get(context) => BlocProvider.of(context);

  XFile? image;
  ImagePicker? imagePicker;
  UserModel? userModel;

  PersonalModel? personalModel;

//===============================================================

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  GlobalKey<FormState> passwordFormKey = GlobalKey<FormState>();
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController addressController = TextEditingController();

//===============================================================
  Future<String> pickImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final imageFile = await picker.pickImage(source: ImageSource.gallery);
    image = imageFile;
    return image!.path;
  }

  // Future<dynamic> uploadUserImage({required String path}) async {
  //   emit(UploadUserImageLoadingState());
  //   final formData = FormData.fromMap({});
  //   formData.files
  //       .add(MapEntry('image', await MultipartFile.fromFile(image!.path)));
  //   final response = await DioHelper.postData(url: updateImage, data: formData);
  //   // final updatedUserResponse = await DioHelper.getDataByToken(url: userData);
  //   try {
  //     imageUpdatedModel = ImageUpdatedModel.fromJson(response.data);
  //     // userModel = UserModel.fromJson(updatedUserResponse.data);
  //     CacheHelper.cacheUserModel(userModel: userModel!);
  //     emit(UploadUserImageSuccessState(imageUpdatedModel: imageUpdatedModel!));
  //   } on DioError catch (e) {
  //     debugPrint(e.error.toString());
  //     emit(UploadUserImageErrorState());
  //   } catch (e, s) {
  //     debugPrint(e.toString());
  //     debugPrint(s.toString());
  //     emit(UploadUserImageErrorState());
  //   }
  // }

  //===============================================================

  // Future<void> refreshUserData() async {
  //   emit(RefreshUserLoading());
  //   final response = await DioHelper.getDataByToken(url: userData);
  //   try {
  //     userModel = UserModel.fromJson(response.data);
  //     CacheHelper.cacheUserModel(userModel: userModel!);
  //     emit(RefreshUserSuccess(userModel: userModel!));
  //   } on DioError catch (e) {
  //     debugPrint(e.error.toString());
  //     Fluttertoast.showToast(msg: "change_password.some_error");
  //     emit(RefreshUserError());
  //   } catch (e, s) {
  //     debugPrint(e.toString());
  //     debugPrint(s.toString());
  //     Fluttertoast.showToast(msg: "change_password.some_error");
  //     emit(RefreshUserError());
  //   }
  // }

//===============================================================
  bool isPassword = true;
  bool isOldPassword = true;

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
  Future<void> updateUser({
    required String username,
    required String phone,
    required String email,
  }) async {
    emit(UserDetailsUpdateLoadingState());
    final response = await DioHelper.postData(
      url: updateProfile,
      data: {
        'user_name': username.trim(),
        'email': email.trim(),
        'phone': phone.trim(),
      },
    );
    var data = response.data as Map<String, dynamic>;
    try {
      personalModel = PersonalModel.fromJson(data);
      CacheHelper.cachePersonalInfo(personalModel: personalModel!);
      emit(UserDetailsUpdateSuccessState(personalModel: personalModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
      Fluttertoast.showToast(msg: "change_password.some_error");
      emit(UserDetailsUpdateErrorState());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      Fluttertoast.showToast(msg: "change_password.some_error");
      emit(UserDetailsUpdateErrorState());
    }
  }

//===============================================================

//===============================================================

//===============================================================

}
