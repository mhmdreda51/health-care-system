import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../../widgets/AccountItemAppBar.dart';
import '../Controller/health_card_cubit.dart';
import 'blood_grid_view.dart';

class BloodType extends StatelessWidget {
  const BloodType({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountItemAppBar(title: "Blood type"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20),
          AppText(
            text: "Please pick your blood type",
            size: 17,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          BloodGridView(cubit: cubit),
          MainButton(
            onPressed: () {},
            height: 40,
            width: 100,
            text: "Done",
            borderRadius: 12,
          )
        ],
      ),
    );
  }
}
