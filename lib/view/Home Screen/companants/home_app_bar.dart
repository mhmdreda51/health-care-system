import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/constants/app_colors.dart';

import '../../../widgets/app_text.dart';
import '../Controller/home_cubit.dart';
import 'LocationTextShimmer.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        final locationCubit = HomeCubit.get(context);

        if (state is GetMyAddressNameError) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Get Location Error"),
              backgroundColor: AppColors.blueWhite,
            ),
          );
        }
      },
      bloc: HomeCubit()..getMyAddressName(),
      builder: (context, state) {
        final locationCubit = HomeCubit.get(context);

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
                  state is LocationLoading ||
                          locationCubit.myLocation == "" ||
                          state is LocationError
                      ? const LocationTextShimmer()
                      : AppText(
                          text: state is LocationLoading
                              ? "Your Location"
                              : locationCubit.myLocation,
                          size: 11.h,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.solidBell,
                    color: Colors.white,
                  ))
            ],
          ),
        );
      },
    );
  }
}
