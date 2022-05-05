import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../componants/auth_background.dart';
import '../../core/router/router.dart';
import '../../widgets/main_button.dart';
import '../Location Screen/select_location_screen.dart';
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
                              LoginForm(cubit: cubit),
                              CheckBoxRow(cubit: cubit),
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
