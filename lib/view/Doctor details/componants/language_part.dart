import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../controller/doctor_details_cubit.dart';

class LanguagePart extends StatelessWidget {
  const LanguagePart(
      {Key? key,
      required this.cubit,
      required this.languages,
      required this.flags})
      : super(key: key);
  final DoctorDetailsCubit cubit;
  final List<String> languages;
  final List<String> flags;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const AppText(
          text: "Languages",
          size: 14,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            Column(
              children: flags
                  .map((e) => Text(cubit.generateCountryFlag(countryCode: e)))
                  .toList(),
            ),
            SizedBox(width: 10.w),
            Column(
              children: languages
                  .map(
                    (e) => Row(
                      children: [
                        AppText(
                          text: e,
                          size: 13,
                          color: AppColors.introTextColor,
                          fontWeight: FontWeight.normal,
                        ),
                        SizedBox(width: 30.w),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        const Divider(color: Colors.black38),
        SizedBox(height: 10.h),
      ],
    );
  }
}
