import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class InfoCard extends StatelessWidget {
  const InfoCard(
      {Key? key, required this.icon, required this.onTap, required this.text})
      : super(key: key);
  final IconData icon;
  final Function() onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 155,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          border: Border(
            right: BorderSide(width: .7, color: AppColors.introTextColor),
            left: BorderSide(width: .7, color: AppColors.introTextColor),
            top: BorderSide(width: .7, color: AppColors.introTextColor),
            bottom: BorderSide(width: .7, color: AppColors.introTextColor),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: AppColors.introTextColor,
              size: 60,
            ),
            SizedBox(height: 20),
            AppText(
              size: 13,
              color: AppColors.introTextColor,
              fontWeight: FontWeight.normal,
              text: text,
            ),
          ],
        ),
      ),
    );
  }
}
