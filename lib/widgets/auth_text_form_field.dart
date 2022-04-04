import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AuthTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final Function validator;
  final String hintText;
  final bool obscureText;
  final Function() onPressed;
  final IconData icon;
  final Color iconColor;
  final Function onChanged;

  AuthTextFromField({
    required this.controller,
    required this.validator,
    required this.hintText,
    required this.obscureText,
    required this.onPressed,
    required this.icon,
    required this.iconColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 31, right: 31),
      child: TextFormField(
        controller: controller,
        onChanged: (value) => onChanged(value),

        // obscureText: obscureText,
        cursorColor: AppColors.blueWhite,
        obscureText: obscureText,
        maxLines: 1,
        keyboardType: TextInputType.text,
        validator: (value) => validator(value),
        style: const TextStyle(color: Colors.black, fontSize: 16),

        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(icon, color: iconColor, size: 27),
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.blueWhite),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              const EdgeInsets.only(left: 30.0, bottom: 25.0, top: 25.0),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      ),
    );
  }
}
