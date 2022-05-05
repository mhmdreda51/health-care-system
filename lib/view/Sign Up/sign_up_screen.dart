import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Login/login_screen.dart';
import 'package:health_care_system/view/Sign%20Up/controller/sign_up_cubit.dart';

import '../../componants/auth_background.dart';
import '../../componants/auth_logo.dart';
import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import '../../widgets/app_text.dart';
import '../../widgets/auth_text_form_field.dart';
import '../../widgets/main_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = SignUpCubit.get(context);

          return SafeArea(
            child: Scaffold(
              body: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      const AuthBackground(),
                      SingleChildScrollView(
                        child: Form(
                          key: cubit.signUpFormKey,
                          child: Column(
                            children: [
                              const AuthLogo(),
                              const SizedBox(
                                height: 11,
                              ),
                              const AppText(
                                text: "Medical Care",
                                size: 20,
                                color: AppColors.blueWhite,
                                fontWeight: FontWeight.bold,
                              ),
                              const SizedBox(
                                height: 80,
                              ),
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
                                onChanged: cubit.userNameSuffixOnChange,
                                controller: cubit.userNameController,
                                obscureText: false,
                                hintText: "user name",
                                icon: cubit.userNameSuffix
                                    ? Icons.check_circle
                                    : Icons.cancel,
                                onPressed: () {},
                                iconColor: cubit.userNameSuffix
                                    ? Colors.green
                                    : Colors.red,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
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
                                hintText: "email",
                                icon: cubit.emailSuffix
                                    ? Icons.check_circle
                                    : Icons.cancel,
                                onPressed: () {},
                                iconColor: cubit.emailSuffix
                                    ? Colors.green
                                    : Colors.red,
                              ),
                              const SizedBox(
                                height: 25,
                              ),
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
                                icon: cubit.passwordSuffix,
                                onPressed: cubit.changePasswordVisibility,
                                iconColor: Colors.green.withOpacity(.7),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
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
                                controller: cubit.passwordConfirmController,
                                obscureText: cubit.isPasswordConfirm,
                                hintText: "confirm password",
                                icon: cubit.passwordConfirmSuffix,
                                onPressed:
                                    cubit.changePasswordConfirmVisibility,
                                iconColor: Colors.green.withOpacity(.7),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(right: 100, left: 20),
                                child: Row(
                                  children: [
                                    Checkbox(
                                      value: cubit.checkBoxValue,
                                      onChanged: cubit.checkBoxOnChange,
                                      activeColor: AppColors.blueWhite,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                    ),
                                    AppText(
                                      text: "I agree with Terms and Condition",
                                      size: 12,
                                      color: Colors.black.withOpacity(.8),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              MainButton(
                                onPressed: () {},
                                height: 55,
                                width: 266,
                                borderRadius: 21,
                                text: "Create Account",
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 85, bottom: 20),
                                child: Row(
                                  children: [
                                    AppText(
                                      text: "Already have an account? ",
                                      size: 14,
                                      color: Colors.black.withOpacity(.8),
                                      fontWeight: FontWeight.bold,
                                    ),
                                    GestureDetector(
                                      onTap: () =>
                                          MagicRouter.navigateAndPopAll(
                                              const LoginScreen()),
                                      child: const AppText(
                                        text: "Sign in",
                                        size: 14,
                                        color: AppColors.blueWhite,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          );
        },
      ),
    );
  }
}
