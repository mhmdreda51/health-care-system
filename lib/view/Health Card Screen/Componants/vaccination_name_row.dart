import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../Personal info/Componants/user_form_field.dart';
import '../Controller/health_card_cubit.dart';

class VaccinationNameRow extends StatelessWidget {
  const VaccinationNameRow({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "Name of Vaccination",
            size: 15,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 10),
          UserFormField(
            height: 35,
            controller: cubit.coronaName,
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
      ),
    );
  }
}
