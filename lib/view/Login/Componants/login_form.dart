import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componants/auth_logo.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/auth_text_form_field.dart';
import '../login cubit/login_controller_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key, required this.cubit}) : super(key: key);
  final LoginControllerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthLogo(),
        SizedBox(height: 11.h),
        const AppText(
          text: "Medical Care",
          size: 20,
          color: AppColors.blueWhite,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 100.h),
        AuthTextFromField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'email must not be empty';
            } else if (!value.contains('@')) {
              return 'please enter a valid email';
            } else {
              return null;
            }
          },
          onChanged: cubit.emailSuffixOnChange,
          controller: cubit.emailController,
          obscureText: false,
          hintText: "Email Address",
          icon: cubit.emailSuffix ? Icons.check_circle : Icons.cancel,
          onPressed: () {},
          iconColor: cubit.emailSuffix ? Colors.green : Colors.red,
        ),
        SizedBox(height: 25.h),
        AuthTextFromField(
          validator: (value) {
            if (value!.isEmpty) {
              return 'password must not be empty';
            } else if (value.length < 6) {
              return 'password must be at least 8 characters';
            } else {
              return null;
            }
          },
          onChanged: () {},
          controller: cubit.passwordController,
          obscureText: cubit.isPassword,
          hintText: "Password",
          icon: cubit.suffix,
          onPressed: cubit.changePasswordVisibility,
          iconColor: Colors.green.withOpacity(.7),
        ),
      ],
    );
  }
}
