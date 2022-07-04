import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/view/Home%20Screen/home_screen.dart';
import 'package:health_care_system/view/Pill%20Reminder/Componants/take_image.dart';
import 'package:health_care_system/view/Pill%20Reminder/Componants/timings_widget.dart';
import 'package:health_care_system/view/Pill%20Reminder/Widgets/pill_textform.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../../widgets/AccountItemAppBar.dart';
import '../Controller/pill_reminder_cubit.dart';

class PillReminderForm extends StatelessWidget {
  const PillReminderForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PillReminderCubit(),
      child: BlocConsumer<PillReminderCubit, PillReminderState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = PillReminderCubit.get(context);
          return Scaffold(
            appBar: AccountItemAppBar(title: "Pill reminder"),
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: const EdgeInsets.all(35.0),
              child: Form(
                key: cubit.FormKey,
                child: Column(
                  children: [
                    TakeImage(),
                    PillReminderTextForm(
                      label: "TITLE",
                      hint: "",
                      controller: cubit.titleController,
                      hasSuffixIcon: false,
                      fun: (value) {},
                    ),
                    SizedBox(height: 10),
                    PillReminderTextForm(
                      label: "TIMINGS",
                      hint: "",
                      controller: cubit.titleController,
                      fun: (value) {},
                      onTap: () => cubit.showDialog(TimingsWidget(), context),
                    ),
                    SizedBox(height: 10),
                    PillReminderTextForm(
                      label: "DAYS",
                      hint: "",
                      controller: cubit.titleController,
                      fun: (value) {},
                    ),
                    SizedBox(height: 10),
                    PillReminderTextForm(
                      label: "DURATION",
                      hint: "",
                      controller: cubit.titleController,
                      fun: (value) {},
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                        left: 25,
                        right: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MainButton(
                            onPressed: () {},
                            height: 30,
                            width: 100,
                            text: "SAVE",
                            borderRadius: 16,
                          ),
                          MainButton(
                            height: 30,
                            width: 100,
                            text: "CANCEL",
                            borderRadius: 16,
                            onPressed: () =>
                                MagicRouter.navigateTo(HomeScreen()),
                          ),
                        ],
                      ),
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
