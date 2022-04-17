import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/core/router/router.dart';

import '../constants/app_colors.dart';
import 'app_text.dart';

class ServicesHeader extends StatelessWidget {
  const ServicesHeader({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 135.w,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black54.withOpacity(.3),
            spreadRadius: 1,
            blurRadius: 9,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 5.h,
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: AppColors.blueWhite,
              ),
              onPressed: () => MagicRouter.pop(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 10),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: AppText(
                text: text,
                size: 24.sp,
                color: AppColors.blueWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
