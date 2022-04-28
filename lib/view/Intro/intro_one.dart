import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/widgets/app_text.dart';

import 'Widgets/intro_button.dart';
import 'intro_two.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.only(left: 10, right: 10, top: 100.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/intro 1-png.png"),
                ),
                SizedBox(
                  height: 42.h,
                ),
                AppText(
                  text: "Search Doctors",
                  size: 20.sp,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 7.h,
                ),
                AppText(
                  text: "Get list of best doctor nearby you",
                  size: 14.sp,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(
                  height: 164.h,
                ),
                AppButton(
                  onPressed: () => MagicRouter.navigateTo(const IntroTwo()),
                  height: 50.h,
                  width: 168.w,
                  text: "Next",
                  color: Colors.transparent,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
