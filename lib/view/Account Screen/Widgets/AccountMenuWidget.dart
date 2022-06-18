import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';

class AccountMenuWidget extends StatelessWidget {
  const AccountMenuWidget({
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Icon(Icons.settings, color: AppColors.blueWhite),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 20,
          color: AppColors.blueWhite,
        ),
        title: AppText(
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
          size: 15,
          text: text,
        ),
        contentPadding: EdgeInsets.all(7),
        onTap: onTap,
      ),
    );
  }
}
