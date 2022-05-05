import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../login cubit/login_controller_cubit.dart';

class CheckBoxRow extends StatelessWidget {
  const CheckBoxRow({Key? key, required this.cubit}) : super(key: key);
  final LoginControllerCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 180, left: 20),
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
            text: "Remember me!",
            size: 13,
            color: Colors.black.withOpacity(.8),
            fontWeight: FontWeight.bold,
          ),
        ],
      ),
    );
  }
}
