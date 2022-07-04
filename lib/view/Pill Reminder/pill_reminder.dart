import 'package:flutter/material.dart';
import 'package:health_care_system/widgets/services_header.dart';

import 'Componants/no_pill_widget.dart';

class PillReminder extends StatelessWidget {
  const PillReminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ServicesHeader(
              height: 135,
              text: "PillReminder",
            ),
            NoPillWidget(),
          ],
        ),
      ),
    );
  }
}
