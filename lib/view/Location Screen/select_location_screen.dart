import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:health_care_system/view/Navigation%20Screen/navigation_screen.dart';
import 'package:health_care_system/view/Sign%20Up/controller/sign_up_cubit.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../componants/auth_logo.dart';
import '../../componants/loading_widget.dart';
import '../../constants/app_colors.dart';
import '../../core/cacheHelper/cache_helper.dart';
import '../../core/router/router.dart';
import '../../widgets/dialog_loading.dart';
import '../../widgets/main_button.dart';

class SelectLocationScreen extends StatelessWidget {
  const SelectLocationScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit()..getCurrentLocation(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          if (state is LocationLoading) {
            loadingDialog(context);
          }
          if (state is GetMyAddressNameSuccess) {
            Fluttertoast.showToast(msg: "Getting Address Name Success");
          } else if (state is GetMyAddressNameLoading) {
            loadingDialog(context);
          }
          if (state is PostLocationSuccessState) {
            Fluttertoast.showToast(msg: "Send Location successfully");
            MagicRouter.navigateTo(NavigationScreen());
          } else if (state is PostLocationLErrorState) {
            Fluttertoast.showToast(msg: state.error);
          }
        },
        builder: (context, state) {
          final cubit = SignUpCubit.get(context);

          return (Scaffold(
            backgroundColor: AppColors.loginBackGround,
            body: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: Column(
                  children: [
                    const AuthLogo(),
                    const SizedBox(
                      height: 12,
                    ),
                    const AppText(
                      text: "Health care",
                      size: 20,
                      color: AppColors.blueWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 42,
                    ),
                    const AppText(
                      text: "Location",
                      size: 24,
                      color: AppColors.blueWhite,
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const AppText(
                      text: "Please enter your location",
                      size: 14,
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
                    const SizedBox(
                      height: 38,
                    ),
                    GestureDetector(
                      onTap: () => cubit.getMyAddressName(),
                      child: Container(
                        height: 43,
                        width: double.infinity,
                        padding: const EdgeInsets.only(
                          top: 12,
                          left: 16,
                          bottom: 12,
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: AppColors.loginBackGround,
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 3),
                              ),
                            ]),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: AppColors.blueWhite,
                              size: 17,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            AppText(
                              text: state is LocationLoading ||
                                      state is LocationSuccess
                                  ? "Your Location"
                                  : cubit.myLocation,
                              size: 13,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    state is PostLocationLoadingState
                        ? const LoadingWidget()
                        : MainButton(
                            onPressed: () {
                              cubit.postUserLocation(
                                email: CacheHelper.userEmail,
                                lat: cubit.position!.latitude.toString(),
                                log: cubit.position!.longitude.toString(),
                              );
                            },
                            height: 43,
                            borderRadius: 10,
                            width: double.infinity,
                            text: "Continue",
                          ),
                  ],
                ),
              ),
            ),
          ));
        },
      ),
    );
  }
}
