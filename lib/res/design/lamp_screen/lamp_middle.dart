import 'package:flutter/material.dart';
import 'package:small_home_application/model/smart_mood_model.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/mini_box.dart';
import 'package:small_home_application/res/design/smart_page/smart_mood_item.dart';
import 'package:small_home_application/res/my_colors.dart';
import 'package:small_home_application/utils/helper_widget.dart';

final List<SmartMoodModel> smartModelItems = [
  SmartMoodModel('Smart Lamp', 'Dining Room', 'Tue Thu', '8 pm', '8 am',
      AssetsName.lightSmartImagePng, true),
  SmartMoodModel('Smart Lamp', 'Bedroom', 'Sun', '10 pm', '11 am',
      AssetsName.airSmartImagePng, false),
  SmartMoodModel('Smart Lamp', 'Bedroom2', 'Fri', '8 pm', '8 am',
      AssetsName.lightSmartImagePng, false),
  SmartMoodModel('Smart Lamp', 'Living Room', 'Tue Thu', '8 pm', '8 am',
      AssetsName.tvSmartImagePng, true),
  SmartMoodModel('Smart Lamp', 'Bedroom', 'Sun', '10 pm', '11 am',
      AssetsName.airSmartImagePng, false),
  SmartMoodModel('Smart Lamp', 'Kitchen', 'Mon', '8 am', '10 am',
      AssetsName.airSmartImagePng, true),
];

Widget lampDesign() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Schedule',
                style: Constant.popins_xl(),
              ),
              addHorizontalSpace(2),
              miniBadgeBox('3'),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              // Handle button press here
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size.square(30),
              padding: const EdgeInsets.all(6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              primary: MyColors.mainColor,
              elevation: 5,
              shadowColor: Colors.black.withOpacity(0.25),
            ),
            child: Icon(
              Icons.add,
              size: 20,
              color: Colors.white,
            ),
          ),

        ],
      ),
      ListView.builder(
        padding: EdgeInsets.only(top: 4),
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: smartModelItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: smartMoodItemDesign(smartModelItems[index]),
          );
        },
      ),
      addVerticalSpace(9),
      SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.mainColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.all(18),
          ),
          child: const Text(
            'Turn Off All Devices',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
      )
    ],
  );
}
