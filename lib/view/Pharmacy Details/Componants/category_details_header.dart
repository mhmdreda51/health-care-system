import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/find%20pharmacys/Model/PharmacysModel.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/stars_bar.dart';

class PharmacyDetailsHeader extends StatelessWidget {
  const PharmacyDetailsHeader({Key? key, required this.item}) : super(key: key);
  final PharmacysModel item;

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
              image: AssetImage(item.image),
              height: 110.h,
              width: 100.w,
            ),
            SizedBox(width: 20.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: item.name,
                  size: 16.sp,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 5.h),
                AppText(
                  text: item.category,
                  size: 14.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 5.h),
                AppText(
                  text: item.location,
                  size: 14.sp,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                ),
                SizedBox(height: 5.h),
                StarsBar(stars: item.rateStars.toDouble()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
