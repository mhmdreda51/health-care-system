import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/Home%20Screen/Controller/home_cubit.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../widgets/app_text_form_field.dart';
import 'companants/home_app_bar.dart';
import 'companants/home_carousel.dart';
import 'companants/home_curve.dart';
import 'companants/home_header.dart';
import 'companants/services_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = HomeCubit.get(context);

        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.grey[200],
            body: Stack(
              children: [
                const HomeCurve(),
                const HomeAppBar(),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 36, top: 60),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const HomeHeader(),
                        SizedBox(
                          height: 20.h,
                        ),
                        AppTextFormField(
                          validator: () {},
                          controller: cubit.searchController,
                          iconColor: Colors.grey[400]!,
                          icon: Icons.search,
                          hintText: "Search",
                        ),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 15.h,
                              ),
                              HomeCarousel(cubit: cubit),
                              SizedBox(
                                height: 8.h,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: AppText(
                                  text: "Services",
                                  size: 16.sp,
                                  color: AppColors.blueWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              ServicesGridView(
                                cubit: cubit,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
