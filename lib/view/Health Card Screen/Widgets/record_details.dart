import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/AccountItemAppBar.dart';
import 'package:health_care_system/widgets/app_text.dart';

class RecordDetails extends StatelessWidget {
  const RecordDetails({
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

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AccountItemAppBar(title: "Record Details"),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 90,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                border: Border.all(width: .7, color: AppColors.introTextColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: "TITLE :   $title ",
                    size: 18,
                    color: AppColors.introTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 10),
                  AppText(
                    text: "DATE :  $date | TIME:   $time",
                    size: 12,
                    color: AppColors.introTextColor,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 500,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(right: 20, left: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: Colors.white,
                border: Border.all(width: .7, color: AppColors.introTextColor),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: "Record Image",
                    size: 18,
                    color: AppColors.introTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    height: 400,
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(
                      right: 10,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white,
                      border: Border.all(
                          width: .7, color: AppColors.introTextColor),
                    ),
                    child: Image.network(
                      imageBase + image,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
