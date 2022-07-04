import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/core/Category%20cubit/category_cubit.dart';

class AppDropDownButton extends StatelessWidget {
  const AppDropDownButton(
      {Key? key,
      required this.onChanged,
      required this.value,
      required this.cubit})
      : super(key: key);
  final Function(String?)? onChanged;
  final String? value;
  final CategoryCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          border: Border.all(color: Colors.white)),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<dynamic>(
          isExpanded: true,
          items: cubit.categoriesModel!.data.category
              .map(
                (e) => DropdownMenuItem<dynamic>(
                  child: Text(e.name.toString(),
                      style: const TextStyle(color: AppColors.introTextColor)),
                  value: e.name,
                ),
              )
              .toList(),
          onChanged: (value) => onChanged!(value),
          value: value,
          elevation: 2,
          isDense: false,
          iconSize: 40.0.h,
          hint: SizedBox(
            width: double.infinity, //and here
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
