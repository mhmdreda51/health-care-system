import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/record_tybe_list_view.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Controller/health_card_cubit.dart';
import 'package:health_care_system/widgets/app_text.dart';
import 'package:health_care_system/widgets/main_button.dart';

import '../../../core/router/router.dart';
import '../../../widgets/AccountItemAppBar.dart';
import '../../Navigation Screen/navigation_screen.dart';
import '../../Personal info/Componants/user_form_field.dart';
import '../Widgets/record_screen_item.dart';

class MedicalRecords extends StatelessWidget {
  const MedicalRecords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HealthCardCubit()..getRecordType(),
      child: BlocConsumer<HealthCardCubit, HealthCardState>(
        listener: (context, state) {
          if (state is CreateRecordSuccess) {
            Fluttertoast.showToast(
              msg: "Create Record information successfully",
            );

            MagicRouter.navigateTo(
              NavigationScreen(
                currentIndex: 2,
              ),
            );
          }
        },
        builder: (context, state) {
          final cubit = HealthCardCubit.get(context);
          return Scaffold(
            appBar: AccountItemAppBar(title: "Medical Records"),
            backgroundColor: Colors.grey[200],
            body: state is GetRecordTypeLoading
                ? Center(
                    child: Center(
                      child: const CupertinoActivityIndicator(
                        radius: 16.0,
                        animating: true,
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: SingleChildScrollView(
                      child: Form(
                        key: cubit.recordFormKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppText(
                              text: "Type of record",
                              size: 20,
                              color: AppColors.introTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 20),
                            RecordTypeListView(cubit: cubit),
                            SizedBox(height: 20),
                            Stack(
                              fit: StackFit.loose,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    height: 75.0,
                                    width: 75.0,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.rectangle,
                                        color: Colors.grey,
                                        borderRadius: BorderRadius.circular(13),
                                        image: cubit.image != null
                                            ? DecorationImage(
                                                image: FileImage(cubit.image))
                                            : null),
                                  ),
                                ),
                                Positioned(
                                  bottom: 0.0,
                                  right: 0.0,
                                  left: 80.0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade300,
                                      shape: BoxShape.circle,
                                    ),
                                    child: IconButton(
                                        onPressed: cubit.pickImageFromGallery,
                                        icon: const FaIcon(
                                          FontAwesomeIcons.camera,
                                          color: AppColors.deepBlue,
                                          size: 16.0,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            AppText(
                              text: "Title",
                              size: 20,
                              color: AppColors.introTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 20),
                            UserFormField(
                              height: 40,
                              controller: cubit.recordTitle,
                              hint: "",
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter the text";
                                } else {
                                  return null;
                                }
                              },
                            ),
                            SizedBox(height: 20),
                            AppText(
                              text: "Date",
                              size: 20,
                              color: AppColors.introTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 20),
                            RecordScreenItem(
                              text: cubit.isRecordDatePicked == false
                                  ? ""
                                  : cubit.formatRecordDate(cubit.RecordDate),
                              onTap: () => cubit.selectRecordDate(context),
                            ),
                            SizedBox(height: 20),
                            AppText(
                              text: "Time",
                              size: 20,
                              color: AppColors.introTextColor,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(height: 20),
                            RecordScreenItem(
                              onTap: () => cubit.selectRecordTime(context),
                              text: cubit.isTimePicked == false
                                  ? ""
                                  : "${cubit.timeToPost}",
                            ),
                            SizedBox(height: 20),
                            state is CreateRecordLoading
                                ? Center(
                                    child: const CupertinoActivityIndicator(
                                      radius: 16.0,
                                      animating: true,
                                    ),
                                  )
                                : Padding(
                                    padding: const EdgeInsets.only(
                                      top: 40,
                                      left: 60,
                                      right: 60,
                                    ),
                                    child: MainButton(
                                      height: 40,
                                      width: double.infinity,
                                      text: "Done",
                                      borderRadius: 15,
                                      onPressed: () async {
                                        if (cubit.recordFormKey.currentState!
                                            .validate()) {
                                          print(cubit.image!.path);
                                          cubit.postRecord(
                                            title: cubit.recordTitle.text,
                                            cardDate:
                                                cubit.RecordDate.toString(),
                                            typeId: cubit.isRecordSelected,
                                            cardTime: cubit.timeToPost!,
                                          );
                                        }
                                      },
                                    ),
                                  ),
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
