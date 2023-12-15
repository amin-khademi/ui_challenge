import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/circle_phone/constants/constants.dart';
import 'package:flutter_application_1/view/circle_phone/utils.dart';
import 'dart:math' as math;

class RotaryDialforground extends CustomPainter {
  const RotaryDialforground(this.numberRadiusFromCenter);
  final double numberRadiusFromCenter;
  @override
  bool shouldRepaint(RotaryDialforground oldDelegate) =>
      oldDelegate.numberRadiusFromCenter != numberRadiusFromCenter;

  @override
  void paint(Canvas canvas, Size size) {
    const ringWidth = Constants.rotaryRingWidth;
    final paint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = ringWidth - Constants.rotaryRingPadding * 2
      ..style = PaintingStyle.stroke;

    canvas
    ..saveLayer(Rect.largest, paint)
    ..drawArc(
        Rect.fromCircle(
            center: size.centerOffset, radius: size.width / 2 - ringWidth / 2),
        Constants.firstDialNumberPosition,
        Constants.maxRotaryRingSweepangle,
        false,
        paint);

    for (int i = 0; i < 10; i++) {
      final offset = Offset.fromDirection(
          math.pi * (-30 - i * 30) / 180, numberRadiusFromCenter);
      canvas.drawCircle(size.centerOffset + offset, Constants.dialNumberRadius,
          Paint()..blendMode = BlendMode.clear);
    }
    canvas.drawCircle(size.centerOffset + Offset.fromDirection(math.pi/6,numberRadiusFromCenter),ringWidth/6,
          Paint()..color = Colors.white);
canvas.restore();
  }
  
}
