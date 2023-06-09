import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:small_home_application/model/smart_mood_model.dart';
import 'package:small_home_application/res/assets_name.dart';
import 'package:small_home_application/res/component/custom_switch_button.dart';
import 'package:small_home_application/res/component/my_shadow.dart';
import 'package:small_home_application/res/constant.dart';
import 'package:small_home_application/res/design/mini_box.dart';
import 'package:small_home_application/res/my_colors.dart';
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
      )
    ],
  );
}

Widget smartMoodItemDesign(SmartMoodModel smartMoodModel) {
  return Container(
    padding: const EdgeInsets.all(12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: MyColors.white,
    ),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  smartMoodModel.deviceName,
                  style: Constant.popins_base(fontWeight: FontWeight.w600),
                ),
                Row(
                  children: [
                    Text(
                      smartMoodModel.roomName,
                      style: Constant.popins_sm(),
                    ),
                    addHorizontalSpace(8),
                    SizedBox(
                      height: 13,
                      child: customVerticalDivider(),
                    ),
                    addHorizontalSpace(8),
                    Text(
                      smartMoodModel.weekend,
                      style: Constant.popins_sm(),
                    ),
                  ],
                ),
              ],
            ),
            CustomSwitchButton(
                onChanged: (isSwitchOn) {},
                isSwitchOn: smartMoodModel.isSwitchOn),
          ],
        ),
        addVerticalSpace(8),
        SizedBox(
          height: 58,
          child: Row(
            children: [
              Image.asset(AssetsName.lightSmartImagePng),
              addHorizontalSpace(16),
              Expanded(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'from',
                          style: Constant.popins_sm(),
                        ),
                        Text(
                          smartMoodModel.fromTime,
                          style:
                              Constant.popins_base(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    const Spacer(),
                    customVerticalDivider(),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'to',
                          style: Constant.popins_sm(),
                        ),
                        Text(
                          smartMoodModel.toTime,
                          style:
                              Constant.popins_base(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              addHorizontalSpace(16),
              customVerticalDivider(),
              addHorizontalSpace(16),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: MyShadow.boxShadow6(),
                      ),
                      child: SvgPicture.asset(
                        AssetsName.deleteIconImageSvg,
                        height: 16,
                        width: 16,
                      )),
                  Container(
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: MyShadow.boxShadow6(),
                      ),
                      child: SvgPicture.asset(
                        AssetsName.editIconImageSvg,
                        height: 16,
                        width: 16,
                      )),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  );
}
