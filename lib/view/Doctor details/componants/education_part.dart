import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class EducationPart extends StatelessWidget {
  const EducationPart({Key? key, required this.education}) : super(key: key);
  final List education;

  @override
  Widget build(BuildContext context) {
    final educationList =
        education.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
          text: "Education",
          size: 14,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 10.h),
        AppText(
          text: educationList,
          size: 13,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
        const Divider(color: Colors.black38),
        SizedBox(height: 10.h),
      ],
    );
  }
}
