import 'package:flutter/material.dart';

class MyCustomShape extends ShapeBorder {
  final double value;

  MyCustomShape(this.value);

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRect(rect);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final Path path = Path();
    path.lineTo(0, rect.height - 2 * value);
    path.quadraticBezierTo(0, rect.height - value, value, rect.height - value);
    path.lineTo(rect.width - value, rect.height - value);
    path.quadraticBezierTo(
        rect.width, rect.height - value, rect.width, rect.height);
    path.lineTo(rect.width, 0);
    path.close();
    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return MyCustomShape(value * t);
  }
}
