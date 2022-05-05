import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/view/Doctor%20details/controller/doctor_details_cubit.dart';
import 'package:health_care_system/widgets/app_devider.dart';
import 'package:health_care_system/widgets/app_text.dart';

import '../../../widgets/app_text_form_field.dart';
import '../../../widgets/main_button.dart';
import 'feed_back_i_doctor_card.dart';

class AddFeedBack extends StatelessWidget {
  const AddFeedBack({
    Key? key,
    required this.category,
    required this.name,
    required this.location,
    required this.image,
    required this.cubit,
  }) : super(key: key);
  final String category;
  final String name;
  final String location;
  final String image;
  final DoctorDetailsCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.3,
      width: double.infinity,
      color: Colors.grey[200]!,
      padding: const EdgeInsets.only(top: 10, left: 5),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: AppText(
                text: "Leave your feedback",
                size: 16,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: FeedBackIDoctorCard(
                image: image,
                location: location,
                category: category,
                name: name,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: AppDivider(),
            ),
            Center(
              child: RatingBar.builder(
                minRating: 1,
                maxRating: 5.0,
                initialRating: cubit.rating!,
                itemSize: 38.0,
                allowHalfRating: true,
                ignoreGestures: true,
                direction: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, _) =>
                    const Icon(Icons.star, color: AppColors.starColor),
                onRatingUpdate: (value) {
                  cubit.ratingOnChange(rate: value);
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15, right: 15),
              child: AppDivider(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: AppTextFormField(
                maxLines: 4,
                icon: Icons.search,
                hintText: "Write your feedback",
                controller: cubit.feedback,
                iconColor: Colors.transparent,
                validator: (value) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
              child: MainButton(
                width: double.infinity,
                height: 40,
                text: "Add feedback",
                borderRadius: 5,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
