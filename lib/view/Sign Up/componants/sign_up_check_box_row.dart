import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../controller/sign_up_cubit.dart';

class SignUpCheckBoxRow extends StatelessWidget {
  const SignUpCheckBoxRow({Key? key, required this.cubit}) : super(key: key);
  final SignUpCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 100, left: 20),
      child: Row(
        children: [
          Checkbox(
            value: cubit.checkBoxValue,
            onChanged: cubit.checkBoxOnChange,
            activeColor: AppColors.blueWhite,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          AppText(
            text: "I agree with Terms and Condition",
            size: 12,
            color: Colors.black.withOpacity(.8),
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
