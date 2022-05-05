import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../Home Screen/Controller/home_cubit.dart';

class SelectLocationButton extends StatelessWidget {
  const SelectLocationButton({Key? key, required this.homeCubit})
      : super(key: key);
  final HomeCubit homeCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GestureDetector(
        onTap: homeCubit.getMyAddressName,
        child: Container(
          height: 50,
          width: double.infinity,
          padding: const EdgeInsets.only(
            top: 12,
            left: 10,
            bottom: 12,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                color: AppColors.introTextColor,
                size: 17.h,
              ),
              SizedBox(
                width: 8.w,
              ),
              AppText(
                text: homeCubit.myLocation,
                size: 15.sp,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.normal,
              )
            ],
          ),
        ),
      ),
    );
  }
}
