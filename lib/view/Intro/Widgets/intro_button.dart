import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {Key? key,
      required this.onPressed,
      required this.height,
      required this.width,
      required this.color,
      required this.text})
      : super(key: key);
  final VoidCallback onPressed;
  final double height;
  final double width;
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
          border: const Border(
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
            text,
            style: const TextStyle(
                fontSize: 14,
                color: AppColors.blueWhite,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
