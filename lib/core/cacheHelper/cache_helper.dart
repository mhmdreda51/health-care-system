import 'package:easy_localization/easy_localization.dart';
import 'package:get_storage/get_storage.dart';
import 'package:health_care_system/view/Sign%20Up/Model/location_model.dart';

import '../../view/Login/model/user_model.dart';

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

}
