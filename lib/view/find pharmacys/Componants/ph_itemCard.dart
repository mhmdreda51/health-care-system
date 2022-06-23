import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/find%20pharmacys/Controller/find_pharmacys_cubit.dart';

import '../../../constants/app_colors.dart';

class PhItemCard extends StatelessWidget {
  const PhItemCard({
    Key? key,
    required this.text,
    required this.selected,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final int selected;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FindPharmacysCubit, FindPharmacysState>(
        builder: (context, state) {
      FindPharmacysCubit cubit = FindPharmacysCubit.get(context);
      return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 30,
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              color: cubit.isSelected == selected
                  ? AppColors.blueWhite
                  : Colors.white,
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            text,
            style: TextStyle(
              color: cubit.isSelected == selected
                  ? Colors.white
                  : AppColors.introTextColor,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          )),
        ),
      );
    });
  }
}
