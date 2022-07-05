import 'package:flutter/material.dart';
import 'package:health_care_system/core/cacheHelper/cache_helper.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Controller/health_card_cubit.dart';
import 'package:health_care_system/widgets/app_text.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../../constants/app_colors.dart';
import '../../../core/router/router.dart';
import '../Widgets/record_card.dart';
import '../Widgets/record_details.dart';
import 'MedicalRecords.dart';

class RecordsListView extends StatelessWidget {
  const RecordsListView({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    final base = "http://mohamedelbadry.me";
    return Container(
      width: double.infinity,
      height: 500,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        border: Border.all(width: .7, color: AppColors.introTextColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppText(
            text: "Medical Records",
            size: 14,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.separated(
              itemCount: CacheHelper.getMedicalRec!.data.length,
              itemBuilder: (context, index) {
                var item = CacheHelper.getMedicalRec!.data[index];
                return GestureDetector(
                  onTap: () => MagicRouter.navigateTo(RecordDetails(
                    title: item.title,
                    image: item.attachmentRelation[0].path,
                    date: item.cardDate,
                    time: item.cardTime,
                  )),
                  child: RecordCard(
                    title: item.title,
                    image: item.attachmentRelation[0].path,
                    date: item.cardDate,
                    time: item.cardTime,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 10);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
            child: MainButton(
              height: 35,
              width: double.infinity,
              text: "Add your medical records",
              borderRadius: 13,
              onPressed: () => MagicRouter.navigateTo(MedicalRecords()),
            ),
          ),
        ],
      ),
    );
  }
}
