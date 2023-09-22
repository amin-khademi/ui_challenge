import 'package:flutter/material.dart';

class InputModeButton extends StatelessWidget {
  const InputModeButton(
      {super.key, required this.simpleInput, required this.onModeChanged});
  final bool simpleInput;
  final VoidCallback onModeChanged;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onModeChanged,
        child: Text((simpleInput ? "Orginal" : "Simlify").toUpperCase(),style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),));
  }
}
