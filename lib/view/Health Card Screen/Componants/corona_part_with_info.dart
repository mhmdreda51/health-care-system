import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Controller/health_card_cubit.dart';
import 'package:health_care_system/widgets/app_devider.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../../constants/app_colors.dart';

class CoronaPartWithInfo extends StatelessWidget {
  const CoronaPartWithInfo({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 220,
      padding: EdgeInsets.only(right: 20, left: 10, top: 10),
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
              Row(
                children: [
                  Icon(
                    Icons.coronavirus_outlined,
                    color: AppColors.introTextColor,
                  ),
                  SizedBox(width: 5),
                  AppText(
                    color: AppColors.introTextColor,
                    text: "Corona vaccine",
                    fontWeight: FontWeight.bold,
                    size: 14,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 5),
          AppDivider(),
          SizedBox(height: 5),
          Row(
            children: [
              Icon(
                FontAwesomeIcons.solidCheckCircle,
                color: Colors.green,
              ),
              SizedBox(width: 10),
              AppText(
                text: "COVID-19 Vaccination complete (2 of 2)",
                size: 13,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                AppText(
                  text: "Dose 1 on  ${cubit.medicalInfoModel!.data!.dateFirst}",
                  size: 13,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: AppText(
                        text: "Name : ${cubit.medicalInfoModel!.data!.name}",
                        size: 13,
                        color: AppColors.introTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: AppText(
                        text:
                            "location : ${cubit.medicalInfoModel!.data!.locationFirst}",
                        size: 13,
                        color: AppColors.introTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                AppText(
                  text:
                      "Dose 2 on  ${cubit.medicalInfoModel!.data!.dateSec ?? ""}",
                  size: 13,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: AppText(
                        text:
                            "Name : ${cubit.medicalInfoModel!.data!.name ?? ""}",
                        size: 13,
                        color: AppColors.introTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: AppText(
                        text:
                            "location : ${cubit.medicalInfoModel!.data!.locationSec ?? ""}",
                        size: 13,
                        color: AppColors.introTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
