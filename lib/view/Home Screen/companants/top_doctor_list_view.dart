import 'package:flutter/material.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/view/Doctor%20details/doctor_details.dart';

import '../../Find Doctor/model/doctor_model.dart';
import '../Widgets/top_item_card.dart';

class TopDoctorListView extends StatelessWidget {
  const TopDoctorListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 180,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemCount: doctorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var item = doctorList[index];
          return GestureDetector(
            onTap: () => MagicRouter.navigateTo(DoctorDetails(item: item)),
            child: TopItemCard(
              rateStars: item.rateStars,
              image: item.image,
              category: item.category,
              name: item.name,
            ),
          );
        },
      ),
    );
  }
}
