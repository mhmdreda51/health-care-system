import 'package:flutter/material.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Controller/health_card_cubit.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../constants/app_colors.dart';
import '../../../core/cacheHelper/cache_helper.dart';
import '../../../widgets/app_text.dart';

class HealthCardHeader extends StatelessWidget {
  const HealthCardHeader({Key? key, required this.cubit}) : super(key: key);
  final HealthCardCubit cubit;

  @override
  Widget build(BuildContext context) {
    //edit it to => image
    var userImage = CacheHelper.getUserInfo!.data.user.userName;
    var assertImage = "assets/images/topdoctor.png";
    var userEmail = CacheHelper.getUserInfo!.data.user.email;
    var userName = CacheHelper.getUserInfo!.data.user.userName;
    // var serialNumber = cubit.medicalInfoModel!.data!.serialNumber;
    return Container(
      width: double.infinity,
      height: 180,
      alignment: Alignment.centerRight,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.white,
        border: Border.all(width: .7, color: AppColors.introTextColor),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(assertImage),
                  ),
                ),
                SizedBox(height: 10),
                AppText(
                  color: AppColors.introTextColor,
                  text: userName ?? "",
                  fontWeight: FontWeight.bold,
                  size: 16,
                ),
                SizedBox(height: 5),
                AppText(
                  color: Colors.grey,
                  text: userEmail ?? "",
                  fontWeight: FontWeight.normal,
                  size: 12,
                ),
              ],
            ),
          ),
          QrImage(
            data:
                "This citizen is vaccinated against the Corona virus with a serial number ${""}",
            size: 150,
          ),
        ],
      ),
    );
  }
}
