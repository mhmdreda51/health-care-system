import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';

class PillReminderTextForm extends StatelessWidget {
  const PillReminderTextForm({
    Key? key,
    required this.label,
    required this.hint,
    required this.controller,
    required this.fun,
    this.onTap,
    this.hasSuffixIcon = true,
  }) : super(key: key);
  final String label;
  final String hint;
  final TextEditingController controller;
  final Function(String) fun;
  final Function()? onTap;
  final bool hasSuffixIcon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: TextFormField(
        onTap: onTap,
        readOnly: onTap != null,
        style: TextStyle(
          color: AppColors.introTextColor,
          fontSize: 15,
          fontWeight: FontWeight.bold,
        ),
        autofocus: false,
        controller: controller,
        onChanged: (value) {
          fun(value);
        },
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          suffixIcon: hasSuffixIcon
              ? Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: AppColors.introTextColor,
                    size: 15,
                  ),
                )
              : SizedBox(),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: TextStyle(
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.introTextColor),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.introTextColor),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.introTextColor),
          ),
        ),
      ),
    );
  }
}
