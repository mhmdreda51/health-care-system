import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class LocationSearchBar extends StatelessWidget {
  const LocationSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 70, top: 12),
        child: SizedBox(
          width: 270,
          height: 45,
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              hintText: "Your Location",
              prefixIcon: Icon(
                Icons.location_on_outlined,
                color: AppColors.blueWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
