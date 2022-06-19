import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../core/router/router.dart';

AppBar AccountItemAppBar({required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    leading: SizedBox(),
    actions: [
      IconButton(
        icon: Icon(
          Icons.arrow_forward_ios,
        ),
        color: AppColors.introTextColor,
        onPressed: () => MagicRouter.pop(),
      )
    ],
    title: Text(
      title,
      style: TextStyle(
        color: AppColors.introTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
