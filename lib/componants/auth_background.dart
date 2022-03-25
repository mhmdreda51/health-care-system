import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AuthBackground extends StatelessWidget {
  const AuthBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 100),
          child: Image(
            image: AssetImage("assets/images/loginImage.png"),
          ),
        ),
        Container(
          height: double.infinity,
          width: double.infinity,
          color: AppColors.loginBackGround.withOpacity(.8),
        ),
      ],
    );
  }
}
