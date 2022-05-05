import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class CommunicationPart extends StatelessWidget {
  const CommunicationPart(
      {Key? key,
      required this.numberPhone,
      required this.socialName,
      required this.gmail})
      : super(key: key);
  final int numberPhone;
  final String socialName;
  final String gmail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: "Communication",
          size: 14.sp,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                const Icon(
                  FontAwesomeIcons.phoneAlt,
                  color: AppColors.introTextColor,
                  size: 15,
                ),
                SizedBox(height: 10.h),
                const Icon(
                  FontAwesomeIcons.facebook,
                  color: AppColors.introTextColor,
                  size: 15,
                ),
                SizedBox(height: 10.h),
                const Icon(
                  Icons.email,
                  color: AppColors.introTextColor,
                  size: 15,
                ),
              ],
            ),
            SizedBox(width: 10.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: numberPhone.toString(),
                  size: 13.sp,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 10.h),
                AppText(
                  text: socialName,
                  size: 13.sp,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 10.h),
                AppText(
                  text: gmail,
                  size: 13.sp,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
