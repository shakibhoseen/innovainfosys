import 'dart:ui';

import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/constant.dart';
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


Widget customSplashButton({required VoidCallback onPress}){
  return Container(
    decoration: BoxDecoration(
      boxShadow: MyShadow.boxShadow5(),
    ),
    child: ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
          backgroundColor: MyColors.mainColor,
          padding: EdgeInsets.all(12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(),
          )),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Get Started',
            style:
            Constant.popins_lg(color: MyColors.white),
          ),
          SvgPicture.asset(AssetsName.nextIconImageSvg),
        ],
      ),
    ),
  );
}