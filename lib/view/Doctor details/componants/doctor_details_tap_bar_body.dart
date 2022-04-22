import 'package:flutter/material.dart';

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
  }) : super(key: key);
  final TabController tabController;
  final String education;
  final String publications;
  final String description;
  final List<String> languages;
  final String address;
  final String workingTime;
  final int priceFirsTime;
  final int priceReturn;
  final int numberPhone;
  final String socialName;
  final String gmail;
  final List<String> flags;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 0, left: 30, right: 20),
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
          ClinicInfoSection(),
          FeedbacksSection()
        ],
      ),
    );
  }
}
