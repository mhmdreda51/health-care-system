import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/core/cacheHelper/cache_helper.dart';

import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import 'Componants/MedicalRecords.dart';
import 'Componants/blood_part_with_info.dart';
import 'Componants/blood_type.dart';
import 'Componants/corona_part_with_info.dart';
import 'Componants/corona_vaccine.dart';
import 'Componants/health_card_header.dart';
import 'Componants/records_list_view.dart';
import 'Controller/health_card_cubit.dart';
import 'Widgets/info_card.dart';

class HealthCardScreen extends StatelessWidget {
  const HealthCardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HealthCardCubit()
        ..getMedicalInfo()
        ..getMedicalRecords(),
      child: BlocConsumer<HealthCardCubit, HealthCardState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = HealthCardCubit.get(context);

          return Scaffold(
            appBar: appBar(),
            backgroundColor: Colors.grey[200],
            body: state is GetMedicalInfoLoading ||
                    state is GetMedicalRecordsLoading
                ? Center(
                    child: const CupertinoActivityIndicator(
                      radius: 16.0,
                      animating: true,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HealthCardHeader(cubit: cubit),
                          SizedBox(height: 20),
                          CacheHelper.getMedicalInfoModel == null
                              ? InfoCard(
                                  text:
                                      "Add your information about Corona vaccine",
                                  icon: Icons.coronavirus_outlined,
                                  onTap: () =>
                                      MagicRouter.navigateTo(CoronaVaccine()),
                                )
                              : CoronaPartWithInfo(cubit: cubit),
                          SizedBox(height: 20),
                          CacheHelper.getBloodType == null
                              ? InfoCard(
                                  text: "Add your information about blood type",
                                  icon: Icons.bloodtype_outlined,
                                  onTap: () =>
                                      MagicRouter.navigateTo(BloodType()),
                                )
                              : BloodPartWithInfo(cubit: cubit),
                          SizedBox(height: 20),
                          CacheHelper.getMedicalRec!.data.length == 0
                              ? InfoCard(
                                  text: "Add your medical records",
                                  icon: Icons.bloodtype_outlined,
                                  onTap: () =>
                                      MagicRouter.navigateTo(MedicalRecords()),
                                )
                              : RecordsListView(cubit: cubit),
                          SizedBox(height: 80),
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
      'Health Card',
      style: TextStyle(
        color: AppColors.introTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
