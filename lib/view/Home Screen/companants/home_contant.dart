import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Home%20Screen/Controller/home_cubit.dart';
import 'package:health_care_system/view/Home%20Screen/companants/services_grid_view.dart';
import 'package:health_care_system/view/Home%20Screen/companants/top_doctor_list_view.dart';
import 'package:health_care_system/view/Home%20Screen/companants/top_hospital_list_view.dart';
import 'package:health_care_system/view/Home%20Screen/companants/top_row.dart';
import 'package:health_care_system/view/find%20hospitals/Model/hospital_model.dart';

import '../../../constants/app_colors.dart';
import '../../../core/router/router.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/app_text_form_field.dart';
import '../../Find Doctor/model/doctor_model.dart';
import '../../Search Screen/search_screen.dart';
import '../Widgets/all_top.dart';
import 'home_header.dart';

class HomeContant extends StatelessWidget {
  const HomeContant({Key? key, required this.cubit}) : super(key: key);
  final HomeCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 36, right: 36, top: 50),
      child: Align(
        alignment: Alignment.topCenter,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const HomeHeader(),
            SizedBox(height: 15.h),
            AppTextFormField(
              maxLines: 1,
              validator: () {},
              onTap: () => MagicRouter.navigateTo(SearchScreen()),
              controller: cubit.searchController,
              iconColor: Colors.grey[400]!,
              icon: Icons.search,
              hintText: "Search",
            ),
            SizedBox(height: 15.h),
            Align(
              alignment: Alignment.centerLeft,
              child: AppText(
                text: "Services",
                size: 16.sp,
                color: AppColors.blueWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.h),
            ServicesGridView(cubit: cubit),
            SizedBox(height: 10.h),
            TopRow(
              header: "Top Doctor",
              onTap: () => MagicRouter.navigateTo(
                AllTop(title: "Doctor", list: doctorList),
              ),
            ),
            SizedBox(height: 10.h),
            TopDoctorListView(),
            TopRow(
              header: "Top Hospital",
              onTap: () => MagicRouter.navigateTo(
                AllTop(title: "Hospital", list: hospitals),
              ),
            ),
            SizedBox(height: 10.h),
            TopHospitalListView(),
          ],
        ),
      ),
    );
  }
}
