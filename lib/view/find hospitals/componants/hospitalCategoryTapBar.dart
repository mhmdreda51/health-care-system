import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/find%20hospitals/Model/spacification.dart';
import 'package:health_care_system/view/find%20hospitals/componants/spacificationItemCard.dart';

import '../../../core/Category cubit/category_cubit.dart';

class HospitalCategoryTapBar extends StatelessWidget {
  const HospitalCategoryTapBar({Key? key, required this.cubit})
      : super(key: key);
  final CategoryCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
      child: SizedBox(
        height: 30.h,
        width: double.infinity,
        child: ListView.separated(
          itemCount: specificationHospitalList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = specificationHospitalList[index];
            return SpacificatonItemCard(
              text: item.name,
              selected: item.id,
              onTap: () {
                cubit.itemSelection(item.id);
                cubit.findHospitalByCategory(item.name);
              },
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10.w,
            );
          },
        ),
      ),
    );
  }
}
