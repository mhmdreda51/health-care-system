import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../core/router/router.dart';
import '../../../widgets/app_text.dart';
import '../../Login/login_screen.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 85, bottom: 20),
      child: Row(
        children: [
          AppText(
            text: "Already have an account? ",
            size: 14,
            color: Colors.black.withOpacity(.8),
            fontWeight: FontWeight.bold,
          ),
          GestureDetector(
            onTap: () => MagicRouter.navigateAndPopAll(const LoginScreen()),
            child: const AppText(
              text: "Sign in",
              size: 14,
              color: AppColors.blueWhite,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
