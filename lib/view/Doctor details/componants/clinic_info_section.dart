import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class ClinicInfoSection extends StatelessWidget {
  const ClinicInfoSection(
      {Key? key,
      required this.address,
      required this.workingTime,
      required this.priceFirsTime,
      required this.priceReturn,
      required this.numberPhone,
      required this.socialName,
      required this.gmail})
      : super(key: key);
  final String address;
  final String workingTime;
  final int priceFirsTime;
  final int priceReturn;
  final int numberPhone;
  final String socialName;
  final String gmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 10),
      child: Column(
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
          AppText(
            text: "Working Time",
            size: 14.sp,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),
          AppText(
            text: workingTime,
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
          AppText(
            text: "Communication",
            size: 14.sp,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Icon(
                    FontAwesomeIcons.phoneAlt,
                    color: AppColors.introTextColor,
                    size: 15.w,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Icon(
                    FontAwesomeIcons.facebook,
                    color: AppColors.introTextColor,
                    size: 15.w,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Icon(
                    Icons.email,
                    color: AppColors.introTextColor,
                    size: 15.w,
                  ),
                ],
              ),
              Column(
                children: [
                  AppText(
                    text: numberPhone.toString(),
                    size: 13.sp,
                    color: AppColors.introTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppText(
                    text: socialName,
                    size: 13.sp,
                    color: AppColors.introTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  AppText(
                    text: gmail,
                    size: 13.sp,
                    color: AppColors.introTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10.h,
          ),
          const Divider(
            color: Colors.black38,
          ),
        ],
      ),
    );
  }
}
