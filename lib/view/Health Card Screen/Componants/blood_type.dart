import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../Controller/health_card_cubit.dart';
import '../Model/blood_model.dart';
import '../Widgets/dialog_header.dart';
import 'blood_item_card.dart';

class BloodType extends StatelessWidget {
  const BloodType({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DialogHeader(
          icon: Icons.bloodtype_outlined,
          title: "Blood type",
        ),
        SizedBox(height: 20),
        AppText(
          text: "Please pick your blood type",
          size: 17,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
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
                  onTap: () => cubit.itemSelection(item.id),
                  name: item.name,
                  selected: item.id,
                  cubit: cubit,
                );
              },
            ),
          ),
        ),
        MainButton(
          onPressed: () {},
          height: 40,
          width: 100,
          text: "Done",
          borderRadius: 12,
        )
      ],
    );
  }
}
