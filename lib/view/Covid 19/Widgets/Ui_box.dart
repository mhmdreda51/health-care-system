import 'package:flutter/material.dart';

class UIBox extends StatelessWidget {
  UIBox({
    Key? key,
    required this.text,
    required this.data,
    required this.color,
  }) : super(key: key);
  final String text;
  final String data;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
          Text(
            data,
            style: const TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
