import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_care_system/view/Change%20Password/Controller/change_password_cubit.dart';

import '../../componants/loading_widget.dart';
import '../../core/router/router.dart';
import '../../widgets/AccountItemAppBar.dart';
import '../../widgets/main_button.dart';
import 'Componants/confirm_new_password_text_field.dart';
import 'Componants/new_password_text_field.dart';
import 'Componants/old_password_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangePasswordCubit(),
      child: BlocConsumer<ChangePasswordCubit, ChangePasswordState>(
        listener: (context, state) {
          if (state is UserPasswordUpdateSuccessState) {
            if (state.changePasswordModel.status == 0) {
              Fluttertoast.showToast(msg: "change password success");
              MagicRouter.pop();
            } else if (state.changePasswordModel.status == 1) {
              Fluttertoast.showToast(
                msg: state.changePasswordModel.message.toString(),
              );
            } else {
              Fluttertoast.showToast(msg: "change password error");
            }
          } else if (state is UserPasswordUpdateErrorState) {
            Fluttertoast.showToast(msg: state.error);
          }
        },
        builder: (context, state) {
          final cubit = ChangePasswordCubit.get(context);

          return Scaffold(
            appBar: AccountItemAppBar(title: "Change Password"),
            backgroundColor: Colors.grey[200],
            body: Form(
              key: cubit.passwordFormKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    OldPasswordTextField(
                      hintText: "Enter your old password",
                      controller: cubit.oldPasswordController,
                      obscureText: cubit.isOldPassword,
                      onPressed: cubit.changeOldPasswordVisibility,
                      icon: cubit.oldPasswordSuffix,
                      onChanged: (value) {},
                    ),
                    SizedBox(height: 20),
                    NewPasswordTextField(
                      hintText: "Enter your new password",
                      controller: cubit.newPasswordController,
                      onChanged: (value) {},
                      obscureText: cubit.isPassword,
                      onPressed: cubit.changePasswordVisibility,
                      icon: cubit.passwordSuffix,
                    ),
                    SizedBox(height: 20),
                    ConfirmNewPasswordTextField(
                      hintText: "confirm new password",
                      controller: cubit.confirmPasswordController,
                      onChanged: (value) {},
                      obscureText: cubit.isPasswordConfirm,
                      onPressed: cubit.changePasswordConfirmVisibility,
                      icon: cubit.passwordConfirmSuffix,
                    ),
                    SizedBox(height: 40),
                    state is UserPasswordUpdateLoadingState
                        ? const LoadingWidget()
                        : MainButton(
                            height: 43,
                            width: 164,
                            text: "Save",
                            borderRadius: 13,
                            onPressed: () {
                              if (cubit.newPasswordController.value.text !=
                                  cubit.confirmPasswordController.value.text) {
                                Fluttertoast.showToast(
                                    msg: "Your Password Not Match");
                              } else if (cubit.passwordFormKey.currentState!
                                  .validate()) {
                                cubit.updateUserPassword(
                                  oldPassword: cubit.oldPasswordController.text,
                                  newPassword: cubit.newPasswordController.text,
                                  confirmNewPassword:
                                      cubit.confirmPasswordController.text,
                                );
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
