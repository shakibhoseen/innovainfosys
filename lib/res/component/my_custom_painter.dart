import 'package:flutter/material.dart';

class MyCustomPainter extends CustomPainter {
  final color;

  MyCustomPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    double value = 20;
    Paint paint0 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.lineTo(0, size.height - 2 * value);
    path0.quadraticBezierTo(0, size.height, value, size.height - value);
    path0.lineTo(size.width - value, size.height - value);

    path0.quadraticBezierTo(
        size.width - value, size.height - value, size.width, size.height);

    path0.lineTo(size.width, 0);

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
