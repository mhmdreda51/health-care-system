import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/find%20pharmacys/Componants/ph_itemCard.dart';

import '../../Find Doctor/model/spacification.dart';
import '../Controller/find_pharmacys_cubit.dart';

class PhCategoryTapBar extends StatelessWidget {
  const PhCategoryTapBar({Key? key, required this.cubit}) : super(key: key);
  final FindPharmacysCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
      child: SizedBox(
        height: 30.h,
        width: double.infinity,
        child: ListView.separated(
          itemCount: specificationList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final item = specificationList[index];
            return PhItemCard(
              text: item.name,
              selected: item.id,
              onTap: () {
                cubit.itemSelection(item.id);
                cubit.findByCategory(item.name);
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
