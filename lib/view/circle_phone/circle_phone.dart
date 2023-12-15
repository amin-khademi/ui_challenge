

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/circle_phone/passcode/passcode_digit.dart';
// import 'package:flutter_application_1/circle_phone/passcode/passcode_digit.dart';
import 'package:flutter_application_1/view/circle_phone/rotary_dial/rotary_dial_input.dart';
import 'package:flutter_application_1/view/circle_phone/widgets/input_mode_button.dart';
import 'package:flutter_application_1/view/circle_phone/passcode/pass_code_input.dart';

class CirclePhone extends StatefulWidget {
  const CirclePhone({super.key, required this.expectedCode});
  final String expectedCode;

  @override
  State<CirclePhone> createState() => _CirclePhoneState();
}

class _CirclePhoneState extends State<CirclePhone> {
  late final List<PasscodeDigits> _passcodeDigitValues;
  var _simpleInputMode = false;
  void _onModeChanged() => setState(() {
        _simpleInputMode = !_simpleInputMode;
      });

  @override
  void initState() {
    super.initState();
    _passcodeDigitValues = List.generate(
        widget.expectedCode.length,
        (index) => PasscodeDigits(
            backGroundColor: Colors.white, fontColor: Colors.white),
        growable: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 48, 16, 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              "Enter \nPassword",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 30),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: PassCodeDigit(
                    passcodeDigiValues: _passcodeDigitValues,
                    simpleInputMode: _simpleInputMode)),
            const SizedBox(
              height: 150,
            ),
            Expanded(
                child: _simpleInputMode
                    ? const PassCodeInput()
                    : const RotaryDialInput()),
            Align(
              alignment: Alignment.bottomRight,
              child: InputModeButton(
                  simpleInput: _simpleInputMode, onModeChanged: _onModeChanged),
            ),
          ],
        ),
      )),
    );
  }
}
