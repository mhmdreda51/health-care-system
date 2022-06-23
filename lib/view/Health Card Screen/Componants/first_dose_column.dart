import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../Personal info/Componants/user_form_field.dart';
import '../Controller/health_card_cubit.dart';

class FirstDoseColumn extends StatelessWidget {
  const FirstDoseColumn({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          AppText(
            text: "*First dose*",
            size: 15,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: AppText(
                  text: "Date",
                  size: 15,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: UserFormField(
                  height: 26,
                  controller: cubit.corona_dose1_date,
                  hint: "",
                  validator: (value) {},
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: AppText(
                  text: "Location",
                  size: 15,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: UserFormField(
                  height: 26,
                  controller: cubit.corona_dose1_location,
                  hint: "",
                  validator: (value) {},
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
