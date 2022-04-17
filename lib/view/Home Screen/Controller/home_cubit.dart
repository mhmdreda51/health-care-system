import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/view/Find%20Doctor/find_doctor.dart';
import 'package:health_care_system/view/Home%20Screen/home_screen.dart';
import 'package:health_care_system/view/find%20hospitals/find_hospitals.dart';
import 'package:meta/meta.dart';

import '../../Account Screen/account_screen.dart';
import '../../Health Card Screen/health_card_screen.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  //===============================================================

  static HomeCubit get(context) => BlocProvider.of(context);

//===============================================================
  int carouselIndex = 0;
  TextEditingController searchController = TextEditingController();

//===============================================================
  changeCarouselIndex({required int index}) {
    carouselIndex = index;
    emit(ChangeCarouselIndex());
  }

  List carouselImage = [
    'assets/images/carousel1.jpg',
    'assets/images/carousel2.jpg',
    'assets/images/carousel3.jpg',
    'assets/images/carousel4.jpg',
    'assets/images/carousel5.jpg',
  ];

//===============================================================

  void navigateServicesById(int id) {
    if (id == 1) {
      MagicRouter.navigateTo(const FindDoctor());
      emit(ChangeServicesById());
    } else if (id == 2) {
      MagicRouter.navigateTo(const FindHospitals());
      emit(ChangeServicesById());
    } else if (id == 3) {
      MagicRouter.navigateTo(const Scaffold());
      emit(ChangeServicesById());
    } else if (id == 4) {
      MagicRouter.navigateTo(const Scaffold());
      emit(ChangeServicesById());
    } else if (id == 5) {
      _callNumber();
      emit(CallAmpulanceSuccess());
      emit(ChangeServicesById());
    } else if (id == 6) {
      MagicRouter.navigateTo(const Scaffold());
      emit(ChangeServicesById());
    }
  }

//===============================================================
  int currentIndex = 0;
  List<Widget> bottomViews = [
    const HomeScreen(),
    const HealthCardScreen(),
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
