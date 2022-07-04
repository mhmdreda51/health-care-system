import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../componants/auth_logo.dart';
import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/auth_text_form_field.dart';
import '../controller/sign_up_cubit.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key, required this.cubit}) : super(key: key);
  final SignUpCubit cubit;

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
        SizedBox(height: 80.h),
        AuthTextFromField(
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'This field is required';
            }
            if (value.trim().length < 4) {
              return 'Username must be at least 4 characters in length';
            }
            return null;
          },
          onChanged: (value) => cubit.userNameSuffixOnChange(value: value),
          controller: cubit.userNameController,
          obscureText: false,
          hintText: "user name",
          icon: cubit.userNameSuffix ? Icons.check_circle : Icons.cancel,
          onPressed: () {},
          iconColor: cubit.userNameSuffix ? Colors.green : Colors.red,
        ),
        SizedBox(height: 25.h),
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
          onChanged: (value) => cubit.emailSuffixOnChange(value: value),
          controller: cubit.emailController,
          obscureText: false,
          hintText: "email",
          icon: cubit.emailSuffix ? Icons.check_circle : Icons.cancel,
          onPressed: () {},
          iconColor: cubit.emailSuffix ? Colors.green : Colors.red,
        ),
        SizedBox(height: 25.h),
        AuthTextFromField(
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'This field is required';
            }
            if (value.trim().length < 11) {
              return 'Phone must be at least 11 Number in length';
            }
            return null;
          },
          onChanged: (value) => cubit.phoneSuffixOnChange(value: value),
          controller: cubit.phoneController,
          obscureText: false,
          hintText: "Phone Number",
          icon: cubit.phoneSuffix ? Icons.check_circle : Icons.cancel,
          onPressed: () {},
          iconColor: cubit.phoneSuffix ? Colors.green : Colors.red,
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
          onChanged: (value) {},
          controller: cubit.passwordController,
          obscureText: cubit.isPassword,
          hintText: "Password",
          icon: cubit.passwordSuffix,
          onPressed: cubit.changePasswordVisibility,
          iconColor: Colors.green.withOpacity(.7),
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
          onChanged: (value) {},
          controller: cubit.passwordConfirmController,
          obscureText: cubit.isPasswordConfirm,
          hintText: "confirm password",
          icon: cubit.passwordConfirmSuffix,
          onPressed: cubit.changePasswordConfirmVisibility,
          iconColor: Colors.green.withOpacity(.7),
        ),
      ],
    );
  }
}
