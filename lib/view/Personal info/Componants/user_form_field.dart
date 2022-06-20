import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class UserFormField extends StatelessWidget {
  const UserFormField({
    Key? key,
    required this.controller,
    required this.hint,
    required this.validator,
    required this.height,
  }) : super(key: key);
  final TextEditingController controller;
  final String hint;
  final Function validator;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        validator: (value) => validator(value),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: AppColors.introTextColor.withOpacity(.7)),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
        ),
      ),
    );
  }
}
