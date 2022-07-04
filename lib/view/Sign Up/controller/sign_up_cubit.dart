import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

import '../../../constants/end_point.dart';
import '../../../core/Firebase/firebase_messaging_helper.dart';
import '../../../core/cacheHelper/cache_helper.dart';
import '../../../core/dioHelper/dio_helper.dart';
import '../../../core/locationHelper/location_helper.dart';
import '../../Login/model/user_model.dart';
import '../Model/RegisterModel.dart';
import '../Model/location_model.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial()) {}

  static SignUpCubit get(context) => BlocProvider.of(context);
  bool isPassword = true;
  bool isPasswordConfirm = true;
  IconData passwordSuffix = Icons.visibility_outlined;

  IconData passwordConfirmSuffix = Icons.visibility_outlined;
  bool emailSuffix = true;
  bool userNameSuffix = true;
  bool phoneSuffix = true;

  UserModel? userModel;
  RegisterModel? registerModel;

  void emailSuffixOnChange({required String value}) {
    value.contains("@") || value.isEmpty
        ? emailSuffix = true
        : emailSuffix = false;
    emit(SignUpEmailSuffixOnChange());
  }

  void userNameSuffixOnChange({required String value}) {
    value.length >= 6 || value.isEmpty
        ? userNameSuffix = true
        : userNameSuffix = false;
    emit((SignUpUserNameSuffixOnChange()));
  }

  void phoneSuffixOnChange({required String value}) {
    value.length >= 11 || value.isEmpty
        ? phoneSuffix = true
        : phoneSuffix = false;
    emit(SignUpPhoneSuffixOnChange());
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
  bool checkBoxValue = false;

  void checkBoxOnChange(bool? value) {
    checkBoxValue = value!;
    emit(SignUpChangeCheckBox());
  }

  //===============================================================

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
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
    required String phone,
  }) async {
    emit(RegisterLoadingState());
    final token = await FirebaseMessagingHelper.getToken();
    final response = await DioHelper.postData(
      url: register,
      data: {
        'user_name': userName,
        'email': email.toLowerCase().trim(),
        'password': password,
        'password_confirmation': passwordConfirm,
        "phone": phone,
      },
    );
    try {
      userModel = UserModel.fromJson(response.data);
      if (userModel!.data.token != null) {
        CacheHelper.cacheUserInfo(
            token: userModel!.data.token.toString(), userModel: userModel!);
      }
      emit(RegisterSuccessState(userModel: userModel!));
    } on DioError catch (e) {
      Fluttertoast.showToast(msg: response.statusMessage.toString());

      emit(RegisterLErrorState(error: e.toString()));
    } catch (e) {
      debugPrint(e.toString());
      emit(RegisterLErrorState(error: e.toString()));
    }
  }

  //===============================================================
  Position? position;
  String myLocation = "";

  //===============================================================

  void getMyAddressName() async {
    emit(GetMyAddressNameLoading());

    try {
      List<Placemark> placeMarks = await placemarkFromCoordinates(
        position!.latitude,
        position!.longitude,
      );
      Placemark place1 = placeMarks[0];
      myLocation = "${place1.name} ${place1.subAdministrativeArea} ";
      print(myLocation);
      CacheHelper.cacheLocationAddress(locationAddress: myLocation);

      emit(GetMyAddressNameSuccess());
    } catch (e) {
      print(e.toString());
      emit(GetMyAddressNameError());
    }
  }

  //===============================================================

  Future<Position?> getCurrentLocation() async {
    emit(LocationLoading());
    try {
      position = await LocationHelper.getCurrentLocation().whenComplete(() {});

      emit(LocationSuccess(position: position!));

      return position!;
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(LocationError());
    }
    return null;
  }

  //===============================================================
  LocationModel? locationModel;

  Future<void> postUserLocation({
    required String email,
    required String lat,
    required String log,
  }) async {
    emit(PostLocationLoadingState());
    final response = await DioHelper.postData(
      url: postLocation,
      data: {
        'email': email,
        'long': log,
        'lat': lat,
      },
    );
    try {
      print(response.data);

      locationModel = LocationModel.fromJson(response.data);
      if (locationModel!.data.token != null) {
        CacheHelper.cacheLocationModel(
          token: locationModel!.data.token.toString(),
          locationModel: locationModel!,
        );
      }
      emit(PostLocationSuccessState(locationModel: locationModel!));
    } on DioError catch (e) {
      debugPrint(e.error.toString());
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrint(s.toString());
      emit(PostLocationLErrorState(error: e.toString()));
    }
  }
}
