import 'package:flutter/material.dart';

import '../../../core/router/router.dart';
import '../../../widgets/app_text.dart';
import '../../Forget Password/forget_password.dart';

class ForgetPasswordRow extends StatelessWidget {
  const ForgetPasswordRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => MagicRouter.navigateTo(const ForgetPassword()),
      child: AppText(
        text: "forget password?",
        size: 13,
        color: Colors.black.withOpacity(.8),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
