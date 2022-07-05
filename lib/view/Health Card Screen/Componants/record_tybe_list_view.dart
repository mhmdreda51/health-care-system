import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Controller/health_card_cubit.dart';

import '../Widgets/record_item_card.dart';

class RecordTypeListView extends StatelessWidget {
  const RecordTypeListView({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70.h,
      width: double.infinity,
      child: ListView.separated(
        itemCount: cubit.recordType!.data.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = cubit.recordType!.data[index];
          return RecordItemCard(
            text: item.name,
            selected: item.id,
            onTap: () {
              cubit.RecordItemSelection(item.id);
            },
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10.w,
          );
        },
      ),
    );
  }
}
