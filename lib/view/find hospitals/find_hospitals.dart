import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/find%20hospitals/componants/hospitalListView.dart';
import 'package:health_care_system/view/find%20hospitals/controller/find_hospital_cubit.dart';

import '../../widgets/drop_down_Button.dart';
import '../../widgets/services_header.dart';
import 'componants/hospitalCategoryTapBar.dart';
import 'componants/hospitalListShimmer.dart';

class FindHospitals extends StatelessWidget {
  const FindHospitals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FindHospitalCubit(),
      child: BlocConsumer<FindHospitalCubit, FindHospitalState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = FindHospitalCubit.get(context);

          return SafeArea(
            child: Scaffold(
                backgroundColor: Colors.grey[200],
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      const ServicesHeader(
                        text: 'Find your hospital',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 25,
                          left: 20,
                          right: 20,
                        ),
                        child: AppDropDownButton(
                          value: cubit.dropdownInputValue,
                          itemsList: cubit.specialitie,
                          onChanged: (value) {
                            cubit.dropdownInputOnChanged(value: value);
                            // print(cubit.dropdownInputValue);
                          },
                        ),
                      ),
                      HospitalCategoryTapBar(cubit: cubit),
                      cubit.newList.isEmpty
                          ? HospitalListShimmer(
                              cubit: cubit,
                            )
                          : HospitalListView(cubit: cubit),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
