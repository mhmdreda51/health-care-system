import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/core/router/router.dart';

import '../../../core/Category cubit/category_cubit.dart';
import '../../Hospital Details/hospital_detials.dart';
import 'HospitalItemCard.dart';

class HospitalListView extends StatelessWidget {
  HospitalListView({Key? key, required this.cubit}) : super(key: key);
  CategoryCubit cubit;

  @override
  Widget build(BuildContext context) {
    final listViewHeight = MediaQuery.of(context).size.height / 1.5;
    final listViewWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding:
          EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r, bottom: 10.r),
      child: SizedBox(
        height: listViewHeight,
        width: listViewWidth,
        child: ListView.separated(
          itemCount: cubit.newHospitalList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final item = cubit.newHospitalList[index];
            return GestureDetector(
              onTap: () => MagicRouter.navigateTo(HospitalDetails(
                item: item,
              )),
              child: HospitalItemCard(
                image: item.image,
                location: item.location,
                category: item.category,
                name: item.name,
                rateStars: item.rateStars,
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(height: 10.h);
          },
        ),
      ),
    );
  }
}
