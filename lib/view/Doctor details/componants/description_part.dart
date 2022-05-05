import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class DescriptionPart extends StatelessWidget {
  const DescriptionPart({Key? key, required this.description})
      : super(key: key);
  final List description;

  @override
  Widget build(BuildContext context) {
    final descriptionList =
        description.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
          text: "Description",
          size: 14,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 10.h),
        AppText(
          text: descriptionList,
          size: 13,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
      ],
    );
  }
}
