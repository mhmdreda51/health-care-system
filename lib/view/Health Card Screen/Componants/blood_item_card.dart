import 'package:flutter/material.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Controller/health_card_cubit.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class BloodItemCard extends StatelessWidget {
  const BloodItemCard({
    Key? key,
    required this.name,
    required this.selected,
    required this.onTap,
    required this.cubit,
  }) : super(key: key);
  final String name;
  final int selected;
  final GestureTapCallback onTap;
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: cubit.isSelected == selected
              ? AppColors.blueWhite
              : AppColors.ubSelectedItem,
          borderRadius: BorderRadius.circular(13),
        ),
        padding: EdgeInsets.only(top: 15, left: 58),
        child: AppText(
          text: name,
          color: Colors.white,
          size: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
