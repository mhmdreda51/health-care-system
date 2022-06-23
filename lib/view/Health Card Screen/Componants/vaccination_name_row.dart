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
      child: Row(
        children: [
          Expanded(
            child: AppText(
              text: "Name of Vaccination",
              size: 15,
              color: AppColors.introTextColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: UserFormField(
              height: 26,
              controller: cubit.corona_name,
              hint: "",
              validator: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
