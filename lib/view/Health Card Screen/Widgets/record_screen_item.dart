import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';

class RecordScreenItem extends StatelessWidget {
  const RecordScreenItem({Key? key, required this.onTap, required this.text})
      : super(key: key);
  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: double.infinity,
        padding: EdgeInsets.only(top: 10, left: 10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: AppText(
          color: AppColors.introTextColor,
          size: 12,
          fontWeight: FontWeight.normal,
          text: text,
        ),
      ),
    );
  }
}
