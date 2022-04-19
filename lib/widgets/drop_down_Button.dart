import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/constants/app_colors.dart';

class AppDropDownButton extends StatelessWidget {
  const AppDropDownButton(
      {Key? key,
      required this.itemsList,
      required this.onChanged,
      required this.value})
      : super(key: key);
  final List<dynamic> itemsList;
  final Function(String?)? onChanged;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                      style: TextStyle(color: AppColors.introTextColor)),
                  value: e,
                ),
              )
              .toList(),
          onChanged: onChanged,
          value: value,
          elevation: 2,
          isDense: false,
          iconSize: 40.0.h,
          hint: SizedBox(
            width: 150, //and here
            child: Row(
              children: [
                Icon(
                  Icons.search,
                  color: AppColors.introTextColor,
                  size: 20.h,
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  value ?? "Specialitie",
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
