import 'package:flutter/material.dart';

class ConfirmNewPasswordTextField extends StatelessWidget {
  const ConfirmNewPasswordTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.onFieldSubmitted,
    required this.obscureText,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);
  final String hintText;
  final TextEditingController? controller;
  final Function(String) onFieldSubmitted;
  final bool obscureText;
  final Function() onPressed;
  final IconData icon;

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
        controller: controller,
        keyboardType: TextInputType.visiblePassword,
        obscureText: obscureText,
        validator: (value) {
          if (value!.isEmpty) {
            return "validation.password_empty";
          } else if (value.length < 6) {
            return "validation.password_valid";
          } else if (value.contains(' ')) {
            return "validation.white_space";
          } else {
            return null;
          }
        },
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          isDense: true,
          hintText: "login.password",
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
          suffixIcon: IconButton(onPressed: onPressed, icon: Icon(icon)),
        ),
      ),
    );
  }
}
