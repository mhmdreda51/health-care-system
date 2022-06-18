import 'package:flutter/material.dart';
import 'package:health_care_system/view/Account%20Screen/Controller/account_cubit.dart';

import '../../../core/router/router.dart';
import '../../Personal info/personal_info.dart';
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
              icon: Icons.settings,
              color: Colors.white,
              onTap: () => MagicRouter.navigateTo(PersonalInfo()),
            ),
            SizedBox(height: 2),
            AccountMenuWidget(
              text: 'Settings',
              icon: Icons.settings,
              color: Colors.white,
              onTap: () => MagicRouter.navigateTo(SettingsScreen()),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Column(
          children: [
            AccountMenuWidget(
              text: 'Support',
              icon: Icons.settings,
              color: Colors.white,
              onTap: () {},
            ),
            SizedBox(height: 2),
            AccountMenuWidget(
              text: 'privacy policy',
              icon: Icons.settings,
              color: Colors.white,
              onTap: () {},
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        AccountMenuWidget(
          text: 'log out',
          icon: Icons.settings,
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
