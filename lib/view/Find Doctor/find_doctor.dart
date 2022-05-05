import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Find%20Doctor/controller/find_doctor_cubit.dart';

import '../../widgets/drop_down_Button.dart';
import '../../widgets/services_header.dart';
import 'companants/category_tap_bar.dart';
import 'companants/doctorListShimmer.dart';
import 'companants/doctor_list_view.dart';

class FindDoctor extends StatelessWidget {
  const FindDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FindDoctorCubit(),
      child: BlocConsumer<FindDoctorCubit, FindDoctorState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = FindDoctorCubit.get(context);
          return SafeArea(
            child: Scaffold(
                backgroundColor: Colors.grey[200],
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      const ServicesHeader(
                        text: 'Find your doctor',
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 25, left: 20, right: 20, bottom: 0),
                        child: AppDropDownButton(
                          value: cubit.dropdownInputValue,
                          itemsList: cubit.specialitie,
                          onChanged: (value) {
                            cubit.dropdownInputOnChanged(value: value);
                            // print(cubit.dropdownInputValue);
                          },
                        ),
                      ),
                      CategoryTapBar(cubit: cubit),
                      cubit.newList.isEmpty
                          ? DoctorListShimmer(
                              cubit: cubit,
                            )
                          : DoctorListView(cubit: cubit),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
