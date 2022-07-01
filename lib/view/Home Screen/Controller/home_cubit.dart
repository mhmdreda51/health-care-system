import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/view/Covid%2019/covid19_screen.dart';
import 'package:health_care_system/view/Find%20Doctor/find_doctor.dart';
import 'package:health_care_system/view/Home%20Screen/home_screen.dart';
import 'package:health_care_system/view/find%20hospitals/find_hospitals.dart';

import '../../../core/connectivity helper/connectivity_helper.dart';
import '../../Account Screen/account_screen.dart';
import '../../Chat Boot/chat_boot.dart';
import '../../Health Card Screen/health_card_screen.dart';
import '../../Pill Reminder/pill_reminder.dart';
import '../../find labs/find_laps.dart';
import '../../find pharmacys/find_pharmacys.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  //===============================================================

  static HomeCubit get(context) => BlocProvider.of(context);

  //===============================================================
  StreamController<ConnectivityStatus> connectivityStream =
      ConnectivityHelper().connectionStatusController;
  late bool isConnected;

//===============================================================
  @override
  Future<void> close() {
    connectivityStream.close();
    return super.close();
  }

  //===============================================================
  Future<void> checkConnectivity() async {
    connectivityStream.stream.asBroadcastStream().listen((status) {
      if (status == ConnectivityStatus.offline) {
        isConnected = false;
        emit(ConnectivityOfflineState());
      } else {
        isConnected = true;
        emit(ConnectivityOnlineState());
      }
    });
  }

  //===============================================================

//===============================================================
  int carouselIndex = 0;
  TextEditingController searchController = TextEditingController();

//===============================================================
  changeCarouselIndex({required int index}) {
    carouselIndex = index;
    emit(ChangeCarouselIndex());
  }



//===============================================================

  void navigateServicesById(int id) {
    if (id == 1) {
      MagicRouter.navigateTo(const FindDoctor());
      emit(ChangeServicesById());
    } else if (id == 2) {
      MagicRouter.navigateTo(const FindHospitals());
      emit(ChangeServicesById());
    } else if (id == 3) {
      MagicRouter.navigateTo(const FindPharmacys());
      emit(ChangeServicesById());
    } else if (id == 4) {
      MagicRouter.navigateTo(const FindLaps());
      emit(ChangeServicesById());
    } else if (id == 5) {
      _callNumber();
      emit(CallAmpulanceSuccess());
      emit(ChangeServicesById());
    } else if (id == 6) {
      MagicRouter.navigateTo(const PillReminder());
      emit(ChangeServicesById());
    }
  }

//===============================================================
  int currentIndex = 0;
  List<Widget> bottomViews = [
    const HomeScreen(),
    Covid19Screen(),
    ChatBoot(),
    HealthCardScreen(),
    const AccountScreen(),
  ];

  void changeBottomViews(int index) {
    currentIndex = index;
    emit(AppChangeBottomNavState());
  }

//===============================================================
  _callNumber() async {
    const number = '911';
    await FlutterPhoneDirectCaller.callNumber(number);
    emit(CallAmpulanceSuccess());
  }

//===============================================================

//===============================================================

//===============================================================
//===============================================================
//===============================================================
//===============================================================
//===============================================================
//===============================================================

}
