import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/DetailsAppBar.dart';
import '../find labs/Models/laps_model.dart';
import 'Componants/laps_details_header.dart';
import 'Componants/laps_details_tap_bar.dart';
import 'Componants/laps_details_tap_bar_body.dart';

class LapsDetails extends StatefulWidget {
  const LapsDetails({Key? key, required this.item}) : super(key: key);
  final LapsModel item;

  @override
  _LapsDetailsState createState() => _LapsDetailsState();
}

class _LapsDetailsState extends State<LapsDetails>
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
                      LapsDetailsHeader(
                        item: widget.item,
                      ),
                      LapsDetailsTapBar(
                        tabController: tabController,
                        currentTab: currentTab,
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: LapsDetailsTapBarBody(
            tabController: tabController,
            item: widget.item,
          ),
        ),
      ),
    );
  }
}
