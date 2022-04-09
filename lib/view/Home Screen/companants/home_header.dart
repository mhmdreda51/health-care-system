import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/app_text.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage("assets/images/logoWhite.png"),
        ),
        SizedBox(
          height: 14.h,
        ),
        AppText(
          text: "Find Your",
          size: 20.sp,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(
          height: 5.h,
        ),
        AppText(
          text: "Medical Solution",
          size: 20.sp,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ],
    );
  }
}
