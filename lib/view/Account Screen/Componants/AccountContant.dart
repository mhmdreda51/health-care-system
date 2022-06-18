import 'package:flutter/material.dart';
import 'package:health_care_system/view/Account%20Screen/Controller/account_cubit.dart';

import '../../../core/router/router.dart';
import '../../Personal info/personal_info.dart';
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
              onTap: () => MagicRouter.navigateTo(PersonalInfo()),
            ),
            SizedBox(height: 2),
            AccountMenuWidget(
              text: 'Settings',
              onTap: () {},
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
              onTap: () {},
            ),
            SizedBox(height: 2),
            AccountMenuWidget(
              text: 'privacy policy',
              onTap: () {},
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        AccountMenuWidget(
          text: 'log out',
          onTap: () => cubit.signOut(),
        ),
        SizedBox(
          height: 30,
        )
      ],
    );
  }
}
