import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class VaccinationPart extends StatelessWidget {
  const VaccinationPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 100,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          border: Border(
            right: BorderSide(width: .7, color: AppColors.introTextColor),
            left: BorderSide(width: .7, color: AppColors.introTextColor),
            top: BorderSide(width: .7, color: AppColors.introTextColor),
            bottom: BorderSide(width: .7, color: AppColors.introTextColor),
          ),
        ),
        child: Row(
          children: [
            Icon(
              Icons.qr_code,
              color: AppColors.introTextColor,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppText(
                    text: "Adjective to corona virus",
                    size: 15,
                    color: AppColors.introTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 15),
                  AppText(
                    text: "Wednesday 22 June 12:15 pm",
                    size: 10,
                    color: AppColors.introTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: IconButton(
                icon: Icon(
                  Icons.refresh,
                  color: AppColors.introTextColor,
                  size: 25,
                ),
                onPressed: () {},
              ),
            )
          ],
        ));
  }
}
