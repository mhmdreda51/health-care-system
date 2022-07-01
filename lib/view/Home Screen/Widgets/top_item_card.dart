import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/app_text.dart';
import '../../../widgets/stars_bar.dart';

class TopItemCard extends StatelessWidget {
  const TopItemCard(
      {Key? key,
      required this.name,
      required this.category,
      required this.rateStars,
      required this.image})
      : super(key: key);
  final String name;
  final String category;
  final double rateStars;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25),
      height: 180,
      width: 125,
      child: Stack(
        children: [
          Container(
            height: 135.h,
            width: 125.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 40, left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: name,
                    size: 11.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  AppText(
                    text: category,
                    size: 10.sp,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  StarsBar(
                    stars: rateStars,
                  )
                ],
              ),
            ),
          ),
          AlignPositioned(
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
            alignment: Alignment.topCenter,
            touch: Touch.inside,
            dx: 25.0,
            moveByChildWidth: -0.7,
            moveByChildHeight: -0.5,
          ),
        ],
      ),
    );
  }
}
