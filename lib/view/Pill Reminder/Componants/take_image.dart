import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class TakeImage extends StatelessWidget {
  const TakeImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            height: 75,
            width: 75,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: AppColors.blueWhite),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(
              Icons.camera_alt,
              color: AppColors.blueWhite,
              size: 35,
            ),
          ),
        ),
      ),
    );
  }
}
