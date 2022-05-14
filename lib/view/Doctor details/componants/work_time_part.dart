import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class WorkTimePart extends StatelessWidget {
  const WorkTimePart({Key? key, required this.workingTime}) : super(key: key);
  final String workingTime;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: "Working Time",
          size: 14.sp,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 10.h),
        AppText(
          text: workingTime,
          size: 13.sp,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 10.h),
        const Divider(color: Colors.black38),
      ],
    );
  }
}
