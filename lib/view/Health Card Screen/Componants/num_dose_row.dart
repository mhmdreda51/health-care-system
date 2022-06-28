import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';
import '../../../widgets/app_text.dart';
import '../Widgets/health_card_dropDown.dart';

class NumDoseRow extends StatefulWidget {
  const NumDoseRow({Key? key}) : super(key: key);

  @override
  State<NumDoseRow> createState() => _NumDoseRowState();
}

class _NumDoseRowState extends State<NumDoseRow> {
  List<String> numOfDose = ["1", "2"];
  String? dropdownInputValue;

  dropdownInputOnChanged({required String? value}) {
    setState(() {
      dropdownInputValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          AppText(
            text: "Num of dose",
            size: 15,
            color: AppColors.introTextColor,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(
            width: 75,
          ),
          Expanded(
            child: HealthCardDropDown(
              value: dropdownInputValue,
              itemsList: numOfDose,
              onChanged: (value) {
                dropdownInputOnChanged(value: value);
                // CacheHelper.cacheNumOfDose(numOfDose: dropdownInputValue!);
                // print(cubit.dropdownInputValue);
              },
            ),
          ),
        ],
      ),
    );
  }
}
