import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'clinic_info_section.dart';
import 'doctor_section.dart';
import 'feedbacks_section.dart';

class DoctorDetailsTapBarBody extends StatelessWidget {
  const DoctorDetailsTapBarBody({
    Key? key,
    required this.tabController,
    required this.education,
    required this.publications,
    required this.description,
    required this.languages,
    required this.address,
    required this.workingTime,
    required this.priceFirsTime,
    required this.priceReturn,
    required this.numberPhone,
    required this.socialName,
    required this.gmail,
    required this.flags,
    required this.category,
    required this.name,
    required this.location,
    required this.image,
  }) : super(key: key);
  final TabController tabController;
  final List education;
  final List publications;
  final List description;
  final List<String> languages;
  final String address;
  final String workingTime;
  final int priceFirsTime;
  final int priceReturn;
  final int numberPhone;
  final String socialName;
  final String gmail;
  final List<String> flags;
  final String category;
  final String name;
  final String location;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.r, left: 20.r, right: 20.r),
      child: TabBarView(
        controller: tabController,
        children: [
          DoctorSection(
            publications: publications,
            education: education,
            description: description,
            languages: languages,
            flags: flags,
          ),
          ClinicInfoSection(
            address: address,
            gmail: gmail,
            numberPhone: numberPhone,
            priceFirsTime: priceFirsTime,
            priceReturn: priceReturn,
            socialName: socialName,
            workingTime: workingTime,
          ),
          FeedbacksSection(
            name: name,
            category: category,
            location: location,
            image: image,
          )
        ],
      ),
    );
  }
}
