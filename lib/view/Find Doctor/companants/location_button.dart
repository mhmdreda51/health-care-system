import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Sign%20Up/controller/sign_up_cubit.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class SelectLocationButton extends StatelessWidget {
  const SelectLocationButton({Key? key, required this.signUpCubit})
      : super(key: key);
  final SignUpCubit signUpCubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: GestureDetector(
        onTap: signUpCubit.getMyAddressName,
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
                text: signUpCubit.myLocation,
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
