import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants/app_colors.dart';
import 'app_text.dart';

class DetailsPart extends StatelessWidget {
  const DetailsPart({Key? key, required this.title, required this.text})
      : super(key: key);
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        AppText(
          text: title,
          size: 14,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 10.h),
        AppText(
          text: text,
          size: 13,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 10.h),
      ],
    );
  }
}
