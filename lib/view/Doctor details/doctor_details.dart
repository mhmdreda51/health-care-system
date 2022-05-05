import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Doctor%20details/widgets/DoctorDetailsAppBar.dart';

import 'componants/doctor_details_header.dart';
import 'componants/doctor_details_tap_bar.dart';
import 'componants/doctor_details_tap_bar_body.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({
    Key? key,
    required this.category,
    required this.rateStars,
    required this.name,
    required this.location,
    required this.image,
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
  final String category;
  final double rateStars;
  final String name;
  final String location;
  final String image;
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

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails>
    with SingleTickerProviderStateMixin {
  late int currentTab;
  late TabController tabController;

  @override
  void initState() {
    currentTab = 0;
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    tabController.animation!.addListener(() {
      final value = tabController.animation!.value.round();
      if (value != currentTab && mounted) {
        changePage(value);
      }
    });
    super.initState();
  }

  void changePage(int newTab) {
    setState(() {
      currentTab = newTab;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[200]!,
      appBar: doctorDetailsAppBar(context),
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(20.0.r),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DoctorDetailsHeader(
                      rateStars: widget.rateStars,
                      name: widget.name,
                      category: widget.category,
                      location: widget.location,
                      image: widget.image,
                    ),
                    DoctorDetailsTapBar(
                      tabController: tabController,
                      currentTab: currentTab,
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: DoctorDetailsTapBarBody(
          tabController: tabController,
          workingTime: widget.workingTime,
          socialName: widget.socialName,
          priceReturn: widget.priceReturn,
          priceFirsTime: widget.priceFirsTime,
          numberPhone: widget.numberPhone,
          gmail: widget.gmail,
          address: widget.address,
          description: widget.description,
          education: widget.education,
          languages: widget.languages,
          publications: widget.publications,
          flags: widget.flags,
          image: widget.image,
          location: widget.location,
          category: widget.category,
          name: widget.name,
        ),
      ),
    ));
  }
}
