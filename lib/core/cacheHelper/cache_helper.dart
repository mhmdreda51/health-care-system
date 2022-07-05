import 'package:easy_localization/easy_localization.dart';
import 'package:get_storage/get_storage.dart';
import 'package:health_care_system/view/Sign%20Up/Model/location_model.dart';

import '../../view/Forget Password/Model/forget_password_model.dart';
import '../../view/Health Card Screen/Model/MedicalInfoModel.dart';
import '../../view/Health Card Screen/Model/get_medical_records.dart';
import '../../view/Login/model/user_model.dart';
import '../../view/Personal info/Model/personal_model.dart';

class CacheHelper {
  static final GetStorage _appBox = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  static Future<void> cacheUserInfo({
    required String token,
    required UserModel userModel,
  }) async {
    await _cacheUserToken(token);
    await _cacheUserModel(userModel);
  }

  static Future<void> cacheUserModel({
    required UserModel userModel,
  }) async {
    await _cacheUserModel(userModel);
  }

  static Future<void> _cacheUserModel(UserModel userModel) async =>
      await _appBox.write('userModel', userModel.toJson());

  static Future<void> _cacheUserToken(String token) async =>
      await _appBox.write('token', token);

  static String? get getUserToken => _appBox.read('token');

  static bool get isLogged => getUserInfo != null;

  static UserModel? get getUserInfo {
    UserModel? userModel;
    if (_appBox.hasData('userModel')) {
      userModel = UserModel.fromJson(_appBox.read('userModel'));
    }
    return userModel;
  }

  static String get userName =>
      toBeginningOfSentenceCase(getUserInfo!.data.user.userName).toString();

  static String get userEmail =>
      toBeginningOfSentenceCase(getUserInfo!.data.user.email).toString();

  static Future<void> signOut() async => await _appBox.erase();

//===============================================================
//===============================================================
  static Future<void> _cacheLocationModel(LocationModel locationModel) async =>
      await _appBox.write('locationModel', locationModel.toJson());

  static Future<void> cacheLocationModel({
    required String token,
    required LocationModel locationModel,
  }) async {
    _cacheUserToken(token);
    _cacheLocationModel(locationModel);
  }

  static LocationModel? get getLocationModel {
    LocationModel? locationModel;
    if (_appBox.hasData('locationModel')) {
      locationModel = LocationModel.fromJson(_appBox.read('locationModel'));
    }
    return locationModel;
  }

//===============================================================
  static Future<void> cacheLocationAddress({
    required String locationAddress,
  }) async {
    await _cacheLocationAddress(locationAddress);
  }

  static Future<void> _cacheLocationAddress(String locationAddress) async =>
      await _appBox.write('locationAddress', locationAddress);

  static String? get getLocationAddress => _appBox.read('locationAddress');

//===============================================================
  static Future<void> cachePersonalInfo({
    required PersonalModel personalModel,
  }) async {
    await _cachePersonalModel(personalModel);
  }

  static Future<void> _cachePersonalModel(PersonalModel personalModel) async =>
      await _appBox.write('personalModel', personalModel.toJson());

  static PersonalModel? get getPersonalModel => _appBox.read('personalModel');

  //===============================================================
  static Future<void> cachePin({
    required int pin,
  }) async {
    await _cachePin(pin);
  }

  static Future<void> _cachePin(int pin) async =>
      await _appBox.write('pin', pin);

  static int? get getPin => _appBox.read('pin');

  //===============================================================

  static Future<void> cacheForgetPasswordModel({
    required ForgetPasswordModel forgetPasswordModel,
  }) async {
    await _cacheForgetPasswordModel(forgetPasswordModel);
  }

  static Future<void> _cacheForgetPasswordModel(
          ForgetPasswordModel forgetPasswordModel) async =>
      await _appBox.write('forgetPasswordModel', forgetPasswordModel.toJson());

  static ForgetPasswordModel? get getForgetPasswordModel =>
      _appBox.read('forgetPasswordModel');

//===============================================================
  static Future<void> cacheMailForReset({
    required String mailForReset,
  }) async {
    await _cacheMailForReset(mailForReset);
  }

  static Future<void> _cacheMailForReset(String mailForReset) async =>
      await _appBox.write('mailForReset', mailForReset);

  static String? get getMailForReset => _appBox.read('mailForReset');

//===============================================================
  static Future<void> cacheBloodType({
    required String name,
  }) async {
    await _cacheBloodType(name);
  }

  static Future<void> _cacheBloodType(String name) async =>
      await _appBox.write('name', name);

  static String? get getBloodType => _appBox.read('name');

//===============================================================
  static Future<void> cacheMedicalInfoModel({
    required MedicalInfoModel medicalInfoModel,
  }) async {
    await _cacheMedicalInfoModel(medicalInfoModel);
  }

  static Future<void> _cacheMedicalInfoModel(
          MedicalInfoModel medicalInfoModel) async =>
      await _appBox.write('medicalInfoModel', medicalInfoModel);

  static MedicalInfoModel? get getMedicalInfoModel =>
      _appBox.read('medicalInfoModel');

//===============================================================
  static Future<void> cacheMedicalRec({
    required GetMedicalRecModel getMedicalRecModel,
  }) async {
    await _cacheMedicalRec(getMedicalRecModel);
  }

  static Future<void> _cacheMedicalRec(
          GetMedicalRecModel getMedicalRecModel) async =>
      await _appBox.write('getMedicalRecModel', getMedicalRecModel);

  static GetMedicalRecModel? get getMedicalRec =>
      _appBox.read('getMedicalRecModel');
//===============================================================

}
