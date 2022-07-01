import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class TopRow extends StatelessWidget {
  const TopRow({Key? key, required this.header, required this.onTap})
      : super(key: key);
  final String header;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppText(
            text: header,
            size: 14.sp,
            color: AppColors.blueWhite,
            fontWeight: FontWeight.bold,
          ),
          GestureDetector(
            onTap: onTap,
            child: AppText(
              text: "See All",
              size: 12.sp,
              color: AppColors.blueWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
