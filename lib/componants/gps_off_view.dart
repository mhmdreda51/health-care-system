import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:health_care_system/view/Splash%20Screen/splash_screen.dart';

import '../core/router/router.dart';

class GPSOff extends StatelessWidget {
  const GPSOff({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tern Gps',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      MagicRouter.navigateAndPopAll(SplashScreen());
                    },
                    child: Text(
                      'retry',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  const SizedBox(width: 22),
                  OutlinedButton(
                    onPressed: () async {
                      await Geolocator.openLocationSettings();
                    },
                    child: Text(
                      'turn gps button',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
