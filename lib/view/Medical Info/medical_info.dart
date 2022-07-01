import 'package:flutter/material.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/blood_type.dart';
import 'package:health_care_system/view/Health%20Card%20Screen/Componants/corona_vaccine.dart';

import '../../core/router/router.dart';
import '../../widgets/AccountItemAppBar.dart';
import '../Account Screen/Widgets/AccountMenuWidget.dart';

class MedicalInfo extends StatelessWidget {
  const MedicalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AccountItemAppBar(title: "Medical Information"),
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AccountMenuWidget(
              color: Colors.white,
              text: "COVID-19 Vaccination",
              icon: Icons.coronavirus_outlined,
              onTap: () => MagicRouter.navigateTo(CoronaVaccine()),
            ),
            SizedBox(height: 10),
            AccountMenuWidget(
              color: Colors.white,
              text: "Blood Type",
              icon: Icons.bloodtype_outlined,
              onTap: () => MagicRouter.navigateTo(BloodType()),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
