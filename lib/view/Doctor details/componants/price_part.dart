import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class PricePart extends StatelessWidget {
  const PricePart({
    Key? key,
    required this.priceFirsTime,
    required this.priceReturn,
  }) : super(key: key);
  final int priceFirsTime;
  final int priceReturn;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: "Price",
          size: 14.sp,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 10.h,
        ),
        AppText(
          text: "First time: ${priceFirsTime.toString()}",
          size: 13.sp,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
        AppText(
          text: "First time: ${priceReturn.toString()}",
          size: 13.sp,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(
          height: 10.h,
        ),
        const Divider(
          color: Colors.black38,
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
