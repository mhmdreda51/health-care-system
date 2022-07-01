import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/view/Personal%20info/controller/personal_info_cubit.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../componants/loading_widget.dart';
import '../../core/cacheHelper/cache_helper.dart';
import '../../widgets/AccountItemAppBar.dart';
import 'Componants/user_Info_form.dart';
import 'Componants/user_profile_image.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonalInfoCubit(),
      child: BlocConsumer<PersonalInfoCubit, PersonalInfoState>(
        listener: (context, state) {
          if (state is UserDetailsUpdateSuccessState) {
            if (state.personalModel.status == 1) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("Info updated Successfully."),
                  backgroundColor: Colors.green,
                ),
              );
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
          return Scaffold(
            appBar: AccountItemAppBar(title: "Personal info"),
            backgroundColor: Colors.grey[200],
            body: Padding(
              padding: const EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Form(
                  key: cubit.formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserProfileImage(cubit: cubit),
                      UserDetailsForm(cubit: cubit),
                      state is UserDetailsUpdateLoadingState
                          ? const LoadingWidget()
                          : MainButton(
                              onPressed: () async {
                                if (cubit.formKey.currentState!.validate()) {
                                  await cubit.updateUser(
                                    username: cubit.userNameController.text,
                                    phone: cubit.phoneController.text,
                                    email: cubit.emailController.text,
                                  );
                                }
                              },
                              height: 43,
                              width: 164,
                              text: "Save",
                              borderRadius: 13,
                            ),
                      SizedBox(height: 20),
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
