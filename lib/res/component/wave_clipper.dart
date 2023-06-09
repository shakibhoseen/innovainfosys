import 'package:flutter/material.dart';

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double value = 32;

    Path path0 = Path();
    path0.lineTo(0, size.height - 2 * value);
    path0.quadraticBezierTo(0, size.height-value , value, size.height - value);
    path0.lineTo(size.width - value, size.height - value);

    path0.quadraticBezierTo(
        size.width, size.height - value, size.width, size.height);

    path0.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false; //if new instance have different instance than old instance
    //then you must return true;
  }
}
