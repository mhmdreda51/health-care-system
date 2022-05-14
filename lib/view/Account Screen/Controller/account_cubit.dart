import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/view/Login/login_screen.dart';
import 'package:meta/meta.dart';

import '../../../core/cacheHelper/cache_helper.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountInitial());

  //===============================================================

  static AccountCubit get(context) => BlocProvider.of(context);

//===============================================================
  Future<void> signOut() async {
    await CacheHelper.signOut();
    MagicRouter.navigateAndPopAll(const LoginScreen());

    // emit(LogoutLoadingState());
    // final response = await DioHelper.getDataByToken(url: logout);

    // try {
    // logoutModel = LogoutModel.fromJson(response.data);
    // emit(LogoutSuccessState());
    // } on DioError catch (e) {
    //   debugPrint(e.error.toString());
    //   emit(LogoutErrorState());
    // } catch (e, s) {
    //   debugPrint(e.toString());
    //   debugPrint(s.toString());
    //   emit(LogoutErrorState());
    // }
  }
}
