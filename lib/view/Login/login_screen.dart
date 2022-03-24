import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../componants/auth_background.dart';
import '../../componants/auth_logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                const AuthBackground(),
                Column(
                  children: const [
                    AuthLogo(),
                    SizedBox(
                      height: 11,
                    ),
                    AppText(
                      text: "Medical Care",
                      size: 20,
                      color: AppColors.blueWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 62,
                    ),
                    AppText(
                      text: "Sign in",
                      size: 23,
                      color: AppColors.loginTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
