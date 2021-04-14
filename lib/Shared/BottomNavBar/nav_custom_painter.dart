import 'package:flutter/material.dart';

class NavCustomPainter extends CustomPainter {
  double loc;
  double s;
  Color color;

  NavCustomPainter(double startingLoc, int itemsLength, this.color) {
    final span = 1.0 / itemsLength;
    s = 0.12;
    loc = startingLoc + (span - s) / 2;
  }

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo((loc - 0.09) * size.width, 0)
      ..cubicTo(
        (loc + s * 0.3) * size.width,
        size.height * 0.60,
        loc * size.width,
        size.height * 0.8,
        (loc + s * 0.50) * size.width,
        size.height ,
      )
      ..cubicTo(
        (loc + s) * size.width,
        size.height * 0.8,
        (loc + s - s * 0.3) * size.width,
        size.height * 0.5,
        (loc + s + 0.09) * size.width,
        0,
      )
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return this != oldDelegate;
  }
}
