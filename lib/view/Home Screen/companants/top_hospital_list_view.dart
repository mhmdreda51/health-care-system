import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Hospital%20Details/hospital_detials.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../../core/router/router.dart';
import '../../../widgets/stars_bar.dart';
import '../../find hospitals/Model/hospital_model.dart';

class TopHospitalListView extends StatelessWidget {
  TopHospitalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: hospitals.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = hospitals[index];
          return GestureDetector(
            onTap: () => MagicRouter.navigateTo(HospitalDetails(item: item)),
            child: Container(
              padding: const EdgeInsets.only(top: 25),
              height: 180,
              width: 125,
              child: Stack(
                children: [
                  Container(
                    height: 135.h,
                    width: 125.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(top: 40, left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppText(
                            text: item.name,
                            size: 11.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          AppText(
                            text: item.category,
                            size: 10.sp,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          StarsBar(
                            stars: item.rateStars,
                          )
                        ],
                      ),
                    ),
                  ),
                  AlignPositioned(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(item.image),
                    ),
                    alignment: Alignment.topCenter,
                    touch: Touch.inside,
                    dx: 25.0,
                    moveByChildWidth: -0.6,
                    moveByChildHeight: -0.5,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
