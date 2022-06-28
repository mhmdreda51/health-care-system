import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/router/router.dart';
import '../../widgets/AccountItemAppBar.dart';
import '../Medical Info/medical_info.dart';
import 'Componants/health_card_header.dart';
import 'Componants/vaccination_part.dart';
import 'Controller/health_card_cubit.dart';
import 'Widgets/info_card.dart';

class HealthCardScreen extends StatelessWidget {
  const HealthCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HealthCardCubit(),
      child: BlocConsumer<HealthCardCubit, HealthCardState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = HealthCardCubit.get(context);

          return Scaffold(
            appBar: AccountItemAppBar(title: "Health card"),
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HealthCardHeader(),
                    SizedBox(height: 20),
                    VaccinationPart(),
                    SizedBox(height: 20),
                    InfoCard(
                      text: "Add your information about Corona vaccine",
                      icon: Icons.coronavirus_outlined,
                      onTap: () => MagicRouter.navigateTo(MedicalInfo()),
                    ),
                    SizedBox(height: 20),
                    InfoCard(
                      text: "Add your information about blood type",
                      icon: Icons.bloodtype_outlined,
                      onTap: () => MagicRouter.navigateTo(MedicalInfo()),
                    ),
                    SizedBox(height: 20),
                    // Text(CacheHelper.getDose2_location.toString()),
                    // Text(CacheHelper.getBloodType.toString()),
                    // Text(CacheHelper.getDose1_Date.toString()),
                    // Text(CacheHelper.getNameOfVaccination.toString()),
                    // Text(CacheHelper.getNumOfDose.toString()),
                    // Text(CacheHelper.getSerialNumber.toString()),
                    // Text(CacheHelper.getDose1_location.toString()),
                    // Text(CacheHelper.getDose2_Date.toString()),
                    // Text(CacheHelper.getDose1_Date.toString()),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
