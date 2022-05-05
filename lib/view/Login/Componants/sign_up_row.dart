import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../core/router/router.dart';
import '../../../widgets/app_text.dart';
import '../../Sign Up/sign_up_screen.dart';

class SignUpRow extends StatelessWidget {
  const SignUpRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 85,
      ),
      child: Row(
        children: [
          AppText(
            text: "Don't have an account? ",
            size: 14,
            color: Colors.black.withOpacity(.8),
            fontWeight: FontWeight.bold,
          ),
          GestureDetector(
            onTap: () => MagicRouter.navigateTo(const SignUpScreen()),
            child: const AppText(
              text: "Sign up",
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
