import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../../core/router/router.dart';
import '../../../widgets/main_button.dart';
import '../../Personal info/Componants/user_form_field.dart';
import '../../Reset Password/reset_password.dart';
import '../Controller/forget_password_cubit.dart';

class ConfirmationCodePage extends StatelessWidget {
  const ConfirmationCodePage({Key? key, required this.cubit}) : super(key: key);
  final ForgetPasswordCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: cubit.confirmationCodeFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppText(
                text: "Confirmation Code",
                size: 18,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 20),
              UserFormField(
                height: 60,
                controller: cubit.ConfirmationCodeController,
                validator: (value) {},
                hint: "Confirmation Code",
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  children: [
                    AppText(
                      text: "Dont you receive the Code ? ",
                      size: 14,
                      color: AppColors.introTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(width: 5),
                    AppText(
                      text: "Resend Code",
                      size: 14,
                      color: AppColors.blueWhite,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              MainButton(
                height: 45,
                width: double.infinity,
                text: "Confirm",
                borderRadius: 10,
                onPressed: () {
                  if (cubit.confirmationCodeFormKey.currentState!.validate()) {
                    MagicRouter.navigateTo(const ResetPassword());
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
