import 'package:flutter/material.dart';
import 'package:health_care_system/view/Login/login_screen.dart';

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
                Image(
                  image: AssetImage("assets/images/intro 3 - png.png"),
                ),
                SizedBox(
                  height: 42,
                ),
                Text(
                  "Health card",
                  style: TextStyle(
                    color: AppColors.blueWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 37,
                    width: 205,
                    child: Text(
                      "Storage your medical records and share it with your doctors",
                      maxLines: 2,
                      style: TextStyle(
                        color: AppColors.blueWhite,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 164,
                ),
                IntroButton(
                  onPressed: () => MagicRouter.navigateTo(LoginScreen()),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
