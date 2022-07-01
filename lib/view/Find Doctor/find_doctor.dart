import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/Category cubit/category_cubit.dart';
import '../../widgets/CategoryListShimmer.dart';
import '../../widgets/drop_down_Button.dart';
import '../../widgets/services_header.dart';
import 'companants/doctor_list_view.dart';
import 'companants/doctor_tap_bar.dart';

class FindDoctor extends StatelessWidget {
  const FindDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryCubit(),
      child: BlocConsumer<CategoryCubit, CategoryState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = CategoryCubit.get(context);
          return SafeArea(
            child: Scaffold(
                backgroundColor: Colors.grey[200],
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      const ServicesHeader(
                        text: 'Find your doctor',
                        height: 135,
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
                      DoctorTapBar(cubit: cubit),
                      cubit.newDoctorList.isEmpty
                          ? CategoryListShimmer(
                              cubit: cubit,
                              list: cubit.newDoctorList,
                            )
                          : DoctorListView(
                              cubit: cubit,
                              list: cubit.newDoctorList,
                            ),
                    ],
                  ),
                )),
          );
        },
      ),
    );
  }
}
