import 'package:flutter/material.dart';
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
                const SizedBox(
                  height: 42,
                ),
                const AppText(
                  text: "Health card",
                  size: 20,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 7,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: 37,
                    width: 205,
                    child: AppText(
                      text:
                          "Storage your medical records and share it with your doctors",
                      size: 14,
                      color: AppColors.blueWhite,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 140,
                ),
                AppButton(
                  onPressed: () => MagicRouter.navigateTo(const LoginScreen()),
                  height: 50,
                  color: Colors.transparent,
                  width: 168,
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
