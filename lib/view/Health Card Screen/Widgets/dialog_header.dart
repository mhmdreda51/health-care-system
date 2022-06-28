import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';

class DialogHeader extends StatelessWidget {
  const DialogHeader({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: AppColors.introTextColor,
              ),
              SizedBox(width: 5),
              AppText(
                color: AppColors.introTextColor,
                text: title,
                fontWeight: FontWeight.bold,
                size: 14,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
