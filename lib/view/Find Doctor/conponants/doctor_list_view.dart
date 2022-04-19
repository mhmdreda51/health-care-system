import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Find%20Doctor/controller/find_doctor_cubit.dart';

class DoctorListView extends StatelessWidget {
  DoctorListView({Key? key, required this.cubit}) : super(key: key);
  FindDoctorCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
      child: SizedBox(
        height: 290,
        width: double.infinity,
        child: ListView.separated(
          itemCount: cubit.newList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(25)),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 10.h,
            );
          },
        ),
      ),
    );
  }
}
