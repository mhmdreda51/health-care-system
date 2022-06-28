import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../Personal info/Componants/user_form_field.dart';
import '../Controller/health_card_cubit.dart';

class SecondDoseColumn extends StatelessWidget {
  const SecondDoseColumn({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          AppText(
            text: "*Second dose*",
            size: 15,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Date",
                size: 15,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              UserFormField(
                height: 35,
                controller: cubit.corona_dose2_date,
                hint: "",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter the text";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(height: 10),
              AppText(
                text: "Location",
                size: 15,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              UserFormField(
                height: 35,
                controller: cubit.corona_dose2_location,
                hint: "",
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter the text";
                  } else {
                    return null;
                  }
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
