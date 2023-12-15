import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/circle_phone/constants/constants.dart';
import 'package:flutter_application_1/view/circle_phone/rotary_dial/rotary_dial_background.dart';
import 'package:flutter_application_1/view/circle_phone/rotary_dial/rotary_dial_forground.dart';
import 'package:flutter_application_1/view/circle_phone/widgets/dial_number.dart';

class RotaryDialInput extends StatelessWidget {
  const RotaryDialInput({super.key});

  @override
  Widget build(BuildContext context) {
    const inputValues = Constants.inputValues;
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxHeight;
        final size = Size(width, width);
        final dialNumberDistancerFromCenter = width / 2.4 -
            16.0 -
            Constants.rotaryRingPadding * 2 -
            Constants.dialNumberPadding;
        return Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              size: size,
              painter: const RotaryDialBackGroungpainter(),
            ),
            for (var i = 0; i < inputValues.length; i++)
              Transform.translate(
                offset: Offset.fromDirection(
                    (i + 1) * -math.pi / 6, dialNumberDistancerFromCenter),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: DialNumber(number: inputValues[i]),
                ),
              ),
            CustomPaint(
              size: size,
              painter: RotaryDialforground(dialNumberDistancerFromCenter),
            )
          ],
        );
      },
    );
  }
}
