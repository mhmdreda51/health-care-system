import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/constants/app_colors.dart';

import '../../../componants/loading_widget.dart';
import '../controller/personal_info_cubit.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({
    Key? key,
    required this.cubit,
  }) : super(key: key);
  final PersonalInfoCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<PersonalInfoCubit, PersonalInfoState>(
      listener: (context, state) {
        // if (state is UploadUserImageSuccessState) {
        //   if (state.imageUpdatedModel.status == 1) {
        //     ScaffoldMessenger.of(context).showSnackBar(
        //       SnackBar(
        //         content: Text("Image updated Successfully."),
        //         backgroundColor: Colors.green,
        //       ),
        //     );
        //   }
        // }
      },
      builder: (context, state) {
        return Stack(
          fit: StackFit.loose,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 90.0,
                width: 90.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  // image: DecorationImage(
                  //   fit: BoxFit.cover,
                  //   image: NetworkImage(
                  //     CacheHelper.getUserInfo!.data.image!,
                  //   ),
                  // ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              left: 80.0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300, shape: BoxShape.circle),
                child: IconButton(
                    onPressed: () async {
                      final image = await cubit.pickImageFromGallery();
                      // await cubit.uploadUserImage(path: image);
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.camera,
                      color: AppColors.deepBlue,
                      size: 16.0,
                    )),
              ),
            ),
            state is UploadUserImageLoadingState
                ? const Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Center(
                      child: LoadingWidget(radius: 18),
                    ),
                  )
                : const SizedBox(),
          ],
        );
      },
    );
  }
}
