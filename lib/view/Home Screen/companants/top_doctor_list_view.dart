import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../../widgets/stars_bar.dart';

class TopDoctorListView extends StatelessWidget {
  const TopDoctorListView({Key? key}) : super(key: key);

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
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
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
                          text: "Dr.mohamed ahmed",
                          size: 11.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        AppText(
                          text: "B.Sc, MBBS, DDVL,",
                          size: 10.sp,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const StarsBar(
                          stars: 4.5,
                        )
                      ],
                    ),
                  ),
                ),
                AlignPositioned(
                  child: Image.asset(
                    "assets/images/topdoctor.png",
                    width: 50,
                    height: 50,
                  ),
                  alignment: Alignment.topCenter,
                  touch: Touch.inside,
                  dx: 25.0,
                  moveByChildWidth: -0.5,
                  moveByChildHeight: -0.5,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
