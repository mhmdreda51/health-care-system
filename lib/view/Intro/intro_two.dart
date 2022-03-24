import 'package:flutter/material.dart';
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
                const SizedBox(
                  height: 42,
                ),
                const AppText(
                  text: "Find Medical Solution",
                  size: 20,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 7,
                ),
                const AppText(
                  text: "Search about hospitals, labs, and pharmacies",
                  size: 14,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 164,
                ),
                IntroButton(
                  onPressed: () => MagicRouter.navigateTo(const IntroThree()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
