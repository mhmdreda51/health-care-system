import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';

import '../../constants/Strins.dart';
import '../../widgets/AccountItemAppBar.dart';

class PrivacyAndSecurity extends StatelessWidget {
  const PrivacyAndSecurity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountItemAppBar(title: "Privacy & Security"),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding:
            const EdgeInsets.only(top: 25, left: 35, right: 35, bottom: 25),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(15),
                child: Text(PrivacySecurity1,
                    style: TextStyle(
                        color: AppColors.introTextColor, fontSize: 15)),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(15),
                child: Text(PrivacySecurity2,
                    style: TextStyle(
                        color: AppColors.introTextColor, fontSize: 15)),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.all(15),
                child: Text(PrivacySecurity3,
                    style: TextStyle(
                        color: AppColors.introTextColor, fontSize: 15)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
