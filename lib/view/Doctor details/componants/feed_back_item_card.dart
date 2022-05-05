import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/constants/app_colors.dart';

import '../../../widgets/app_text.dart';
import '../../../widgets/stars_bar.dart';

class FeedBackItemCard extends StatelessWidget {
  const FeedBackItemCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      padding: EdgeInsets.all(10.r),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              AppText(
                text: "MOHAMED REDA",
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
                size: 13,
              ),
              StarsBar(stars: 4),
            ],
          ),
          const SizedBox(height: 5),
          const AppText(
            text: "3 hours ago",
            color: AppColors.introTextColor,
            fontWeight: FontWeight.normal,
            size: 9,
          ),
          const SizedBox(height: 5),
          const AppText(
            text:
                "Dr. (Mohamed Ali) and the staff are friendly and ensure that I am properly informed about my health and care. I would have no qualms in recommending them to friendly and friends.",
            color: AppColors.introTextColor,
            fontWeight: FontWeight.normal,
            size: 9,
          ),
        ],
      ),
    );
  }
}
