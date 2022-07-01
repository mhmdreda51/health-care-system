import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/find%20pharmacys/Model/PharmacysModel.dart';

import '../../widgets/DetailsAppBar.dart';
import 'Componants/category_details_header.dart';
import 'Componants/pharmacy_details_tap_bar.dart';
import 'Componants/pharmacy_details_tap_bar_body.dart';

class PharmacyDetails extends StatefulWidget {
  const PharmacyDetails({Key? key, required this.item}) : super(key: key);
  final PharmacysModel item;

  @override
  State<PharmacyDetails> createState() => _PharmacyDetailsState();
}

class _PharmacyDetailsState extends State<PharmacyDetails>
    with SingleTickerProviderStateMixin {
  late int currentTab;
  late TabController tabController;

  @override
  void initState() {
    currentTab = 0;
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
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
                      PharmacyDetailsHeader(
                        item: widget.item,
                      ),
                      PharmacyDetailsTapBar(
                        tabController: tabController,
                        currentTab: currentTab,
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: PharmacyDetailsTapBarBody(
            tabController: tabController,
            item: widget.item,
          ),
        ),
      ),
    );
  }
}
