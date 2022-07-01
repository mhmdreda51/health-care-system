import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class LapsDetailsTapBar extends StatefulWidget {
  const LapsDetailsTapBar(
      {Key? key, required this.currentTab, required this.tabController})
      : super(key: key);
  final int currentTab;
  final TabController tabController;

  @override
  State<LapsDetailsTapBar> createState() => _LapsDetailsTapBarState();
}

class _LapsDetailsTapBarState extends State<LapsDetailsTapBar> {
  @override
  Widget build(BuildContext context) {
    const Color unselectedColor = Colors.grey;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 0.1, color: Colors.grey.withOpacity(0.5)),
        ),
      ),
      height: 45,
      child: TabBar(
        controller: widget.tabController,
        indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(
          color: AppColors.introTextColor,
          width: 3,
        )),
        indicatorPadding: const EdgeInsets.fromLTRB(6.0, 0.0, 6.0, 0.0),
        tabs: [
          Text(
            'Doctor info',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight:
                  widget.currentTab == 0 ? FontWeight.bold : FontWeight.normal,
              fontSize: 14.0,
              color: widget.currentTab == 0
                  ? AppColors.introTextColor
                  : unselectedColor,
            ),
          ),
          Text(
            'Clinic info',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight:
                  widget.currentTab == 1 ? FontWeight.bold : FontWeight.normal,
              fontSize: 14.0,
              color: widget.currentTab == 1
                  ? AppColors.introTextColor
                  : unselectedColor,
            ),
          ),
        ],
      ),
    );
  }
}
