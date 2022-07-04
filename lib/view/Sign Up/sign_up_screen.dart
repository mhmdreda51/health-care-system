import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_care_system/view/Sign%20Up/controller/sign_up_cubit.dart';

import '../../componants/auth_background.dart';
import '../../core/router/router.dart';
import '../../widgets/main_button.dart';
import '../Location Screen/select_location_screen.dart';
import 'componants/LoginRow.dart';
import 'componants/sign_up_check_box_row.dart';
import 'componants/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is RegisterSuccessState) {
            if (state.userModel.status == 1) {
              Fluttertoast.showToast(msg: "register success");
              MagicRouter.navigateAndPopAll(SelectLocationScreen());
            } else if (state.userModel.status == 0 ||
                state.userModel.status != null) {
              Fluttertoast.showToast(msg: state.userModel.message);
            }
          }
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
                              SignUpForm(cubit: cubit),
                              SignUpCheckBoxRow(cubit: cubit),
                              SizedBox(height: 13.h),
                              state is RegisterLoadingState
                                  ? const CupertinoActivityIndicator(
                                      radius: 16.0,
                                      animating: true,
                                    )
                                  : MainButton(
                                      height: 55,
                                      width: 266,
                                      borderRadius: 21,
                                      text: "Create Account",
                                      onPressed: () async {
                                        if (cubit.signUpFormKey.currentState!
                                            .validate()) {
                                          cubit.userSignUp(
                                            email: cubit.emailController.text,
                                            password:
                                                cubit.passwordController.text,
                                            passwordConfirm: cubit
                                                .passwordConfirmController.text,
                                            userName:
                                                cubit.userNameController.text,
                                            phone: cubit.phoneController.text,
                                          );
                                        }
                                      },
                                    ),
                              SizedBox(height: 40.h),
                              const LoginRow(),
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
