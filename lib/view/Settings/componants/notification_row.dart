import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../constants/app_colors.dart';

class NotificationRow extends StatelessWidget {
  final bool value;
  final Function onChanged;

  const NotificationRow({
    Key? key,
    required this.value,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: <Widget>[
          Icon(FontAwesomeIcons.bell, color: AppColors.blueWhite, size: 20),
          SizedBox(width: 25),
          Text(
            "Notifications",
            style: const TextStyle(
                fontSize: 15.0,
                color: AppColors.introTextColor,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 135),
          CupertinoSwitch(
            trackColor: AppColors.blueWhite.withOpacity(0.5),
            activeColor: AppColors.deepBlue,
            value: value,
            onChanged: (value) => onChanged(value),
          ),
        ],
      ),
    );
  }
}
