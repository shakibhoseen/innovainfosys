import 'package:flutter/material.dart';

import 'package:small_home_application/model/smart_mood_model.dart';
import 'package:small_home_application/res/assets_name.dart';

import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/mini_box.dart';
import 'package:small_home_application/res/design/smart_page/smart_mood_item.dart';

import 'package:small_home_application/utils/helper_widget.dart';

final List<SmartMoodModel> smartModelItems = [
  SmartMoodModel('Smart Lamp', 'Dining Room', 'Tue Thu', '8 pm', '8 am',
      AssetsName.lightSmartImagePng, true),
  SmartMoodModel('Air Conditioner', 'Bedroom', 'Sun', '10 pm', '11 am',
      AssetsName.airSmartImagePng, false),
  SmartMoodModel('Smart Lamp', 'Bedroom2', 'Fri', '8 pm', '8 am',
      AssetsName.lightSmartImagePng, false),
  SmartMoodModel('Television', 'Living Room', 'Tue Thu', '8 pm', '8 am',
      AssetsName.tvSmartImagePng, true),
  SmartMoodModel('Air Conditioner', 'Bedroom', 'Sun', '10 pm', '11 am',
      AssetsName.airSmartImagePng, false),
  SmartMoodModel('Air Conditioner', 'Kitchen', 'Mon', '8 am', '10 am',
      AssetsName.airSmartImagePng, true),
];

Widget smartHomeDesign() {
  return Column(
    children: [
      Row(
        children: [
          Text(
            'Smart Mood',
            style: Constant.popins_xl(),
          ),
          addHorizontalSpace(2),
          miniBadgeBox('4'),
        ],
      ),


      ListView.builder(
        padding: const EdgeInsets.only(top: 4),
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: smartModelItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: smartMoodItemDesign(smartModelItems[index]),
          );
        },
      )
    ],
  );
}


