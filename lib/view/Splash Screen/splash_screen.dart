import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart' as geo;
import 'package:health_care_system/constants/app_colors.dart';

import '../../componants/gps_off_view.dart';
import '../../core/Permission helper/permission_helper.dart';
import '../../core/router/router.dart';
import '../../widgets/app_text.dart';
import '../Home Screen/Controller/home_cubit.dart';
import '../Intro/intro_one.dart';
import '../Mab Screen/controller/map_cubit.dart';

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
        startWidget = const IntroOne();
      } else {
        await PermissionHelper().requestLocationPermission();
      }
    } else {
      startWidget = const GPSOff();
    }
  }

  @override
  void initState() {
    MapCubit.get(context).getCurrentLocation();
    MapCubit.get(context).getMyAddressName();
    Connectivity().checkConnectivity().then((value) {
      if (value == ConnectivityResult.none) {
        HomeCubit.get(context).isConnected = false;
      } else {
        HomeCubit.get(context).isConnected = true;
      }
    });
    _checkGps();
    HomeCubit.get(context).checkConnectivity();

    super.initState();

    Timer(const Duration(milliseconds: 1), () {
      setState(() {
        _visible = !_visible;
      });
    });
    Timer(const Duration(milliseconds: 3000), () {
      MagicRouter.navigateAndPopAll(const IntroOne());
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SizedBox(
                height: 150,
              ),
              Image(
                image: AssetImage("assets/images/logoWhite.png"),
              ),
              SizedBox(
                height: 9,
              ),
              AppText(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                size: 15,
                text: "Medical Care",
              ),
              SizedBox(
                height: 42,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Image(
                  image: AssetImage("assets/images/splash - png.png"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
