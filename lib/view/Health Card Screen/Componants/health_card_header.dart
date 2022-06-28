import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../core/cacheHelper/cache_helper.dart';
import '../../../widgets/app_text.dart';

class HealthCardHeader extends StatelessWidget {
  const HealthCardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userImage = CacheHelper.getUserInfo!.data!.user.userName;
    var assertImage = "assets/images/topdoctor.png";
    var userName = CacheHelper.getUserInfo!.data!.user.userName;

    //edit it to => image
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: 60,
          width: 60,
          child: CircleAvatar(
            backgroundImage: AssetImage(assertImage),
          ),
        ),
        SizedBox(width: 15),
        AppText(
          color: AppColors.introTextColor,
          text: userName,
          fontWeight: FontWeight.bold,
          size: 16,
        ),
        SizedBox(width: 130),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Icon(
                Icons.qr_code,
                color: AppColors.introTextColor,
                size: 30,
              ),
              AppText(
                text: "QR CODE",
                size: 10,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        )
      ],
    );
  }
}
