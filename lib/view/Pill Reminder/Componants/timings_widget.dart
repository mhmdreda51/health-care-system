import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/widgets/app_text.dart';

class TimingsWidget extends StatelessWidget {
  const TimingsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      padding: EdgeInsets.only(top: 15, left: 30, right: 20, bottom: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () => MagicRouter.pop(),
              icon: Icon(
                Icons.close,
                color: AppColors.introTextColor,
              ),
            ),
          ),
          SizedBox(height: 10),
          AppText(
            text: "How many times a day",
            size: 16,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_circle_right_outlined,
                  color: AppColors.introTextColor,
                  size: 30,
                ),
              ),
              SizedBox(width: 5),
              AppText(
                text: "0",
                size: 18,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(width: 5),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_circle_left_outlined,
                  color: AppColors.introTextColor,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
