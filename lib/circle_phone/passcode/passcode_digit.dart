import 'package:flutter/material.dart';
import 'package:flutter_application_1/circle_phone/utils.dart';

const _passcodedigitPadding = 8.0;
const _passcodedigitSizeBig = 36.0;
const _passcodedigitSizeSmall = 24.0;
const _passcodedigitGapBig = 16.0;
const _passcodedigitGapSmall = 4.0;

class PasscodeDigits {
  final Color backGroundColor;
  final Color fontColor;
  final int? value;

  PasscodeDigits(
      {required this.backGroundColor, required this.fontColor, this.value});
}

class PassCodeDigit extends StatelessWidget {
  const PassCodeDigit(
      {super.key,
      required this.passcodeDigiValues,
      required this.simpleInputMode});
  final List<dynamic> passcodeDigiValues;
  final bool simpleInputMode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _passcodedigitSizeBig,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          for (var i = 0; i < passcodeDigiValues.length; i++)
            PasscodeDigitContainer(
                backGroundcolor: Colors.black,
                fontColor: Colors.white,
                digit: passcodeDigiValues[i].value,
                size: simpleInputMode
                    ? _passcodedigitSizeBig
                    : _passcodedigitGapSmall)
        ].addBetween(SizedBox(
          width:
              simpleInputMode ? _passcodedigitGapBig : _passcodedigitGapSmall,
        )),
      ),
    );
  }
}

class PasscodeDigitContainer extends StatelessWidget {
  const PasscodeDigitContainer(
      {super.key,
      required this.backGroundcolor,
      required this.fontColor,
      required this.digit,
      required this.size});

  final Color backGroundcolor;
  final Color fontColor;
  final int? digit;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _passcodedigitSizeBig,
      width: _passcodedigitSizeBig,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: Colors.black, shape: BoxShape.circle),
    );
  }
}
