import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:health_care_system/view/Doctor%20details/controller/doctor_details_cubit.dart';

import '../../../widgets/app_devider.dart';
import '../../../widgets/main_button.dart';
import 'add_feed_back.dart';
import 'feed_back_item_card.dart';

class FeedbacksSection extends StatelessWidget {
  const FeedbacksSection(
      {Key? key,
      required this.category,
      required this.name,
      required this.location,
      required this.image})
      : super(key: key);
  final String category;
  final String name;
  final String location;
  final String image;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DoctorDetailsCubit(),
      child: BlocConsumer<DoctorDetailsCubit, DoctorDetailsState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        builder: (context, state) {
          final cubit = DoctorDetailsCubit.get(context);
          return SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 1.9,
                    width: double.infinity,
                    child: ListView.separated(
                      itemCount: 100,
                      separatorBuilder: (context, index) {
                        return const AppDivider();
                      },
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: const FeedBackItemCard(),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15.h),
                  MainButton(
                    width: 248,
                    height: 40,
                    text: "Add feedback",
                    borderRadius: 5,
                    onPressed: () => cubit.showDialog(
                      AddFeedBack(
                        image: image,
                        location: location,
                        category: category,
                        name: name,
                        cubit: cubit,
                      ),
                      context,
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
