import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants/app_colors.dart';
import 'Componants/blood_type.dart';
import 'Componants/corona_vaccine.dart';
import 'Componants/health_card_header.dart';
import 'Componants/type_of_record.dart';
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
            appBar: appBar(),
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    HealthCardHeader(),
                    SizedBox(height: 20),
                    InfoCard(
                      text: "Add your information about Corona vaccine",
                      icon: Icons.coronavirus_outlined,
                      onTap: () => cubit.showDialog(
                          CoronaVaccine(cubit: cubit), context),
                    ),
                    SizedBox(height: 20),
                    InfoCard(
                      text: "Add your information about blood type",
                      icon: Icons.bloodtype_outlined,
                      onTap: () => cubit.showDialog(BloodType(), context),
                    ),
                    SizedBox(height: 20),
                    InfoCard(
                      text: "Add your medical records",
                      icon: Icons.medication_outlined,
                      onTap: () => cubit.showDialog(TypeOfRecord(), context),
                    ),
                    SizedBox(height: 20),
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

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: SizedBox(),
    title: Text(
      'Health card',
      style: TextStyle(
        color: AppColors.introTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
