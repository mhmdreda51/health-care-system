import 'package:flutter/material.dart';
import 'package:health_care_system/constants/app_colors.dart';
import 'package:health_care_system/widgets/AccountItemAppBar.dart';
import 'package:health_care_system/widgets/app_text.dart';

import 'Componants/notification_item_card.dart';
import 'Model/NotificationModel.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountItemAppBar(title: "Notification"),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppText(
                text: "Today",
                size: 14,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: ListView.separated(
                  itemCount: notificationList.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    var item = notificationList[index];
                    return NotificationItemCard(
                      title: item.title,
                      disc: item.disc,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 10);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
