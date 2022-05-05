import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 110, right: 110, top: 40),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: const Image(
                image: AssetImage("assets/icons/facebook.png"),
                height: 45,
                width: 45,
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {},
              child: const Image(
                image: AssetImage("assets/icons/google.png"),
                height: 45,
                width: 45,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
