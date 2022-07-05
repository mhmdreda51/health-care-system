import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/second_dose_column.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/vaccination_name_row.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../../core/router/router.dart';
import '../../../widgets/AccountItemAppBar.dart';
import '../../Navigation Screen/navigation_screen.dart';
import '../Controller/health_card_cubit.dart';
import '../Widgets/dialog_header.dart';
import 'SerialNumberColumn.dart';
import 'first_dose_column.dart';
import 'num_dose_row.dart';

class CoronaVaccine extends StatelessWidget {
  const CoronaVaccine({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HealthCardCubit(),
      child: BlocConsumer<HealthCardCubit, HealthCardState>(
        listener: (context, state) {
          final cubit = HealthCardCubit.get(context);

          if (state is SendCoronaVaccineSuccess) {
            Fluttertoast.showToast(
              msg: "Complete Medical information successfully",
            );

            MagicRouter.navigateTo(
              NavigationScreen(
                currentIndex: 2,
              ),
            );
          } else if (state is SendCoronaVaccineError) {
            Fluttertoast.showToast(
              msg: state.error,
            );
          }
        },
        builder: (context, state) {
          final cubit = HealthCardCubit.get(context);
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
                        child: state is SendCoronaVaccineLoading
                            ? const CupertinoActivityIndicator(
                                radius: 16.0,
                                animating: true,
                              )
                            : MainButton(
                                height: 40,
                                width: 150,
                                text: "Done",
                                borderRadius: 12,
                                onPressed: () {
                                  if (cubit.coronaFormKey.currentState!
                                      .validate()) {
                                    cubit
                                        .sendCoronaVaccine(
                                          date_first:
                                              cubit.dose1_Date.toString(),
                                          date_sec: cubit.dose2_Date.toString(),
                                          location_first:
                                              cubit.dose1Location.text,
                                          location_sec:
                                              cubit.dose2Location.text,
                                          name: cubit.coronaName.text,
                                          serial_number:
                                              cubit.SerialNumber.text,
                                        )
                                        .whenComplete(() => {
                                              cubit.getMedicalInfo(),
                                            });
                                  }
                                },
                              ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
