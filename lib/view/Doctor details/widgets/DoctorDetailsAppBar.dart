import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../core/router/router.dart';

AppBar doctorDetailsAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0.0,
    leading: Container(),
    actions: [
      IconButton(
        icon: const Icon(
          Icons.arrow_forward_ios_outlined,
          color: AppColors.blueWhite,
        ),
        onPressed: () => MagicRouter.pop(),
      ),
    ],
  );
}
