import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../constants/app_colors.dart';
import 'Componants/blood_type.dart';
import 'Componants/corona_vaccine.dart';
import 'Componants/health_card_header.dart';
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
                    Container(
                      width: double.infinity,
                      height: 100,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.white,
                        border: Border(
                          right: BorderSide(
                              width: .7, color: AppColors.introTextColor),
                          left: BorderSide(
                              width: .7, color: AppColors.introTextColor),
                          top: BorderSide(
                              width: .7, color: AppColors.introTextColor),
                          bottom: BorderSide(
                              width: .7, color: AppColors.introTextColor),
                        ),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.qr_code,
                            color: AppColors.introTextColor,
                            size: 60,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                AppText(
                                  text: "Adjective to corona virus",
                                  size: 15,
                                  color: AppColors.introTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                                SizedBox(height: 15),
                                AppText(
                                  text: "Wednesday 22 June 12:15 pm",
                                  size: 10,
                                  color: AppColors.introTextColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 10),
                            child: IconButton(
                              icon: Icon(
                                Icons.refresh,
                                color: AppColors.introTextColor,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
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
                      onTap: () =>
                          cubit.showDialog(BloodType(cubit: cubit), context),
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
