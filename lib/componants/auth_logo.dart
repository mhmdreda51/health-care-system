import 'package:flutter/material.dart';

class AuthLogo extends StatelessWidget {
  const AuthLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40),
      child: Align(
        alignment: Alignment.topCenter,
        child: Image(
          image: AssetImage("assets/images/logo.png"),
        ),
      ),
    );
  }
}
