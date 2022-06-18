import 'package:flutter/material.dart';
import 'package:health_care_system/view/Personal%20info/Componants/user_form_field.dart';
import 'package:health_care_system/view/Personal%20info/controller/personal_info_cubit.dart';

import 'confirm_new_password_text_field.dart';
import 'new_password_text_field.dart';
import 'old_password_text_field.dart';

class UserDetailsForm extends StatelessWidget {
  const UserDetailsForm({Key? key, required this.cubit}) : super(key: key);
  final PersonalInfoCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: cubit.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 35),
          UserFormField(
            controller: cubit.userNameController,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter your User Name";
              } else {
                return null;
              }
            },
            hint: "User Name",
          ),
          SizedBox(height: 20),
          UserFormField(
            controller: cubit.emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return "Enter your Email Address";
              } else if (!value.contains('@')) {
                return "Enter your Email Address";
              } else {
                return null;
              }
            },
            hint: "Email Address",
          ),
          SizedBox(height: 20),
          UserFormField(
            controller: cubit.phoneController,
            validator: (value) {
              if (value!.isEmpty) {
                return "phone empty";
              } else if (value.length != 11) {
                return "phone valid";
              } else {
                return null;
              }
            },
            hint: "phone number",
          ),
          SizedBox(height: 20),
          Form(
            key: cubit.passwordFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                OldPasswordTextField(
                  hintText: "change_password.old_password",
                  controller: cubit.oldPasswordController,
                  onFieldSubmitted: (value) {
                    if (cubit.passwordFormKey.currentState!.validate()) {}
                  },
                  obscureText: cubit.isOldPassword,
                  onPressed: () => cubit.changeOldPasswordVisibility(),
                  icon: cubit.oldPasswordSuffix,
                ),
                SizedBox(height: 20),
                NewPasswordTextField(
                  hintText: "change_password.new_password",
                  controller: cubit.newPasswordController,
                  onFieldSubmitted: (value) {
                    if (cubit.passwordFormKey.currentState!.validate()) {}
                  },
                  obscureText: cubit.isNewPassword,
                  onPressed: () => cubit.changeNewPasswordVisibility(),
                  icon: cubit.newPasswordSuffix,
                ),
                SizedBox(height: 20),
                ConfirmNewPasswordTextField(
                    hintText: "change_password.confirm_new_password",
                    controller: cubit.confirmPasswordController,
                    onFieldSubmitted: (value) {
                      if (cubit.passwordFormKey.currentState!.validate()) {}
                    },
                    obscureText: cubit.isConfirmPassword,
                    onPressed: () => cubit.changeConfirmPasswordVisibility(),
                    icon: cubit.confirmPasswordSuffix),
              ],
            ),
          )
        ],
      ),
    );
  }
}
