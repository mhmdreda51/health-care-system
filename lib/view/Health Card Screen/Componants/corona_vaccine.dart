import 'package:flutter/material.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/second_dose_column.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/vaccination_name_row.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../../widgets/AccountItemAppBar.dart';
import '../Controller/health_card_cubit.dart';
import '../Widgets/dialog_header.dart';
import 'SerialNumberColumn.dart';
import 'first_dose_column.dart';
import 'num_dose_row.dart';

class CoronaVaccine extends StatelessWidget {
  const CoronaVaccine({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountItemAppBar(title: "Corona Vaccine"),
      backgroundColor: Colors.grey[200],
      body: Container(
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Form(
            key: cubit.coronaFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                DialogHeader(
                  icon: Icons.coronavirus_outlined,
                  title: "Corona vaccine",
                ),
                SizedBox(height: 10),
                VaccinationNameRow(cubit: cubit),
                SizedBox(height: 10),
                SerialNumberColumn(cubit: cubit),
                SizedBox(height: 10),
                NumDoseRow(),
                Divider(height: .2, color: Colors.black54),
                FirstDoseColumn(cubit: cubit),
                Divider(height: .2, color: Colors.black54),
                SecondDoseColumn(cubit: cubit),
                Divider(height: .2, color: Colors.black54),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: MainButton(
                    height: 40,
                    width: 150,
                    text: "Done",
                    borderRadius: 12,
                    onPressed: () {
                      // if (cubit.coronaFormKey.currentState!.validate()) {
                      //   CacheHelper.cacheMedicalInfo(
                      //     dose1_Date: cubit.corona_dose1_date.text,
                      //     dose1_location: cubit.corona_dose1_location.text,
                      //     dose2_Date: cubit.corona_dose2_date.text,
                      //     dose2_location: cubit.corona_dose2_location.text,
                      //     nameOfVaccination: cubit.corona_name.text,
                      //     serialNumber: cubit.coronaSerialNumber.text,
                      //   ).whenComplete(
                      //       () => MagicRouter.navigateTo(HealthCardScreen()));
                      // }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
