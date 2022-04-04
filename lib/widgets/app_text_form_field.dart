import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {Key? key,
      required this.controller,
      required this.validator,
      required this.hintText,
      required this.icon,
      required this.iconColor})
      : super(key: key);
  final TextEditingController controller;
  final Function validator;
  final String hintText;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) => validator(value),
      keyboardType: TextInputType.text,
      cursorColor: Colors.grey,
      decoration: InputDecoration(
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
        hintText: hintText,
        suffixIcon: Icon(
          icon,
          color: iconColor,
          size: 25,
        ),
        hintStyle: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
