import 'package:flutter/material.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Controller/health_card_cubit.dart';

import '../../../constants/app_colors.dart';
import '../../../core/cacheHelper/cache_helper.dart';
import '../../../widgets/app_devider.dart';
import '../../../widgets/app_text.dart';

class BloodPartWithInfo extends StatelessWidget {
  const BloodPartWithInfo({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      padding: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        border: Border.all(width: .7, color: AppColors.introTextColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                Icons.bloodtype_outlined,
                color: AppColors.introTextColor,
              ),
              SizedBox(width: 5),
              AppText(
                color: AppColors.introTextColor,
                text: "Blood type",
                fontWeight: FontWeight.bold,
                size: 14,
              ),
            ],
          ),
          AppDivider(),
          SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      color: AppColors.introTextColor,
                      text: "Your blood type",
                      fontWeight: FontWeight.bold,
                      size: 14,
                    ),
                    SizedBox(height: 5),
                    AppText(
                      color: AppColors.redColor,
                      text: "  ${CacheHelper.getBloodType} - blood",
                      fontWeight: FontWeight.bold,
                      size: 14,
                    ),
                  ],
                ),
                SizedBox(width: 45),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        color: AppColors.introTextColor,
                        text: "You can receive",
                        fontWeight: FontWeight.bold,
                        size: 14,
                      ),
                      SizedBox(height: 5),
                      AppText(
                        color: AppColors.redColor,
                        text: " A-, O- blood",
                        fontWeight: FontWeight.bold,
                        size: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
