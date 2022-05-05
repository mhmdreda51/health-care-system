import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/find%20hospitals/controller/find_hospital_cubit.dart';

import 'HospitalItemCard.dart';

class HospitalListView extends StatelessWidget {
  HospitalListView({Key? key, required this.cubit}) : super(key: key);
  FindHospitalCubit cubit;

  @override
  Widget build(BuildContext context) {
    final listViewHeight = MediaQuery.of(context).size.height / 1.7;
    final listViewWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r, bottom: 10.r),
      child: SizedBox(
        height: listViewHeight,
        width: listViewWidth,
        child: ListView.separated(
          itemCount: cubit.newList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final item = cubit.newList[index];
            return GestureDetector(
              onTap: () {},
              child: HospitalItemCard(
                image: item.image,
                location: item.location,
                category: item.category,
                name: item.name,
                rateStars: item.rateStars,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
        ),
      ),
    );
  }
}
