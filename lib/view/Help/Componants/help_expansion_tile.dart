import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';

class HelpExpansionTile extends StatelessWidget {
  const HelpExpansionTile({
    Key? key,
    required this.title,
    required this.disc,
  }) : super(key: key);
  final String title;
  final String disc;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ExpansionTile(
        tilePadding: EdgeInsets.all(0),
        childrenPadding: EdgeInsets.all(0),
        iconColor: AppColors.introTextColor,
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: AppColors.introTextColor,
          ),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              disc,
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  color: AppColors.deepBlue),
            ),
          )
        ],
      ),
    );
  }
}
