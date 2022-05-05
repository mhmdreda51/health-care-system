import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/stars_bar.dart';

class FeedBackIDoctorCard extends StatelessWidget {
  const FeedBackIDoctorCard(
      {Key? key,
      required this.category,
      required this.name,
      required this.location,
      required this.image})
      : super(key: key);
  final String category;
  final String name;
  final String location;
  final String image;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(
            image: AssetImage(image),
            height: 70,
            width: 70,
          ),
          SizedBox(width: 13.w),
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
                size: 12.sp,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 5.h),
              AppText(
                text: location,
                size: 12.sp,
                color: Colors.grey,
                fontWeight: FontWeight.normal,
              ),
              SizedBox(height: 3.h),
              const StarsBar(stars: 3),
            ],
          ),
        ],
      ),
    );
  }
}
