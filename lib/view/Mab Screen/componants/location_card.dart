import 'package:flutter/material.dart';
import 'package:health_care_system/view/Location%20Screen/select_location_screen.dart';

import '../../../core/router/router.dart';
import '../../../widgets/main_button.dart';

class LocationButton extends StatelessWidget {
  const LocationButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 40),
        child: MainButton(
          text: "Confirm",
          borderRadius: 10,
          width: double.infinity,
          height: 45,
          onPressed: () => MagicRouter.navigateTo(SelectLocationScreen()),
        ),
      ),
    );
  }
}
