import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/find%20hospitals/Model/hospital_model.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../constants/app_colors.dart';
import '../../widgets/DetailsAppBar.dart';
import '../../widgets/Details_part.dart';
import '../Doctor details/componants/communication_part.dart';
import 'Componants/hospital_details_header.dart';

class HospitalDetails extends StatelessWidget {
  const HospitalDetails({
    Key? key,
    required this.item,
  }) : super(key: key);
  final HospitalModel item;

  @override
  Widget build(BuildContext context) {
    final descriptionList =
        item.description.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return Scaffold(
      backgroundColor: Colors.grey[200]!,
      appBar: DetailsAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HospitalDetailsHeader(
                rateStars: item.rateStars,
                location: item.location,
                image: item.image,
                category: item.category,
                name: item.name,
              ),
              SizedBox(height: 18),
              AppText(
                text: "Hospital info",
                size: 20,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              const Divider(color: Colors.black38),
              DetailsPart(
                title: "description",
                text: descriptionList,
              ),
              const Divider(color: Colors.black38),
              DetailsPart(
                title: "Address",
                text: item.address,
              ),
              const Divider(color: Colors.black38),
              DetailsPart(
                title: "Working Time",
                text: item.workingTime,
              ),
              const Divider(color: Colors.black38),
              SizedBox(height: 10.h),
              CommunicationPart(
                socialName: item.socialName,
                numberPhone: item.numberPhone,
                gmail: item.gmail,
              )
            ],
          ),
        ),
      ),
    );
  }
}
