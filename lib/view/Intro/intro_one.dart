import 'package:flutter/material.dart';
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
            padding: const EdgeInsets.only(left: 10, right: 10, top: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage("assets/images/intro 1-png.png"),
                ),
                const SizedBox(
                  height: 42,
                ),
                const AppText(
                  text: "Search Doctors",
                  size: 20,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 7,
                ),
                const AppText(
                  text: "Get list of best doctor nearby you",
                  size: 14,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 164,
                ),
                AppButton(
                  onPressed: () => MagicRouter.navigateTo(const IntroTwo()),
                  height: 50,
                  width: 168,
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
