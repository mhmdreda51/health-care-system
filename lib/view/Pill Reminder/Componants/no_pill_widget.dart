import 'package:flutter/material.dart';
import 'package:health_care_system/view/Pill%20Reminder/Componants/pill_reminder_form.dart';

import '../../../constants/app_colors.dart';
import '../../../core/router/router.dart';
import '../../../widgets/app_text.dart';
import '../../../widgets/main_button.dart';

class NoPillWidget extends StatelessWidget {
  const NoPillWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            width: double.infinity,
            height: 300,
            child: Image.asset("assets/images/clock.png"),
          ),
        ),
        AppText(
          text: "You have no reminders.",
          size: 20,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 15),
        AppText(
          text: "Set a reminder for your medicines or something else",
          size: 14,
          color: AppColors.introTextColor,
          fontWeight: FontWeight.normal,
        ),
        SizedBox(height: 100),
        MainButton(
          height: 30,
          width: 205,
          text: "ADD A REMINDER",
          borderRadius: 16,
          onPressed: () => MagicRouter.navigateTo(PillReminderForm()),
        )
      ],
    );
  }
}
