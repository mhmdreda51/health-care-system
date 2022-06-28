import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/view/Sign%20Up/controller/sign_up_cubit.dart';

import '../../../core/cacheHelper/cache_helper.dart';
import '../../../widgets/app_text.dart';
import '../../Notification/notification_screen.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          final locationCubit = SignUpCubit.get(context);

          if (state is GetMyAddressNameError) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Get Location Error"),
                backgroundColor: AppColors.blueWhite,
              ),
            );
          }
        },
        builder: (context, state) {
          final locationCubit = SignUpCubit.get(context);

          return Container(
            width: double.infinity,
            height: 50,
            padding: const EdgeInsets.only(left: 37, right: 37),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                      size: 20.h,
                    ),
                    SizedBox(
                      width: 3.w,
                    ),
                    AppText(
                      text: CacheHelper.getLocationAddress.toString(),
                      size: 11.h,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    )
                  ],
                ),
                IconButton(
                  icon: const FaIcon(
                    FontAwesomeIcons.solidBell,
                    color: Colors.white,
                  ),
                  onPressed: () => MagicRouter.navigateTo(NotificationScreen()),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
