import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/my_colors.dart';

Widget miniBadgeBox(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    decoration: BoxDecoration(
      color: MyColors.main2Color,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Text(
      text,
      style: Constant.popins_base(
          color: MyColors.white, fontWeight: FontWeight.w600),
    ),
  );
}

Widget miniYellowBadgeBox(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
    decoration: BoxDecoration(
      color: Colors.yellow,
      borderRadius: BorderRadius.circular(6),
    ),
    child: Text(
      text,
      style: Constant.popins_base(
          color: MyColors.textColor, fontWeight: FontWeight.w600),
    ),
  );
}
