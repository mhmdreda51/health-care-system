import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Find Doctor/model/doctor_model.dart';
import 'clinic_info_section.dart';
import 'doctor_section.dart';
import 'feedbacks_section.dart';

class DoctorDetailsTapBarBody extends StatelessWidget {
  const DoctorDetailsTapBarBody({
    Key? key,
    required this.tabController,
    required this.item,
  }) : super(key: key);
  final TabController tabController;
  final DoctorModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.r, left: 20.r, right: 20.r),
      child: TabBarView(
        controller: tabController,
        children: [
          DoctorSection(
            publications: item.publications,
            education: item.education,
            description: item.description,
            languages: item.languages,
            flags: item.flags,
          ),
          ClinicInfoSection(
            address: item.address,
            gmail: item.gmail,
            numberPhone: item.numberPhone,
            priceFirsTime: item.priceFirsTime,
            priceReturn: item.priceReturn,
            socialName: item.socialName,
            workingTime: item.workingTime,
          ),
          FeedbacksSection(
            name: item.name,
            category: item.category,
            location: item.location,
            image: item.image,
          )
        ],
      ),
    );
  }
}
