import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class RecordCard extends StatelessWidget {
  const RecordCard({
    Key? key,
    required this.image,
    required this.title,
    required this.date,
    required this.time,
    this.type = "",
  }) : super(key: key);
  final String image;
  final String title;
  final String date;
  final String time;
  final String type;

  @override
  Widget build(BuildContext context) {
    final imageBase = "http://mohamedelbadry.me/";
    return Container(
      width: double.infinity,
      height: 105,
      padding: EdgeInsets.only(left: 20, top: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        border: Border.all(width: .7, color: AppColors.introTextColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.white,
              border: Border.all(width: .7, color: AppColors.introTextColor),
            ),
            child: Image(
              image: NetworkImage(imageBase + image),
              height: 70,
              width: 70,
            ),
          ),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: "$title ${type}",
                  size: 14,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),
                AppText(
                  text: "$date | $time",
                  size: 12,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.normal,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
