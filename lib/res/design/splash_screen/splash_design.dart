import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:small_home_application/res/my_colors.dart';

const ownColor = Color(0x33FFFFFF); // 20% opacity white color

Widget rectangleBox({Color color = ownColor, double height =96, double width =85}) {
  return Container(
    height: height,
    width: width,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20),
    ),
  );
}

Widget circularBox({Color color = ownColor}) {
  return Container(
    height: 80,
    width: 80,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
  );
}

Widget blurifyBox({required bool isCircle, double opacity= 0.1}) {
  return isCircle
      ? _blurEffectWidget(circularBox(color: Colors.transparent), opacity: opacity)
      : _blurEffectWidget(rectangleBox(color: Colors.transparent,), radius: 20, opacity: opacity);
}

Widget _blurEffectWidget(Widget child, {double radius = 100, double opacity =0.1}) {
  return Blur(
    colorOpacity: opacity,
      borderRadius: BorderRadius.circular(radius),
      child: child);
  // return child.frosted(
  //   blur: 1,
  //   frostColor: ownColor,
  //   borderRadius: BorderRadius.circular(20),
  // );
}
