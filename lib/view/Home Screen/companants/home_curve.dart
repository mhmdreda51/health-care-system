import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';

class HomeCurve extends StatelessWidget {
  const HomeCurve({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 250.h,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.blueWhite,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ));
  }
}
