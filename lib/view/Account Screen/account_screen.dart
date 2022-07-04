import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Account%20Screen/Controller/account_cubit.dart';

import '../../constants/app_colors.dart';
import 'Componants/AccountContant.dart';
import 'Componants/account_header.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountCubit(),
      child: BlocConsumer<AccountCubit, AccountState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = AccountCubit.get(context);

          return SafeArea(
            child: Scaffold(
              appBar: appBar(),
              backgroundColor: Colors.grey[200],
              body: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AccountHeader(cubit: cubit),
                    AccountContant(cubit: cubit),
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

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: SizedBox(),
    title: Text(
      'Account',
      style: TextStyle(
        color: AppColors.introTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
