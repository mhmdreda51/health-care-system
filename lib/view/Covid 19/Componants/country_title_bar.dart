import 'package:flutter/material.dart';

class CountryTitleBar extends StatelessWidget {
  const CountryTitleBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height * 0.07,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: const Color(0xff313131),
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
        children: const [
          Expanded(
              child: Text(
            "Country",
            style: TextStyle(color: Colors.white),
          )),
          Expanded(
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Recover",
                    style: TextStyle(color: Colors.white),
                  ))),
          Expanded(
              child: Align(
            alignment: Alignment.center,
            child: Text(
              "confirmed",
              style: TextStyle(color: Colors.white),
            ),
          )),
          Expanded(
              child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Death",
              style: TextStyle(color: Colors.white),
            ),
          ))
        ],
      ),
    );
  }
}
