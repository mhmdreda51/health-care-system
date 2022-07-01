import 'package:flutter/material.dart';
import 'package:health_care_system/view/Covid%2019/Model/covid19_model.dart';

class CountryItem extends StatelessWidget {
  CountryItem({Key? key, required this.n}) : super(key: key);
  Country n;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(18),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 3,
              blurRadius: 5,
              offset: const Offset(0, 0),
            ),
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(n.country)),
          Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(n.totalRecovered.toString()))),
          Expanded(
              child: Align(
            alignment: Alignment.center,
            child: Text(n.totalConfirmed.toString()),
          )),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: Text(n.totalDeaths.toString()),
          ))
        ],
      ),
    );
  }
}
