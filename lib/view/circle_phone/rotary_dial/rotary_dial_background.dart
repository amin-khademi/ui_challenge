import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/circle_phone/constants/constants.dart';
import 'package:flutter_application_1/view/circle_phone/utils.dart';
import 'dart:math' as math;

class RotaryDialBackGroungpainter extends CustomPainter {
  const RotaryDialBackGroungpainter();

  @override
  bool shouldRepaint(RotaryDialBackGroungpainter oldDelegate) => false;

  @override
  void paint(Canvas canvas, Size size) {
    const ringWidth = Constants.rotaryRingWidth;
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = ringWidth
      ..style = PaintingStyle.stroke;

    canvas.drawArc(
        Rect.fromCircle(
            center: size.centerOffset, radius: size.width / 2 - ringWidth / 2),
        0,
        math.pi * 2.0,
        false,
        paint);
  }
}
