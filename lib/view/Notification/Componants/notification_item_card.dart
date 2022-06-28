import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';

class NotificationItemCard extends StatelessWidget {
  const NotificationItemCard(
      {Key? key, required this.title, required this.disc})
      : super(key: key);
  final String title;
  final String disc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            FontAwesomeIcons.bell,
            color: AppColors.blueWhite,
          ),
          SizedBox(width: 10),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: title,
                  size: 12,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(height: 10),
                AppText(
                  text: disc,
                  size: 9,
                  color: AppColors.introTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
