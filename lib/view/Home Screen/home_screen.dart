import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/Home%20Screen/Controller/home_cubit.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../widgets/app_text_form_field.dart';

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
                Container(
                  height: 250.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: AppColors.blueWhite,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      )),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: const EdgeInsets.only(left: 37, right: 37),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(
                            Icons.location_on,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          AppText(
                            text: "Your Location",
                            size: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: FaIcon(
                            FontAwesomeIcons.solidBell,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 36, top: 60),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("assets/images/logoWhite.png"),
                        ),
                        SizedBox(
                          height: 14.h,
                        ),
                        AppText(
                          text: "Find Your",
                          size: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        AppText(
                          text: "Medical Solution",
                          size: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        AppTextFormField(
                          validator: () {},
                          controller: cubit.searchController,
                          iconColor: Colors.grey[400]!,
                          icon: Icons.search,
                          hintText: "Search",
                        )
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
