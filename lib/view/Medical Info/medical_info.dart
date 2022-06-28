import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/blood_type.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/corona_vaccine.dart';

import '../../core/router/router.dart';
import '../../widgets/AccountItemAppBar.dart';
import '../Account Screen/Widgets/AccountMenuWidget.dart';
import '../Health Card Screen/Controller/health_card_cubit.dart';

class MedicalInfo extends StatelessWidget {
  const MedicalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HealthCardCubit(),
      child: BlocConsumer<HealthCardCubit, HealthCardState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = HealthCardCubit.get(context);

          return Scaffold(
            appBar: AccountItemAppBar(title: "Medical Information"),
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AccountMenuWidget(
                    color: Colors.white,
                    text: "COVID-19 Vaccination",
                    icon: Icons.coronavirus_outlined,
                    onTap: () =>
                        MagicRouter.navigateTo(CoronaVaccine(cubit: cubit)),
                  ),
                  SizedBox(height: 10),
                  AccountMenuWidget(
                    color: Colors.white,
                    text: "Blood Type",
                    icon: Icons.bloodtype_outlined,
                    onTap: () =>
                        MagicRouter.navigateTo(BloodType(cubit: cubit)),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
