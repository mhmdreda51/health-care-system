import 'package:align_positioned/align_positioned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/router/router.dart';
import '../../../widgets/AccountItemAppBar.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/stars_bar.dart';
import '../../Doctor details/doctor_details.dart';
import '../../Find Doctor/model/doctor_model.dart';

class AllTop extends StatelessWidget {
  const AllTop({Key? key, required this.title, required this.list})
      : super(key: key);
  final String title;
  final List list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountItemAppBar(title: "Top $title"),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.only(top: 15, left: 0, bottom: 15),
        child: SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              childAspectRatio: 1,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: doctorList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              var item = doctorList[index];
              return GestureDetector(
                onTap: () => MagicRouter.navigateTo(DoctorDetails(item: item)),
                child: Container(
                  padding: const EdgeInsets.only(top: 25),
                  height: 250,
                  width: 125,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 135.h,
                        width: 125.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 40, left: 10, right: 10),
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
                        moveByChildWidth: -0.7,
                        moveByChildHeight: -0.5,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
