import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/Category cubit/category_cubit.dart';
import '../../../core/router/router.dart';
import '../../Find Doctor/widgets/doctor_item_card.dart';
import '../../Laps Details/laps_details.dart';

class LapsListView extends StatelessWidget {
  const LapsListView({Key? key, required this.cubit}) : super(key: key);
  final CategoryCubit cubit;

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
          itemCount: cubit.newLapsList.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            final item = cubit.newLapsList[index];
            return InkWell(
              onTap: () => MagicRouter.navigateTo(LapsDetails(
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
