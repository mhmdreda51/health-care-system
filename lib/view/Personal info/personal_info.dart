import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_care_system/core/router/router.dart';
import 'package:health_care_system/view/Personal%20info/controller/personal_info_cubit.dart';

import '../../constants/app_colors.dart';
import '../../core/cacheHelper/cache_helper.dart';
import 'Componants/user_Info_form.dart';
import 'Componants/user_profile_image.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonalInfoCubit(),
      child: BlocConsumer<PersonalInfoCubit, PersonalInfoState>(
        bloc: PersonalInfoCubit(),
        listener: (context, state) {
          if (state is UserDetailsUpdateSuccessState) {
            if (state.userModel.status == 1) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("user_details.info_updated"),
                  backgroundColor: Colors.green,
                ),
              );
            }
          }
          if (state is UserPasswordUpdateSuccessState) {
            if (state.updatePasswordModel.status == 1) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("change_password.password_update_success"),
                  backgroundColor: Colors.green,
                ),
              );
              MagicRouter.pop();
            } else if (state.updatePasswordModel.status! == 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.updatePasswordModel.message.toString()),
                  backgroundColor: Colors.red,
                ),
              );
            } else {
              Fluttertoast.showToast(msg: "change_password.some_error");
            }
          }
        },
        builder: (context, state) {
          final cubit = PersonalInfoCubit.get(context);
          cubit.userNameController.text =
              CacheHelper.getUserInfo!.data.user.userName.toString();
          cubit.emailController.text =
              CacheHelper.getUserInfo!.data.user.email.toString();
          // cubit.phoneController.text =
          //     CacheHelper.getUserInfo!.data.user.phone.toString();
          cubit.addressController.text = cubit.myLocation;

          return Scaffold(
            appBar: appBar(),
            backgroundColor: Colors.grey[200],
            body: RefreshIndicator(
              onRefresh: () async {
                await cubit.refreshUserData();
              },
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserProfileImage(cubit: cubit),
                      UserDetailsForm(cubit: cubit),
                    ],
                  ),
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
      'Personal info',
      style: TextStyle(
        color: AppColors.introTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
