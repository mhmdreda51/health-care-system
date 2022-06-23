import 'package:flutter/material.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/second_dose_column.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/vaccination_name_row.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../Controller/health_card_cubit.dart';
import '../Widgets/dialog_header.dart';
import 'first_dose_column.dart';
import 'num_dose_row.dart';

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            VaccinationNameRow(cubit: cubit),
            NumDoseRow(),
            Divider(height: .2, color: Colors.black54),
            FirstDoseColumn(cubit: cubit),
            Divider(height: .2, color: Colors.black54),
            SecondDoseColumn(cubit: cubit),
            Divider(height: .2, color: Colors.black54),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: MainButton(
                height: 33,
                width: 80,
                text: "Done",
                borderRadius: 12,
                onPressed: () {},
              ),
            )
          ],
        ),
      ],
    );
  }
}
