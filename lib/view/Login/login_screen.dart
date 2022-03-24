import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Container(
                child: Image(
                  image: AssetImage("assets/images/login-png.png"),
                  fit: BoxFit.contain,
                ),
                width: double.infinity,
                height: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
