import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Find%20Doctor/controller/find_doctor_cubit.dart';
import 'package:health_care_system/view/Mab%20Screen/controller/map_cubit.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../widgets/drop_down_Button.dart';
import '../../widgets/services_header.dart';
import 'conponants/category_tap_bar.dart';
import 'conponants/location_button.dart';

class FindDoctor extends StatelessWidget {
  const FindDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FindDoctorCubit, FindDoctorState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = FindDoctorCubit.get(context);
        final locationCubit = MapCubit.get(context);
        return SafeArea(
          child: Scaffold(
              backgroundColor: Colors.grey[200],
              body: Column(
                children: [
                  const ServicesHeader(
                    text: 'Find your doctor',
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 25, left: 20, right: 20, bottom: 25),
                    child: AppDropDownButton(
                      value: cubit.dropdownInputValue,
                      itemsList: cubit.specialitie,
                      onChanged: (value) {
                        cubit.dropdownInputOnChanged(value: value);
                      },
                    ),
                  ),
                  SelectLocationButton(locationCubit: locationCubit),
                  Padding(
                      padding:
                          const EdgeInsets.only(top: 25, left: 20, right: 20),
                      child: MainButton(
                        onPressed: () {},
                        height: 43,
                        width: double.infinity,
                        text: "Search",
                        borderRadius: 10,
                      )),
                  CategoryTapBar(cubit: cubit),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 10),
                    child: SizedBox(
                      height: 290,
                      width: double.infinity,
                      child: ListView.separated(
                        itemCount: cubit.products.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25)),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 10.h,
                          );
                        },
                      ),
                    ),
                  )
                ],
              )),
        );
      },
    );
  }
}
