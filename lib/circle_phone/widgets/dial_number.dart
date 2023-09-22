import 'package:flutter/material.dart';
import 'package:flutter_application_1/circle_phone/constants/constants.dart';

class DialNumber extends StatelessWidget {
  const DialNumber({super.key, required this.number});
  final int number;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: Constants.dialNumberRadius * 2,
        width: Constants.dialNumberRadius * 2,
        alignment: Alignment.center,
        decoration: const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
        child: Text(
          "$number",
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
        ));
  }
}
