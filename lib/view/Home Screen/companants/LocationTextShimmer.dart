import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class LocationTextShimmer extends StatelessWidget {
  const LocationTextShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.0,
      child: ListView.builder(
        shrinkWrap: true,
        addAutomaticKeepAlives: false,
        addRepaintBoundaries: false,
        itemCount: 1,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Shimmer.fromColors(
              baseColor: AppColors.blueWhite,
              highlightColor: Colors.grey[100]!,
              direction: ShimmerDirection.ltr,
              period: const Duration(seconds: 2),
              child: Container(
                height: 20.0,
                width: 150,
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
