import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../componants/auth_logo.dart';
import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import '../../widgets/main_button.dart';
import '../Mab Screen/map_screen.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.loginBackGround,
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
            child: Column(
              children: [
                const AuthLogo(),
                const SizedBox(
                  height: 12,
                ),
                const AppText(
                  text: "Health care",
                  size: 20,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 42,
                ),
                const AppText(
                  text: "Location",
                  size: 24,
                  color: AppColors.blueWhite,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 12,
                ),
                const AppText(
                  text: "Please enter your location",
                  size: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.normal,
                ),
                const SizedBox(
                  height: 38,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 43,
                    width: double.infinity,
                    padding:
                        const EdgeInsets.only(top: 12, left: 16, bottom: 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.loginBackGround,
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ]),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on_outlined,
                          color: AppColors.blueWhite,
                          size: 17,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        AppText(
                          text: "Your Location",
                          size: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                MainButton(
                  onPressed: () => MagicRouter.navigateTo(const MapScreen()),
                  height: 43,
                  borderRadius: 10,
                  width: double.infinity,
                  text: "Continue",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
