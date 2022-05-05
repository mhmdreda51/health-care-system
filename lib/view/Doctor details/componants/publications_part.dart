import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class PublicationsPart extends StatelessWidget {
  const PublicationsPart({Key? key, required this.publications})
      : super(key: key);
  final List publications;

  @override
  Widget build(BuildContext context) {
    final publicationsList =
        publications.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
          text: "Publications",
          size: 14,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 10.h),
        AppText(
          text: publicationsList,
          size: 13,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
        const Divider(color: Colors.black38),
        SizedBox(height: 10.h),
      ],
    );
  }
}
