import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'package:health_care_system/componants/gps_off_view.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/Home%20Screen/home_screen.dart';
import 'package:health_care_system/view/Navigation%20Screen/navigation_screen.dart';

import '../../core/Permission helper/permission_helper.dart';
import '../../core/cacheHelper/cache_helper.dart';
import '../../core/router/router.dart';
import '../Home Screen/Controller/home_cubit.dart';
import '../Intro/intro_one.dart';
import 'Componants/splash_contant.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _visible = false;
  Widget? startWidget;

  Future<void> _checkGps() async {
    bool isGpsOn = await geo.Geolocator.isLocationServiceEnabled();
    if (isGpsOn) {
      if (await PermissionHelper().hasLocationPermission()) {
        startWidget = const HomeScreen();
      } else {
        await PermissionHelper().requestLocationPermission();
      }
    } else {
      startWidget = const GPSOff();
    }
  }

  @override
  void initState() {
    Connectivity().checkConnectivity().then((value) {
      if (value == ConnectivityResult.none) {
        HomeCubit.get(context).isConnected = false;
      } else {
        HomeCubit.get(context).isConnected = true;
      }
    });
    HomeCubit.get(context).checkConnectivity();
    _checkGps();
    HomeCubit.get(context)
        .getCurrentLocation()
        .whenComplete(() => HomeCubit.get(context).getMyAddressName());

    super.initState();

    Timer(const Duration(milliseconds: 1), () {
      setState(() {
        _visible = !_visible;
      });
    });
    debugPrint('token : ' + (CacheHelper.getUserToken ?? ''));

    Timer(const Duration(milliseconds: 3000), () {
      MagicRouter.navigateAndPopAll(
          CacheHelper.isLogged ? NavigationScreen() : const IntroOne());
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.blueWhite,
                AppColors.deepBlue,
              ],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter,
            ),
          ),
          child: const SplashContant(),
        ),
      ),
    );
  }
}
