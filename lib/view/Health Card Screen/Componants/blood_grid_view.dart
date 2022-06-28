import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Controller/health_card_cubit.dart';
import '../Model/blood_model.dart';
import 'blood_item_card.dart';

class BloodGridView extends StatelessWidget {
  const BloodGridView({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
      child: SizedBox(
        height: 150.h,
        width: double.infinity,
        child: GridView.builder(
          itemCount: BloodList.length,
          scrollDirection: Axis.vertical,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 6.0,
            mainAxisSpacing: 6.0,
            childAspectRatio: (1 / .4),
          ),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final item = BloodList[index];
            return BloodItemCard(
              onTap: () => {
                cubit.itemSelection(item.id),
                // CacheHelper.cacheBloodType(bloodType: item.name),
              },
              name: item.name,
              selected: item.id,
              cubit: cubit,
            );
          },
        ),
      ),
    );
  }
}
