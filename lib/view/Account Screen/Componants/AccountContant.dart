import 'package:flutter/material.dart';
import 'package:health_care_system/view/Account%20Screen/Controller/account_cubit.dart';

import '../../../core/router/router.dart';
import '../../Help/help_screen.dart';
import '../../Medical Info/medical_info.dart';
import '../../Personal info/personal_info.dart';
import '../../Privacy/privacy_and_security.dart';
import '../../Settings/settings_screen.dart';
import '../Widgets/AccountMenuWidget.dart';

class AccountContant extends StatelessWidget {
  const AccountContant({Key? key, required this.cubit}) : super(key: key);
  final AccountCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            AccountMenuWidget(
              text: 'Personal info',
              icon: Icons.person,
              color: Colors.white,
              onTap: () => MagicRouter.navigateTo(PersonalInfo()),
            ),
            SizedBox(height: 2),
            AccountMenuWidget(
              text: 'Medical info',
              icon: Icons.medication,
              color: Colors.white,
              onTap: () => MagicRouter.navigateTo(MedicalInfo()),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Column(
          children: [
            AccountMenuWidget(
              text: 'Settings',
              icon: Icons.settings,
              color: Colors.white,
              onTap: () => MagicRouter.navigateTo(SettingsScreen()),
            ),
            SizedBox(height: 2),
            AccountMenuWidget(
              text: 'Help & Support',
              icon: Icons.help_outline_outlined,
              color: Colors.white,
              onTap: () => MagicRouter.navigateTo(HelpScreen()),
            ),
            SizedBox(height: 2),
            AccountMenuWidget(
              text: 'Privacy & Security',
              icon: Icons.privacy_tip_outlined,
              color: Colors.white,
              onTap: () => MagicRouter.navigateTo(PrivacyAndSecurity()),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        AccountMenuWidget(
          text: 'log out',
          icon: Icons.logout,
          color: Colors.white,
          onTap: () => cubit.signOut(),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
