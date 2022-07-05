import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Controller/health_card_cubit.dart';

import '../../../constants/app_colors.dart';

class RecordItemCard extends StatelessWidget {
  const RecordItemCard(
      {Key? key,
      required this.text,
      required this.selected,
      required this.onTap})
      : super(key: key);
  final String text;
  final int selected;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HealthCardCubit, HealthCardState>(
      builder: (context, state) {
        final cubit = HealthCardCubit.get(context);
        return GestureDetector(
          onTap: onTap,
          child: Container(
            height: 60,
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: cubit.isRecordSelected == selected
                  ? AppColors.blueWhite
                  : Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
                child: Column(
              children: [
                Icon(
                  Icons.receipt_long_sharp,
                  color: AppColors.introTextColor,
                ),
                Text(
                  text,
                  style: TextStyle(
                    color: cubit.isRecordSelected == selected
                        ? Colors.white
                        : AppColors.introTextColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            )),
          ),
        );
      },
    );
  }
}
