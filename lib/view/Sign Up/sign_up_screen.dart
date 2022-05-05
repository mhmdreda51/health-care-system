import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Sign%20Up/controller/sign_up_cubit.dart';

import '../../componants/auth_background.dart';
import '../../widgets/main_button.dart';
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
          // TODO: implement listener
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
                              MainButton(
                                onPressed: () {},
                                height: 55,
                                width: 266,
                                borderRadius: 21,
                                text: "Create Account",
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
