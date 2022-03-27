import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/Sign%20Up/sign_up_screen.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../componants/auth_background.dart';
import '../../componants/auth_logo.dart';
import '../../core/router/router.dart';
import '../../widgets/app_text_form_field.dart';
import '../../widgets/main_button.dart';
import '../Location Screen/select_location_screen.dart';
import 'login cubit/login_controller_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginControllerCubit, LoginControllerState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        final cubit = LoginControllerCubit.get(context);

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
                        key: cubit.loginFormKey,
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
                              height: 100,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            AppTextFromField(
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
                              icon: cubit.emailSuffix
                                  ? Icons.check_circle
                                  : Icons.cancel,
                              onPressed: () {},
                              iconColor:
                                  cubit.emailSuffix ? Colors.green : Colors.red,
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            AppTextFromField(
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
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 180, left: 20),
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
                                    text: "Remember me!",
                                    size: 13,
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
                              onPressed: () => MagicRouter.navigateTo(
                                  const SelectLocationScreen()),
                              height: 55,
                              width: 266,
                              borderRadius: 21,
                              text: "LOG IN",
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            AppText(
                              text: "forget password?",
                              size: 13,
                              color: Colors.black.withOpacity(.8),
                              fontWeight: FontWeight.bold,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 110, right: 110, top: 40),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const Image(
                                        image: AssetImage(
                                            "assets/icons/facebook.png"),
                                        height: 45,
                                        width: 45,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: const Image(
                                        image: AssetImage(
                                            "assets/icons/google.png"),
                                        height: 45,
                                        width: 45,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 40,
                            ),
                            Padding(
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
                                    onTap: () => MagicRouter.navigateTo(
                                        const SignUpScreen()),
                                    child: const AppText(
                                      text: "Sign up",
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
    );
  }
}
