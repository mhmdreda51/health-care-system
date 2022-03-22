import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class IntroButton extends StatelessWidget {
  const IntroButton({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 168,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          border: Border(
            top: BorderSide(
              color: AppColors.introButtonBorder,
              width: 2,
            ),
            right: BorderSide(
              color: AppColors.introButtonBorder,
              width: 2,
            ),
            left: BorderSide(
              color: AppColors.introButtonBorder,
              width: 2,
            ),
            bottom: BorderSide(
              color: AppColors.introButtonBorder,
              width: 2,
            ),
          ),
        ),
        child: Center(
          child: Text(
            "Next",
            style: TextStyle(
                fontSize: 14,
                color: AppColors.blueWhite,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
