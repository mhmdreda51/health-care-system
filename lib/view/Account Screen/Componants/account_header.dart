import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../core/cacheHelper/cache_helper.dart';
import '../../Doctor details/widgets/empty_avatar.dart';
import '../../Doctor details/widgets/user_avatar.dart';
import '../Controller/account_cubit.dart';

class AccountHeader extends StatelessWidget {
  AccountHeader({Key? key, required this.cubit}) : super(key: key);
  final AccountCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: SizedBox(
            height: 70,
            width: 70,
            child:
                CacheHelper.isLogged ? const UserAvatar() : const EmptyAvatar(),
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            CacheHelper.isLogged ? CacheHelper.userName : "User Name",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.introTextColor,
            ),
          ),
          Text(
            CacheHelper.isLogged ? CacheHelper.userEmail : "Email Address",
            style: TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.bold,
              color: AppColors.introTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
