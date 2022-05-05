import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Doctor%20details/componants/publications_part.dart';
import 'package:health_care_system/view/Doctor%20details/controller/doctor_details_cubit.dart';

import 'description_part.dart';
import 'education_part.dart';
import 'language_part.dart';

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
    return BlocProvider(
      create: (context) => DoctorDetailsCubit(),
      child: BlocConsumer<DoctorDetailsCubit, DoctorDetailsState>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = DoctorDetailsCubit.get(context);
          return Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: 10.r),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LanguagePart(
                      cubit: cubit, flags: flags, languages: languages),
                  EducationPart(education: education),
                  PublicationsPart(publications: publications),
                  DescriptionPart(description: description),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
