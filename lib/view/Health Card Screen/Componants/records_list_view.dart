import 'package:flutter/material.dart';
import 'package:health_care_system/widgets/app_text.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../../constants/app_colors.dart';
import '../../../core/router/router.dart';
import '../Widgets/record_card.dart';
import 'MedicalRecords.dart';

class RecordsListView extends StatelessWidget {
  const RecordsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
              itemCount: 6,
              itemBuilder: (context, index) {
                return RecordCard();
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
