import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class AddressPart extends StatelessWidget {
  const AddressPart({Key? key, required this.address}) : super(key: key);
  final String address;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppText(
          text: "Address",
          size: 14.sp,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 10.h,
        ),
        AppText(
          text: address,
          size: 13.sp,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
        const Divider(
          color: Colors.black38,
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
