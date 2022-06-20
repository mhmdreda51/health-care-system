import 'package:flutter/material.dart';

import '../Widgets/dialog_header.dart';

class TypeOfRecord extends StatelessWidget {
  const TypeOfRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DialogHeader(
          icon: Icons.medication_outlined,
          title: "Type of record",
        ),
      ],
    );
  }
}
