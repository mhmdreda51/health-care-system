import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Home%20Screen/Controller/home_cubit.dart';
import 'package:health_care_system/view/Home%20Screen/model/services_model.dart';
import 'package:health_care_system/widgets/app_text.dart';

class ServicesGridView extends StatelessWidget {
  ServicesGridView({Key? key, required this.cubit}) : super(key: key);
  HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
        ),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: servicesList.map((item) {
          return GestureDetector(
            onTap: () => cubit.navigateServicesById(item.id),
            child: Container(
              height: 81.h,
              width: 88.w,
              decoration: BoxDecoration(
                color: item.color,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Padding(
                padding: EdgeInsets.only(top: 12, left: 10, right: 10.r),
                child: Column(
                  children: [
                    Image.asset(
                      item.image,
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    AppText(
                      text: item.name,
                      size: 10.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
