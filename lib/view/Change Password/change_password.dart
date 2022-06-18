import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../componants/loading_widget.dart';
import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import '../Personal info/controller/personal_info_cubit.dart';
import 'Componants/confirm_new_password_text_field.dart';
import 'Componants/new_password_text_field.dart';
import 'Componants/old_password_text_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonalInfoCubit(),
      child: BlocConsumer<PersonalInfoCubit, PersonalInfoState>(
        listener: (context, state) {
          if (state is UserPasswordUpdateSuccessState) {
            if (state.updatePasswordModel.status == 1) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("change_password.password_update_success"),
                  backgroundColor: Colors.green,
                ),
              );
              MagicRouter.pop();
            } else if (state.updatePasswordModel.status! == 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.updatePasswordModel.message.toString()),
                  backgroundColor: Colors.red,
                ),
              );
            } else {
              Fluttertoast.showToast(msg: "change_password.some_error");
            }
          }
        },
        builder: (context, state) {
          final cubit = PersonalInfoCubit.get(context);

          return Scaffold(
            appBar: appBar(),
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
                                    oldPassword:
                                        cubit.oldPasswordController.text,
                                    newPassword:
                                        cubit.newPasswordController.text,
                                    confirmNewPassword:
                                        cubit.confirmPasswordController.text);
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

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: SizedBox(),
    actions: [
      IconButton(
        icon: Icon(
          Icons.arrow_forward_ios,
        ),
        color: AppColors.introTextColor,
        onPressed: () => MagicRouter.pop(),
      )
    ],
    title: Text(
      'Change Password',
      style: TextStyle(
        color: AppColors.introTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
