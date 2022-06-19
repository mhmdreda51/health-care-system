import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../widgets/AccountItemAppBar.dart';
import '../Personal info/Componants/user_form_field.dart';
import 'Componants/confirmation_code_page.dart';
import 'Controller/forget_password_cubit.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordCubit(),
      child: BlocBuilder<ForgetPasswordCubit, ForgetPasswordState>(
        builder: (context, state) {
          final cubit = ForgetPasswordCubit.get(context);

          return Scaffold(
            appBar: AccountItemAppBar(title: "Forgotten password"),
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: cubit.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20),
                    UserFormField(
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
                    SizedBox(height: 40),
                    MainButton(
                      height: 50,
                      width: double.infinity,
                      text: "Reset your password",
                      borderRadius: 10,
                      onPressed: () async {
                        if (cubit.formKey.currentState!.validate()) {
                          cubit.showDialog(
                              ConfirmationCodePage(cubit: cubit), context);
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
