import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../constants/app_colors.dart';
import '../../widgets/DetailsAppBar.dart';
import '../../widgets/Details_part.dart';
import '../Doctor details/componants/communication_part.dart';
import 'Componants/hospital_details_header.dart';

class HospitalDetails extends StatelessWidget {
  const HospitalDetails({
    Key? key,
    required this.category,
    required this.rateStars,
    required this.name,
    required this.location,
    required this.image,
    required this.description,
    required this.address,
    required this.workingTime,
    required this.numberPhone,
    required this.socialName,
    required this.gmail,
    required this.recommendation,
  }) : super(key: key);
  final String category;
  final double rateStars;
  final String name;
  final String location;
  final String image;
  final List description;
  final String address;
  final String workingTime;
  final int numberPhone;
  final String socialName;
  final String gmail;

  final String recommendation;

  @override
  Widget build(BuildContext context) {
    final descriptionList =
        description.map((x) => "- $x\n").reduce((x, y) => "$x$y");
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
                rateStars: rateStars,
                location: location,
                image: image,
                category: category,
                name: name,
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
                text: address,
              ),
              const Divider(color: Colors.black38),
              DetailsPart(
                title: "Working Time",
                text: workingTime,
              ),
              const Divider(color: Colors.black38),
              SizedBox(height: 10.h),
              CommunicationPart(
                socialName: socialName,
                numberPhone: numberPhone,
                gmail: gmail,
              )
            ],
          ),
        ),
      ),
    );
  }
}
