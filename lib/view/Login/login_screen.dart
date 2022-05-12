import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_care_system/view/Home%20Screen/home_screen.dart';

import '../../componants/auth_background.dart';
import '../../core/router/router.dart';
import '../../widgets/main_button.dart';
import 'Componants/check_box_row.dart';
import 'Componants/forget_password_row.dart';
import 'Componants/login_form.dart';
import 'Componants/sign_up_row.dart';
import 'Componants/social_media_row.dart';
import 'login cubit/login_controller_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginControllerCubit(),
      child: BlocConsumer<LoginControllerCubit, LoginControllerState>(
        listener: (context, state) {
          if (state is LoginSuccessState) {
            if (state.userModel.status == 1) {
              Fluttertoast.showToast(msg: "login success");
              MagicRouter.navigateAndPopAll(const HomeScreen());
            } else if (state.userModel.status == 0 ||
                state.userModel.status != null) {
              Fluttertoast.showToast(msg: "login failed");
            }
          }
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
                              LoginForm(cubit: cubit),
                              CheckBoxRow(cubit: cubit),
                              const SizedBox(
                                height: 13,
                              ),
                              state is LoginLoadingState
                                  ? const CupertinoActivityIndicator(
                                      radius: 16.0,
                                      animating: true,
                                    )
                                  : MainButton(
                                      onPressed: () async {
                                        if (cubit.loginFormKey.currentState!
                                            .validate()) {
                                          cubit.userLogin(
                                              email: cubit.emailController.text
                                                  .toLowerCase()
                                                  .trim(),
                                              password: cubit
                                                  .passwordController.text
                                                  .toLowerCase()
                                                  .trim());
                                        }
                                      },
                                      height: 55,
                                      width: 266,
                                      borderRadius: 21,
                                      text: "LOG IN",
                                    ),
                              const SizedBox(
                                height: 10,
                              ),
                              const ForgetPasswordRow(),
                              const SocialMediaRow(),
                              const SizedBox(height: 40),
                              const SignUpRow(),
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
