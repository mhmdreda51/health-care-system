import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Login/login_screen.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import 'Widgets/intro_button.dart';

class IntroThree extends StatelessWidget {
  const IntroThree({Key? key}) : super(key: key);

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
                  image: AssetImage("assets/images/intro 3 - png.png"),
                ),
                SizedBox(
                  height: 42.h,
                ),
                AppText(
                  text: "Health card",
                  size: 20.sp,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 7.h,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: 35.h,
                    width: 200.w,
                    child: AppText(
                      text:
                          "Storage your medical records and share it with your doctors",
                      size: 14.sp,
                      color: AppColors.blueWhite,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                SizedBox(
                  height: 140.h,
                ),
                AppButton(
                  onPressed: () => MagicRouter.navigateTo(const LoginScreen()),
                  height: 50.h,
                  color: Colors.transparent,
                  width: 168.w,
                  text: "Next",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
