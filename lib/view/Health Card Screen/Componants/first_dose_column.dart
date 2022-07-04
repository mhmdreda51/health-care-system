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
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      width: double.infinity,
                      color: Colors.white,
                      padding: EdgeInsets.only(left: 10),
                      alignment: Alignment.centerLeft,
                      child: AppText(
                        color: Colors.black54,
                        size: 14,
                        fontWeight: FontWeight.bold,
                        text: cubit.isDose1Picked == false
                            ? ""
                            : cubit
                                .formatDose2Date(cubit.dose1_Date)
                                .toString(),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  IconButton(
                    onPressed: () => cubit.selectDose1Date(context),
                    icon:
                        Icon(Icons.date_range, color: AppColors.buttonGradient),
                  ),
                ],
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
                controller: cubit.dose1Location,
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
