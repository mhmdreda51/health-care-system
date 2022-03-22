import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/core/router/router.dart';

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
                Image(
                  image: AssetImage("assets/images/intro 1-png.png"),
                ),
                SizedBox(
                  height: 42,
                ),
                Text(
                  "Search Doctors",
                  style: TextStyle(
                    color: AppColors.blueWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Text(
                  "Get list of best doctor nearby you",
                  style: TextStyle(
                    color: AppColors.blueWhite,
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 164,
                ),
                IntroButton(
                  onPressed: () => MagicRouter.navigateTo(IntroTwo()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
