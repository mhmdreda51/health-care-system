import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/view/Find%20Doctor/widgets/doctor_item_card.dart';

import '../../../core/Category cubit/category_cubit.dart';
import '../../Pharmacy Details/pharmacy_details.dart';

// ignore: must_be_immutable
class PharmacyListView extends StatelessWidget {
  PharmacyListView({Key? key, required this.cubit}) : super(key: key);
  CategoryCubit cubit;

  @override
  Widget build(BuildContext context) {
    final listViewHeight = MediaQuery.of(context).size.height / 1.5;
    final listViewWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.only(top: 20.r, left: 20.r, right: 20.r, bottom: 10),
      child: SizedBox(
        height: listViewHeight,
        width: listViewWidth,
        child: ListView.separated(
          itemCount: cubit.newPharmacyList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final item = cubit.newPharmacyList[index];
            return InkWell(
              onTap: () => MagicRouter.navigateTo(PharmacyDetails(
                item: item,
              )),
              child: DoctorItemCard(
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
