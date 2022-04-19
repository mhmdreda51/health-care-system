import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/app_colors.dart';

class NothingWidget extends StatelessWidget {
  const NothingWidget({
    Key? key,
    this.horizontalPadding = 20.0,
    this.iconSize = 26.0,
    required this.color,
  }) : super(key: key);
  final double horizontalPadding;
  final double? iconSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: horizontalPadding, vertical: 20),
      child: Container(
        height: 280.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0), color: color),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              FontAwesomeIcons.search,
              color: AppColors.blueWhite,
              size: iconSize,
            ),
            const SizedBox(width: 8),
            const Text("No Thing To See",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0))
          ],
        ),
      ),
    );
  }
}
