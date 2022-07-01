import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/Category cubit/category_cubit.dart';
import '../../../../../widgets/item_card.dart';
import '../model/spacification.dart';

class DoctorTapBar extends StatelessWidget {
  const DoctorTapBar({Key? key, required this.cubit}) : super(key: key);
  final CategoryCubit cubit;

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
            return ItemCard(
              text: item.name,
              selected: item.id,
              onTap: () {
                cubit.itemSelection(item.id);
                cubit.findDoctorByCategory(item.name);
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
