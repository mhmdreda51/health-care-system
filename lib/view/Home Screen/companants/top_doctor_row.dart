import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class TopDoctorRow extends StatelessWidget {
  const TopDoctorRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: "Top Doctor",
            size: 14.sp,
            color: AppColors.blueWhite,
            fontWeight: FontWeight.bold,
          ),
          AppText(
            text: "See All",
            size: 12.sp,
            color: AppColors.blueWhite,
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
