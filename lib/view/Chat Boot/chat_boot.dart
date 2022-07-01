import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';

class ChatBoot extends StatelessWidget {
  const ChatBoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [],
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.white,
    leading: SizedBox(),
    title: Text(
      'ChatBoot',
      style: TextStyle(
        color: AppColors.introTextColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
