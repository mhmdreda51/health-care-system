import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Location%20Screen/select_location_screen.dart';
import 'package:health_care_system/view/Settings/Controller/settings_cubit.dart';

import '../../constants/app_colors.dart';
import '../../core/router/router.dart';
import '../Account Screen/Widgets/AccountMenuWidget.dart';
import '../Change Password/change_password.dart';
import 'componants/notification_row.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SettingsCubit(),
      child: BlocBuilder<SettingsCubit, SettingsState>(
        builder: (context, state) {
          final cubit = SettingsCubit.get(context);
          // if (context.locale.languageCode == 'ar') {
          //   cubit.langDropdownValue = 'العربية';
          // }
          return Scaffold(
            appBar: appBar(),
            backgroundColor: Colors.grey[200],
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                AccountMenuWidget(
                  onTap: () => MagicRouter.navigateTo(ChangePasswordScreen()),
                  color: Colors.transparent,
                  icon: Icons.lock,
                  text: "Change your password",
                ),
                SizedBox(height: 10),
                AccountMenuWidget(
                  onTap: () => MagicRouter.navigateTo(SelectLocationScreen()),
                  color: Colors.transparent,
                  icon: Icons.location_on_outlined,
                  text: "Update your Location",
                ),
                SizedBox(height: 10),

                NotificationRow(
                    value: cubit.notificationToggle,
                    onChanged: (value) =>
                        cubit.changeNotificationToggle(value: value)),
                // SettingsRow(
                //   text: "settings.lang".tr(),
                //   hint: context.locale.languageCode == 'en'
                //       ? 'English'
                //       : 'العربية',
                //   list: cubit.langList,
                //   value: cubit.langDropdownValue,
                //   onChanged: (newValue) {
                //     cubit.changeLangDropDown(value: newValue!);
                //     if (newValue == 'العربية') {
                //       context.setLocale(const Locale('ar', 'EG'));
                //     } else if (newValue == 'English') {
                //       context.setLocale(const Locale('en', 'US'));
                //     }
                //   },
                // ),
              ],
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
      'Settings',
      style: TextStyle(
        color: AppColors.introTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
