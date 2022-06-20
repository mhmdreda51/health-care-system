import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/constants/app_colors.dart';

class HealthCardDropDown extends StatelessWidget {
  const HealthCardDropDown({
    Key? key,
    required this.itemsList,
    required this.onChanged,
    required this.value,
  }) : super(key: key);
  final List<dynamic> itemsList;
  final Function(String?)? onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 50,
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          border: Border.all(color: Colors.white)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          isExpanded: true,
          items: itemsList
              .map(
                (e) => DropdownMenuItem<String>(
                  child: Text(e.toString(),
                      style: const TextStyle(color: AppColors.introTextColor)),
                  value: e,
                ),
              )
              .toList(),
          onChanged: onChanged,
          value: value,
          elevation: 2,
          isDense: false,
          iconSize: 20.0.h,
          hint: SizedBox(
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: AppColors.introTextColor,
                  size: 15.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  value ?? "",
                  textAlign: TextAlign.start,
                  style: const TextStyle(
                    color: AppColors.introTextColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
