import '../core/cacheHelper/cache_helper.dart';

const base = "http://mohamedelbadry.me/api/v1";
const login = '/login';
const register = '/register';
const postLocation = "/location";
const change_password = '/change-password';
const String new_Password = '/new-password';
const String updateProfile = '/updateProfile';
const String forgetPassword = '/reset-password';
const String corona = '/corona';
const String chooseBlood = '/choose-blood';
const String listBloodType = '/list-blood-type';
const String medicalInfo = '/getCorona';
String before_home =
    '/before-home?long=${CacheHelper.getLocationModel!.data.user.long}&lat=${CacheHelper.getLocationModel!.data.user.lat}';
const String getRecType = '/listType';
const String postRec = '/createCard';
const String getRecords = '/getCard';
