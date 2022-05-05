import 'package:flutter/material.dart';

import '../../../widgets/app_text.dart';

class SplashContant extends StatelessWidget {
  const SplashContant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        SizedBox(
          height: 150,
        ),
        Image(
          image: AssetImage("assets/images/logoWhite.png"),
        ),
        SizedBox(
          height: 9,
        ),
        AppText(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          size: 15,
          text: "Medical Care",
        ),
        SizedBox(
          height: 42,
        ),
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5),
          child: Image(
            image: AssetImage("assets/images/splash - png.png"),
          ),
        ),
      ],
    );
  }
}
