import 'package:flutter/material.dart';

import '../Widgets/dialog_header.dart';

class BloodType extends StatelessWidget {
  const BloodType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DialogHeader(
          icon: Icons.bloodtype_outlined,
          title: "Blood type",
        ),
      ],
    );
  }
}
