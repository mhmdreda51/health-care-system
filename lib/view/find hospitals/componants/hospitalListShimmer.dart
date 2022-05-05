import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/find%20hospitals/controller/find_hospital_cubit.dart';
import 'package:shimmer/shimmer.dart';

class HospitalListShimmer extends StatelessWidget {
  HospitalListShimmer({Key? key, required this.cubit}) : super(key: key);
  FindHospitalCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290.h,
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        itemCount: cubit.newList.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 10.h,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Shimmer.fromColors(
              baseColor: AppColors.blueWhite,
              highlightColor: Colors.grey[100]!,
              direction: ShimmerDirection.ltr,
              period: const Duration(seconds: 2),
              child: Container(
                height: 100.h,
                width: double.infinity,
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                decoration: ShapeDecoration(
                  color: Colors.grey[400]!,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
