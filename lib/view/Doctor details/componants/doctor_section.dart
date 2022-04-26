import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/Doctor%20details/controller/doctor_details_cubit.dart';
import 'package:health_care_system/widgets/app_text.dart';

class DoctorSection extends StatelessWidget {
  const DoctorSection({
    Key? key,
    required this.education,
    required this.publications,
    required this.description,
    required this.languages,
    required this.flags,
  }) : super(key: key);
  final List education;
  final List publications;
  final List description;
  final List<String> languages;
  final List<String> flags;

  @override
  Widget build(BuildContext context) {
    final educationList =
        education.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    final publicationsList =
        publications.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    final descriptionList =
        description.map((x) => "- $x\n").reduce((x, y) => "$x$y");
    return BlocConsumer<DoctorDetailsCubit, DoctorDetailsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final cubit = DoctorDetailsCubit.get(context);
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppText(
                text: "Languages",
                size: 14,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Column(
                    children: flags
                        .map((e) =>
                            Text(cubit.generateCountryFlag(countryCode: e)))
                        .toList(),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    children: languages
                        .map(
                          (e) => Row(
                            children: [
                              AppText(
                                text: e,
                                size: 13,
                                color: AppColors.introTextColor,
                                fontWeight: FontWeight.normal,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider(
                color: Colors.black38,
              ),
              const SizedBox(
                height: 10,
              ),
              const AppText(
                text: "Languages",
                size: 14,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 10,
              ),
              AppText(
                text: educationList,
                size: 13,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.normal,
              ),
              const Divider(
                color: Colors.black38,
              ),
              const SizedBox(
                height: 10,
              ),
              const AppText(
                text: "Publications",
                size: 14,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 10,
              ),
              AppText(
                text: publicationsList,
                size: 13,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.normal,
              ),
              const Divider(
                color: Colors.black38,
              ),
              const SizedBox(
                height: 10,
              ),
              const AppText(
                text: "Description",
                size: 14,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                height: 10,
              ),
              AppText(
                text: descriptionList,
                size: 13,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.normal,
              ),
            ],
          ),
        );
      },
    );
  }
}
