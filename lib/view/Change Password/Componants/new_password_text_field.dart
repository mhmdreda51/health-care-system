import 'package:flutter/material.dart';

class NewPasswordTextField extends StatelessWidget {
  const NewPasswordTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.onChanged,
    required this.obscureText,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  final Function() onPressed;
  final IconData icon;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.only(top: 5, left: 5, right: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        onChanged: (value) => onChanged!(value),
        controller: controller,
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return "password must not be empty";
          } else if (value.length < 6) {
            return "password must be at least 6 digits";
          } else if (value.contains(' ')) {
            return "The password cannot have space.";
          } else {
            return null;
          }
        },
        decoration: InputDecoration(
          isDense: true,
          hintText: hintText,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(
              color: Colors.white,
              width: 2.0,
            ),
          ),
          suffixIcon: IconButton(onPressed: onPressed, icon: Icon(icon)),
        ),
      ),
    );
  }
}
