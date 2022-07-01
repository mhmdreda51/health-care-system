import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Find%20Doctor/model/doctor_model.dart';
import 'package:health_care_system/widgets/DetailsAppBar.dart';

import 'componants/doctor_details_header.dart';
import 'componants/doctor_details_tap_bar.dart';
import 'componants/doctor_details_tap_bar_body.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({
    Key? key,
    required this.item,
  }) : super(key: key);
  final DoctorModel item;

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
        appBar: DetailsAppBar(context),
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
                        item: widget.item,
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
            item: widget.item,
          ),
        ),
      ),
    );
  }
}
