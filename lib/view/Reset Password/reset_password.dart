import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_care_system/view/Home%20Screen/home_screen.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../core/router/router.dart';
import '../../widgets/AccountItemAppBar.dart';
import '../Change Password/Componants/confirm_new_password_text_field.dart';
import '../Change Password/Componants/new_password_text_field.dart';
import '../Forget Password/Controller/forget_password_cubit.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
        builder: (context, state) {
          final cubit = ForgetPasswordCubit.get(context);

          return Scaffold(
            appBar: AccountItemAppBar(title: "Reset password"),
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: EdgeInsets.only(top: 16, left: 20, right: 20),
              child: Form(
                key: cubit.resetPasswordFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    NewPasswordTextField(
                      hintText: "Enter your new password",
                      controller: cubit.passwordController,
                      onChanged: (value) {},
                      obscureText: cubit.isPassword,
                      onPressed: cubit.changePasswordVisibility,
                      icon: cubit.suffix,
                    ),
                    SizedBox(height: 20),
                    ConfirmNewPasswordTextField(
                      hintText: "confirm new password",
                      controller: cubit.confirmPasswordController,
                      onChanged: (value) {},
                      obscureText: cubit.isConfirmPassword,
                      onPressed: cubit.changeConfirmPasswordVisibility,
                      icon: cubit.suffixConfirm,
                    ),
                    SizedBox(height: 40),
                    MainButton(
                      height: 43,
                      width: double.infinity,
                      text: "Save",
                      borderRadius: 13,
                      onPressed: () async {
                        if (cubit.resetPasswordFormKey.currentState!.validate()) {
                          if (cubit.passwordController.value.text !=
                              cubit.confirmPasswordController.value.text) {
                            Fluttertoast.showToast(
                                msg: "Make sure the two passwords are the same");
                          } else {
                            MagicRouter.navigateAndPopAll(const HomeScreen());
                          }
                        }
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
