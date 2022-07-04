// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:health_care_system/view/find%20pharmacys/Model/PharmacysModel.dart';
//
// import '../../Doctor details/componants/clinic_info_section.dart';
// import '../../Doctor details/componants/doctor_section.dart';
//
// class PharmacyDetailsTapBarBody extends StatelessWidget {
//   const PharmacyDetailsTapBarBody(
//       {Key? key, required this.tabController, required this.item})
//       : super(key: key);
//   final TabController tabController;
//   final PharmacysModel item;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(top: 10.r, left: 20.r, right: 20.r),
//       child: TabBarView(
//         controller: tabController,
//         children: [
//           DoctorSection(
//             publications: item.publications,
//             education: item.education,
//             description: item.description,
//             languages: item.languages,
//             flags: item.flags,
//           ),
//           ClinicInfoSection(
//             address: item.address,
//             gmail: item.gmail,
//             numberPhone: item.numberPhone,
//             priceFirsTime: item.priceFirsTime,
//             priceReturn: item.priceReturn,
//             socialName: item.socialName,
//             workingTime: item.workingTime,
//           ),
//         ],
//       ),
//     );
//   }
// }
