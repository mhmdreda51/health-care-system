import 'package:flutter/material.dart';
import 'package:health_care_system/view/Personal%20info/Componants/user_form_field.dart';
import 'package:health_care_system/view/Personal%20info/controller/personal_info_cubit.dart';

class UserDetailsForm extends StatelessWidget {
  const UserDetailsForm({Key? key, required this.cubit}) : super(key: key);
  final PersonalInfoCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 35),
        UserFormField(
          height: 60,
          controller: cubit.userNameController,
          validator: (value) {
            if (value!.isEmpty) {
              return "Username must not be empty";
            } else {
              return null;
            }
          },
          hint: "User Name",
        ),
        SizedBox(height: 20),
        UserFormField(
          height: 60,
          controller: cubit.emailController,
          validator: (value) {
            if (value!.isEmpty) {
              return "email must not be empty";
            } else if (!value.contains('@')) {
              return "please enter a valid email";
            } else {
              return null;
            }
          },
          hint: "Email Address",
        ),
        SizedBox(height: 20),
        UserFormField(
          height: 60,
          controller: cubit.phoneController,
          validator: (value) {
            if (value!.isEmpty) {
              return "phone must not be empty";
            } else if (value.length != 11) {
              return "phone number must be 11 digits";
            } else {
              return null;
            }
          },
          hint: "phone number",
        ),
        SizedBox(height: 40),
      ],
    );
  }
}
