import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../../widgets/stars_bar.dart';

class DoctorItemCard extends StatelessWidget {
  const DoctorItemCard(
      {Key? key,
      required this.category,
      required this.rateStars,
      required this.name,
      required this.location,
      required this.image})
      : super(key: key);
  final String category;
  final double rateStars;
  final String name;
  final String location;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.only(top: 17, left: 15, right: 15, bottom: 10),
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
              StarsBar(stars: rateStars.toDouble()),
            ],
          ),
          SizedBox(width: 100.w),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: FaIcon(
              FontAwesomeIcons.ellipsisV,
              color: AppColors.introTextColor,
              size: 15.w,
            ),
          )
        ],
      ),
    );
  }
}
