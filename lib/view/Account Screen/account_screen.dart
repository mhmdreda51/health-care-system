import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Account%20Screen/Controller/account_cubit.dart';

import '../../core/cacheHelper/cache_helper.dart';
import '../../core/router/router.dart';
import '../Login/login_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountCubit(),
      child: BlocConsumer<AccountCubit, AccountState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = AccountCubit.get(context);

          return SafeArea(
            child: Scaffold(
              backgroundColor: Colors.grey[200],
              body: Column(
                children: [
                  Center(
                    child: MaterialButton(
                      color: Colors.blue,
                      onPressed: () {
                        CacheHelper.signOut();
                        MagicRouter.navigateAndPopAll(const LoginScreen());
                      },
                      child: Text("Log Out"),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
