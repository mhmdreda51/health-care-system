import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/stars_bar.dart';

class HospitalDetailsHeader extends StatelessWidget {
  const HospitalDetailsHeader(
      {Key? key,
      required this.image,
      required this.location,
      required this.name,
      required this.rateStars,
      required this.category})
      : super(key: key);
  final String image;
  final String location;
  final String name;
  final double rateStars;
  final String category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 110,
      child: Container(
        height: 100,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(image),
              height: 110.h,
              width: 100.w,
            ),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: name,
                  size: 14.sp,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 5.h),
                AppText(
                  text: category,
                  size: 14.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 5.h),
                AppText(
                  text: location,
                  size: 14.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 5.h),
                StarsBar(stars: rateStars.toDouble()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
