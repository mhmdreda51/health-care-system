import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../Personal info/Componants/user_form_field.dart';
import '../Controller/health_card_cubit.dart';
import '../Widgets/dialog_header.dart';
import '../Widgets/health_card_dropDown.dart';

class CoronaVaccine extends StatelessWidget {
  const CoronaVaccine({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DialogHeader(
          icon: Icons.coronavirus_outlined,
          title: "Corona vaccine",
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
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
            SizedBox(height: 15),
            Row(
              children: [
                AppText(
                  text: "Num of dose",
                  size: 15,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  width: 75,
                ),
                Expanded(
                  child: HealthCardDropDown(
                    value: cubit.dropdownInputValue,
                    itemsList: cubit.numOfDose,
                    onChanged: (value) {
                      cubit.dropdownInputOnChanged(value: value);
                      // print(cubit.dropdownInputValue);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
