import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Intro/intro_three.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import 'Widgets/intro_button.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/intro 2-png.png"),
                ),
                SizedBox(
                  height: 42.h,
                ),
                AppText(
                  text: "Find Medical Solution",
                  size: 20.sp,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 7.h,
                ),
                AppText(
                  text: "Search about hospitals, labs, and pharmacies",
                  size: 14.sp,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(
                  height: 164.h,
                ),
                AppButton(
                  onPressed: () => MagicRouter.navigateTo(const IntroThree()),
                  height: 50.h,
                  text: "Next",
                  width: 168.w,
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
