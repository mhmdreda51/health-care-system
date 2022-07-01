import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Category cubit/category_cubit.dart';
import '../../Find Doctor/model/spacification.dart';
import 'laps_item_card.dart';

class LapsCategoryTapBar extends StatelessWidget {
  const LapsCategoryTapBar({Key? key, required this.cubit}) : super(key: key);
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
            return LapsItemCard(
              text: item.name,
              selected: item.id,
              onTap: () {
                cubit.itemSelection(item.id);
                cubit.findLapsByCategory(item.name);
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
