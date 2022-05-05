import 'package:flutter/material.dart';

import 'address_part.dart';
import 'communication_part.dart';
import 'price_part.dart';
import 'work_time_part.dart';

class ClinicInfoSection extends StatelessWidget {
  const ClinicInfoSection({
    Key? key,
    required this.address,
    required this.workingTime,
    required this.priceFirsTime,
    required this.priceReturn,
    required this.numberPhone,
    required this.socialName,
    required this.gmail,
  }) : super(key: key);
  final String address;
  final String workingTime;
  final int priceFirsTime;
  final int priceReturn;
  final int numberPhone;
  final String socialName;
  final String gmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 10),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AddressPart(address: address),
            WorkTimePart(workingTime: workingTime),
            PricePart(priceFirsTime: priceFirsTime, priceReturn: priceReturn),
            CommunicationPart(
                numberPhone: numberPhone, gmail: gmail, socialName: socialName),
          ],
        ),
      ),
    );
  }
}
